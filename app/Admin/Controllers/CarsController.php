<?php

namespace App\Admin\Controllers;

use App\Admin\Repositories\Cars;
use App\Models\AdminIndustry;
use App\Models\CarInsuranceLogModel;
use App\Models\CarsMaintainLogForm;
use App\Models\CarsMaintainLogModel;
use App\Models\CarsModel;
use App\Models\CarsServiceLogModel;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;
use Dcat\Admin\Admin;
use Dcat\Admin\Widgets\Table;

class CarsController extends AdminController
{

    protected $title ="车辆管理";
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Grid::make(new Cars(), function (Grid $grid) {
            $grid->id->sortable();
            $grid->column('car_status','车辆状态')->using([0=>'空闲中',1=>'租赁中',2=>'维修中']);
            $grid->car_type;
            $grid->car_num;
            $grid->inspection_at->display(function ($item){
                if ($item > date('Y-m-d',strtotime('-7 days'))){
                    return "<span style='color: red;'>{$item}</span>";
                }else{
                    return $item;
                }
            });
            $grid->hinsure_at->display(function ($item){
                if ($item > date('Y-m-d',strtotime('-7 days'))){
                    return "<span style='color: red;'>{$item}</span>";
                }else{
                    return $item;
                }
            });
            $grid->binsure_at->display(function ($item){
                if ($item > date('Y-m-d',strtotime('-7 days'))){
                    return "<span style='color: red;'>{$item}</span>";
                }else{
                    return $item;
                }
            });
            $grid->car_engine_num->responsive(0);;
            $grid->car_spot_num->responsive(0);;
            $grid->created_at->responsive(0);;
            $grid->updated_at->sortable();
            $grid->column('carsmain','保养记录')->display(function ($item)use ($grid){
                return "<span class='create-form' data-url='carsmaintainlog/create?id={$this->id}' title='新增保养记录'><i class='fa  fa-cogs'></i></span>";
            })->expand(function ($model){
                $byarr = [];
                $bylist = CarsMaintainLogModel::where('cars_id',$this->id)->get(['type','by_at','car_mileage']);
                if ($bylist){
                    foreach ($bylist as $k=>$v){
                        $bytype = AdminIndustry::where('id',$v['type'])->first();
                        $byarr[$k]['by_at'] = $v['by_at'] ;
                        $byarr[$k]['car_mileage'] = $v['car_mileage']."/Km" ;
                        $byarr[$k]['type_name'] = empty($bytype) ? "--" : $bytype['title'] ;
                    }
                }
                return new Table(['保养日期','保养时里程','保养类型'],$byarr);
            });
            $grid->column('carservice','维修记录')->display(function($item)use($grid){
                return "<span class='create-service-form' data-url='carservicelog/create?id={$this->id}' title='新增维修记录'><i class='fa fa-wrench'></i></span>";
            })->expand(function ($model){
                $wxlist = CarsServiceLogModel::where('cars_id',$this->id)->get(['service_at','service_moeny','remark'])->toArray();

                return new Table(['维修日期','维修花费','备注'],$wxlist);
            });
            $grid->column('carsinsurance','保险记录')->display(function ($item)use ($grid){
                return "<span class='create-insurance-form' data-url='carsinsurancelog/create?id={$this->id}' title='新增保险记录'><i class='feather icon-alert-triangle'></i></span>";
            })->expand(function ($model){
                $byarr = [];
                $bylist = CarInsuranceLogModel::where('cars_id',$this->id)->get(['type','pay_at','start_at','end_at','pay_money','remark'])->toArray();
                if ($bylist){
                    foreach($bylist as $k=>$v){
                        $bytype = AdminIndustry::where('id',$v['type'])->first();
                        $byarr[$k]['type'] = empty($bytype) ? "--" : $bytype['title'] ;
                        $byarr[$k]['pay_at'] = $v['pay_at'];
                        $byarr[$k]['datetime'] = $v['start_at']." ~ ".$v['end_at'];
                        $byarr[$k]['pay_money'] = $v['pay_money']."/元" ;
                        $byarr[$k]['remark'] = $v['remark'];
                    }

                    return new Table(['保险类型','缴纳时间','有效期','缴纳金额','备注'],$byarr);
                }
            });
            Form::dialog('新增保养')
                ->click('.create-form') // 绑定点击按钮
                ->url('carsmaintainlog/create') // 表单页面链接，此参数会被按钮中的 “data-url” 属性替换。。
                ->width('700px') // 指定弹窗宽度，可填写百分比，默认 720px
                ->height('550px') // 指定弹窗高度，可填写百分比，默认 690px
                ->success('Dcat.reload()'); // 新增成功后刷新页面

            Form::dialog('新增维修')
                ->click('.create-service-form') // 绑定点击按钮
                ->url('carservicelog/create') // 表单页面链接，此参数会被按钮中的 “data-url” 属性替换。。
                ->width('700px') // 指定弹窗宽度，可填写百分比，默认 720px
                ->height('500px') // 指定弹窗高度，可填写百分比，默认 690px
                ->success('Dcat.reload()'); // 新增成功后刷新页面

            Form::dialog('新增保险缴纳记录')
                ->click('.create-insurance-form') // 绑定点击按钮
                ->url('carsinsurancelog/create') // 表单页面链接，此参数会被按钮中的 “data-url” 属性替换。。
                ->width('700px') // 指定弹窗宽度，可填写百分比，默认 720px
                ->height('500px') // 指定弹窗高度，可填写百分比，默认 690px
                ->success('Dcat.reload()'); // 新增成功后刷新页面

            $grid->filter(function (Grid\Filter $filter) {
                $filter->equal('id');
                $filter->equal('car_type')->select(AdminIndustry::dataOptions(['id','title'],['parent_id'=>'5']));
                $filter->equal('car_num');
                $filter->equal('car_status','车辆状态')->select([0=>'空闲中',1=>'租赁中',2=>'维修中']);
                $filter->between('inspection_at')->date();
                $filter->between('created_at')->datetime();

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
        return Show::make($id, new Cars(), function (Show $show) {
            $show->id;
            $show->car_type;
            $show->car_num;
            $show->inspection_at->unescape()->as(function ($item){
                if ($item > date('Y-m-d',strtotime('-7 days'))){
                    return "<span style='color: red;'>{$item}</span>";
                }else{
                    return $item;
                }
            });
            $show->hinsure_at->unescape()->as(function ($item){
                if ($item > date('Y-m-d',strtotime('-7 days'))){
                    return "<span style='color: red;'>{$item}</span>";
                }else{
                    return $item;
                }
            });
            $show->binsure_at->unescape()->as(function ($item){
                if ($item > date('Y-m-d',strtotime('-7 days'))){
                    return "<span style='color: red;'>{$item}</span>";
                }else{
                    return $item;
                }
            });
            $show->car_engine_num;
            $show->car_spot_num;
            $show->car_img;
            $show->created_at;
            $show->updated_at;
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Form::make(new Cars(), function (Form $form) {
            $form->display('id');
            $form->select('car_type')->options(AdminIndustry::dataOptions(['id','title'],['parent_id'=>'5']))->required();
            $form->select('cp_id')->options(AdminIndustry::dataOptions(['id','title'],['parent_id'=>'10']))->required();
            $form->text('car_num')->required();
            $form->date('inspection_at');
            $form->date('hinsure_at');
            $form->date('binsure_at');
            $form->text('car_engine_num');
            $form->text('car_spot_num');
            $form->multipleImage('car_img')->saving(function ($imgs){
                return json_encode($imgs);
            });
            $form->hidden('op_id')->default(auth('admin')->user()->id);
            $form->display('created_at');
            $form->display('updated_at');


            Admin::script(
                <<<SCRIPT
$('.car_num').click(function () {
     $('#myModal').modal('show');
});
$(".carnum_btn").click(function(){
    layer.closeAll()
    $('#myModal').modal('hide');
    $(".car_num").val($(".input_pro").find("span").text()+$(".input_pp").find("span").text());
    $(".car_num").blur();
    
});
SCRIPT
            );
            Admin::html(
                <<<HTML
<div class="modal fade" id="myModal">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">选择车牌号</h4>
         <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>
      <div class="modal-body">
      <div class="">
        <div class="car_input">
            <ul class="clearfix ul_input">
                <li class="input_pro"><span></span></li>
                <li class="input_pp input_zim"><span></span></li>
                <li class="input_pp"><span></span></li>
                <li class="input_pp"><span></span></li>
                <li class="input_pp"><span></span></li>
                <li class="input_pp"><span></span></li>
                <li class="input_pp"><span></span></li>
            </ul>
        </div>
        <div style="text-align:center">
        <button class="btn btn-primary submit carnum_btn"><i class="feather icon-save"></i> 确定</button>
        </div>
        </div>
      </div>
    </div>
  </div>
</div>
HTML
            );
//            Admin::js('/vendors/dcat-admin/carnum/js/layer.js');
            Admin::js('/vendors/dcat-admin/carnum/js/index.js');

            Admin::css('/vendors/dcat-admin/carnum/js/carnum.css');
        });
    }

    protected function getcars(){
        $q = intval(request()->get('q'));
        $list = CarsModel::where('car_type',$q)->get(['id','car_num'])->toArray();
        $data = [];
        if ($list){
            foreach ($list as $k=>$v){
                $data[$k]['id'] = $v['id'];
                $data[$k]['text'] = $v['car_num'];
            }
        }
        return $data;
    }
}
