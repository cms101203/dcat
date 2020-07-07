<?php

namespace App\Admin\Controllers;

use App\Admin\Repositories\DriverDetail;
use App\Models\AdminIndustry;
use App\Models\CarInsuranceLogModel;
use App\Models\CarsModel;
use App\Models\DriverGetoutLogModel;
use App\Models\DriverWageModel;
use App\Models\RentCarModel;
use App\Models\StaffLeaveModel;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;
use Dcat\Admin\Widgets\Table;

class DriverDetailController extends AdminController
{
    protected  $title="员工管理";
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Grid::make(new DriverDetail(), function (Grid $grid) {
            $grid->id->sortable();
            $grid->name;
            $grid->mobile;
            $grid->id_card;
            $grid->license->using(AdminIndustry::dataOptions(['id','title'],['parent_id'=>41]));
            $grid->staff_status->select([1=>'正常',2=>'休假中','3'=>'已离职']);
            $grid->driver_status->select([0=>'空闲中',1=>'已外派']);
            $grid->type->using([1=>'本公司',2=>'外调',3=>'临时司机']);
            $grid->staff_type->using(AdminIndustry::dataOptions(['id','title'],['parent_id'=>30]));

            $grid->column('wage','工资记录')->display(function ($item)use ($grid){
                return "<span class='create-wage-form' data-url='staffwage/create?id={$this->id}' title='新增工资记录'><i class='feather icon-credit-card'></i></span>";
            })->expand(function ($model){
                $byarr = [];
                $list = DriverWageModel::where('staff_id',$this->id)->get()->toArray();
                if ($list){
                    foreach($list as $k=>$v){
                        $byarr[$k]['cycle_at'] = $v['cycle_start']." ~ ".$v['cycle_end'] ;
                        $byarr[$k]['basic_wage'] = $v['basic_wage'];
                        $byarr[$k]['tc_money'] = $v['tc_money'];
                        $byarr[$k]['bonus'] = $v['bonus'];
                        $byarr[$k]['violate_num'] = $v['violate_num'];
                        $byarr[$k]['deduction'] = $v['deduction'];
                        $byarr[$k]['surplus'] = $v['surplus'];
                        $byarr[$k]['remark'] = $v['remark'];
                    }

                    return new Table(['工资周期','基本工资','提成','额外补助','违章次数(司机)','扣除','结余','备注'],$byarr);
                }
            });
            $grid->column('leave','假期记录')->display(function ($item)use ($grid){
                return "<span class='create-leave-form' data-url='staffleave/create?id={$this->id}' title='新增请假记录'><i class='fa  fa-bed'></i></span>";
            })->expand(function ($model){
                $byarr = [];
                $list = StaffLeaveModel::where('staff_id',$this->id)->get()->toArray();
                if ($list){
                    foreach($list as $k=>$v){
                        $byarr[$k]['cycle_at'] = $v['duration_strat']." ~ ".$v['duration_end'] ;
                        $byarr[$k]['duration'] = $v['duration'];
                        $type = AdminIndustry::where('id',$v['type'])->first();
                        $byarr[$k]['type'] = $type['title'];
                        $byarr[$k]['remark'] = $v['remark'];
                    }

                    return new Table(['请假周期','请假天数','请假类型','备注'],$byarr);
                }
            });
            $grid->column('getout','出车记录')->display(function ($item)use ($grid){
                return "<span class='create-getout-form' data-url='getout/create?id={$this->id}' title='新增出车记录'><i class='fa fa-plus'></i></span>";
            })->expand(function ($model){
                $byarr = [];
                $list = DriverGetoutLogModel::where('staff_id',$this->id)->get()->toArray();
                if ($list){
                    foreach($list as $k=>$v){
                        $rent = RentCarModel::where('id',$v['rent_id'])->first();
                        $car = CarsModel::where('id',$v['car_id'])->first();
                        $byarr[$k]['rent_num'] = $rent['rent_num'] ;
                        $byarr[$k]['car'] = $car['car_num'];
                        $byarr[$k]['outs_at'] = $v['outs_at'];
                        $byarr[$k]['oute_at'] = $v['oute_at'];
                    }

                    return new Table(['出车订单','车牌号','出车时间','回车时间'],$byarr);
                }
            });

            Form::dialog('新增出车记录')
                ->click('.create-getout-form') // 绑定点击按钮
                ->url('getout/create') // 表单页面链接，此参数会被按钮中的 “data-url” 属性替换。。
                ->width('750px') // 指定弹窗宽度，可填写百分比，默认 720px
                ->height('820px') // 指定弹窗高度，可填写百分比，默认 690px
                ->success('Dcat.reload()'); // 新增成功后刷新页面

            Form::dialog('新增工资')
                ->click('.create-wage-form') // 绑定点击按钮
                ->url('staffwage/create') // 表单页面链接，此参数会被按钮中的 “data-url” 属性替换。。
                ->width('750px') // 指定弹窗宽度，可填写百分比，默认 720px
                ->height('820px') // 指定弹窗高度，可填写百分比，默认 690px
                ->success('Dcat.reload()'); // 新增成功后刷新页面


            Form::dialog('新增请假')
                ->click('.create-leave-form') // 绑定点击按钮
                ->url('staffleave/create') // 表单页面链接，此参数会被按钮中的 “data-url” 属性替换。。
                ->width('800px') // 指定弹窗宽度，可填写百分比，默认 720px
                ->height('600px') // 指定弹窗高度，可填写百分比，默认 690px
                ->success('Dcat.reload()'); // 新增成功后刷新页面
            $grid->created_at;

            $grid->withBorder();
            $grid->filter(function (Grid\Filter $filter) {
                $filter->equal('id');
                $filter->ilike('name');
                $filter->ilike('mobile');
                $filter->ilike('id_card');
                $filter->equal('staff_type')->select(AdminIndustry::dataOptions(['id','title'],['parent_id'=>30]));
                $filter->equal('driver_status')->select([0=>'空闲中',1=>'工作中',2=>'休息中','3'=>'已离职']);
                $filter->equal('type')->select([1=>'本公司',2=>'外调']);

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
        return Show::make($id, new DriverDetail(), function (Show $show) {
            $show->id;
            $show->name;
            $show->mobile;
            $show->id_card;
            $show->photo_img->unescape()->as(function ($item){
                $img = '';
                if ($item){
                    $item = json_decode($item,true);
                    foreach ($item as $v){
                        $img .="<img data-action='preview-img' src='/uploads/{$v}' style='max-width:200px;max-height:200px' class='img' />";
                    }
                }
                return $img;
            });
            $show->staff_type->using(AdminIndustry::dataOptions(['id','title'],['parent_id'=>30]));
            $show->staff_status->using([1=>'正常',2=>'休假中','3'=>'已离职']);
            $show->driver_status->using([0=>'空闲中',1=>'已外派']);
            $show->type->using([1=>'本公司',2=>'外调',3=>'临时司机']);
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Form::make(new DriverDetail(), function (Form $form) {
            $form->display('id');
            $form->text('name')->required();
            $form->tel('mobile')->required();
            $form->text('id_card');
            $form->select('license')->options(AdminIndustry::dataOptions(['id','title'],['parent_id'=>41]));
            $form->multipleImage('photo_img')->saving(function ($imgs){
                return json_encode($imgs);
            });
            $form->radio('staff_type')->options(AdminIndustry::dataOptions(['id','title'],['parent_id'=>30]))->required();
            $form->radio('staff_status')->options([1=>'正常',2=>'休假中','3'=>'已离职'])->default(1);
            $form->radio('driver_status')->options([0=>'空闲中',1=>'已外派'])->default(0)->help("针对司机职员");
            $form->radio('type')->options([1=>'本公司',2=>'外调',3=>'临时司机'])->default(1)->help("针对司机职员");
            $form->hidden('op_id')->default(auth('admin')->user()->id);

            $form->display('created_at');
            $form->display('updated_at');
        });
    }
}
