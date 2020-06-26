<?php

namespace App\Admin\Controllers;

use App\Admin\Repositories\Cars;
use App\Models\AdminIndustry;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;
use Dcat\Admin\Admin;

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
            $grid->car_type;
            $grid->car_num;
            $grid->car_engine_num;
            $grid->car_spot_num;
            $grid->inspection_at;
            $grid->created_at;
            $grid->updated_at->sortable();

            $grid->filter(function (Grid\Filter $filter) {
                $filter->equal('id');
                $filter->equal('car_type')->select(AdminIndustry::dataOptions(['id','title'],['parent_id'=>'5']));
                $filter->equal('car_num');
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
            $show->car_engine_num;
            $show->car_spot_num;
            $show->car_img;
            $show->inspection_at;
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
            $form->text('car_num')->required();
            $form->date('inspection_at');
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
}
