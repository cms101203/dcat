<?php

namespace App\Admin\Controllers;

use App\Admin\Repositories\ReturnCar;
use App\Models\AdminIndustry;
use App\Models\CarsIllegalLogModel;
use App\Models\CarsModel;
use App\Models\ClientDetailModel;
use App\Models\DriverDetailModel;
use App\Models\RentCarModel;
use App\Models\RentCompanyModel;
use App\Models\ReturnCarModel;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;

use Dcat\Admin\Layout\Column;
use Dcat\Admin\Layout\Content;
use Dcat\Admin\Layout\Row;
use Dcat\Admin\Widgets\Table;

class ReturnCarController extends AdminController
{
    protected $title="还车管理";
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {

        return Grid::make(new ReturnCar(), function (Grid $grid) {
            $grid->id->sortable();
            $grid->rent_id->using(RentCarModel::dataOptions(['id','rent_num']));
            $grid->is_checkout->using([0=>'未结帐',1=>'已结帐']);
            $grid->return_at;
            $grid->return_mileage->display(function ($item){
                return $item."/Km";
            });
            $grid->return_oil;
            $grid->is_odrive->using([0=>'未超驶',1=>'超驶']);
            $grid->is_time->using([0=>'未超时',1=>'超时']);
            $grid->oy_price->display(function ($item){
                return $item."/元";
            });
            $grid->wz_deposit->display(function ($item){
                return $item."/元";
            });
            $grid->receivable->display(function ($item){
                return $item."/元";
            });
            $grid->paid->display(function ($item){
                return $item."/元";
            });
            $grid->remark->responsive(0);
            $grid->column('illega','违章记录')->display(function ($item)use ($grid){
                $rent = RentCarModel::where('id',$this->rent_id)->first();
                return "<span class='create-form' data-url='illegalog/create?id={$this->id}&rid={$this->rent_id}&cid={$rent->car_id}&sid={$rent->staff_id}' title='新增违章记录'><i class='fa  fa-cogs'></i></span>";
            })->expand(function ($model){
                $byarr = [];
                $bylist = CarsIllegalLogModel::where('rent_id',$this->rent_id)->where('return_id',$this->id)->get()->toArray();
                if ($bylist){
                    foreach ($bylist as $k=>$v){
                        $rent = RentCarModel::where('id',$v['rent_id'])->first();
                        $cars = CarsModel::where('id',$v['car_id'])->first();
                        $staff = DriverDetailModel::where('id',$v['staff_id'])->first();
                        $type = AdminIndustry::where('id',$v['type'])->first();
                        $offsetcars = CarsModel::where('id',$v['offset_car'])->first();
                        $byarr[$k]['rent_num'] = $rent['rent_num'];
                        $byarr[$k]['car_id']  = $cars['car_num'];
                        $byarr[$k]['staff'] = empty($staff) ? "--" : $staff['name'] ;
                        $byarr[$k]['bits'] = $v['bits']." 分" ;
                        $byarr[$k]['money'] = $v['money']." 元" ;
                        $byarr[$k]['illegal_at'] = $v['illegal_at'];
                        $byarr[$k]['type'] = empty($type) ?  "--" : $type['title'] ;
                        $byarr[$k]['offset_car'] = empty($offsetcars) ?  "--" : $offsetcars['car_num'] ;
                        $byarr[$k]['offset_money'] = $v['offset_money'] ;
                        $byarr[$k]['remark'] = $v['remark'] ;
                    }
                    return new Table(['租车订单号','违章车辆','违章司机','扣分','罚款金额','违章时间','处理方式','抵消车辆','抵消金额','备注'],$byarr);
                }

            });

            Form::dialog('违章记录')
                ->click('.create-form') // 绑定点击按钮
                ->url('illegalog/create') // 表单页面链接，此参数会被按钮中的 “data-url” 属性替换。。
                ->width('700px') // 指定弹窗宽度，可填写百分比，默认 720px
                ->height('550px') // 指定弹窗高度，可填写百分比，默认 690px
                ->success('Dcat.reload()'); // 新增成功后刷新页面
            $grid->created_at->responsive(0);
            $grid->updated_at->sortable()->responsive(0);

            $grid->filter(function (Grid\Filter $filter) {
                $filter->equal('id');

            });
        });
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     *
     * @return Show
     */
    protected function detail($id)
    {
        $detail = ReturnCarModel::where('id',$id)->first();
        $rent = RentCarModel::where('id',$detail['rent_id'])->first();
        $client = [];
        $cars = [];
        $staff = [];
        $rentstatus = [0=>'未结帐',1=>'已结帐'];
        $company = RentCompanyModel::where('id',auth('admin')->user()->cp_id)->first();
        if ($rent){
            $client = ClientDetailModel::where('id',$rent['client_id'])->first();
            $cars = CarsModel::leftJoin('admin_industry','admin_industry.id','=','cars.car_type')->where('cars.id',$rent['car_id'])->first();
            $staff = DriverDetailModel::where('id',$rent['staff_id'])->first();
        }
        return view('returncar.details',compact('detail','rent','client','cars','staff','rentstatus','company'));
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $id = intval(request()->get('id'));
        return Form::make(new ReturnCar(), function (Form $form) use($id){
            $form->display('id');
            $form->select('rent_id')->options(RentCarModel::dataOptions(['id','rent_num']))->default($id)->required();
            $form->radio('is_checkout')->options([0=>'未结帐',1=>'已结帐'])->default(0);
            $form->datetime('return_at');
            $form->number('return_mileage');
            $form->text('return_oil')->default('满格');
            $form->radio('is_odrive')->options([0=>'未超驶',1=>'超驶'])->default(0);
            $form->radio('is_time')->options([0=>'未超时',1=>'超时'])->default(0);
            $form->number('oy_price');
            $form->number('wz_deposit');
            $form->number('receivable');
            $form->number('paid');
            $form->textarea('remark');
            $form->hidden('op_id')->default(auth('admin')->user()->id);

            $form->display('created_at');
            $form->display('updated_at');
        });
    }
}
