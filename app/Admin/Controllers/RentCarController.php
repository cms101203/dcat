<?php

namespace App\Admin\Controllers;

use App\Admin\Repositories\RentCar;
use App\Models\AdminIndustry;
use App\Models\ClientDetailModel;
use App\Models\DriverDetailModel;
use Dcat\Admin\Admin;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;
use Illuminate\Support\Str;

class RentCarController extends AdminController
{
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Grid::make(new RentCar(), function (Grid $grid) {
            $grid->id->sortable();
            $grid->rent_num;
            $grid->client_id;
            $grid->staff_id;
            $grid->current_mileage;
            $grid->car_type;
            $grid->car_id;
            $grid->rent_type;
            $grid->rent_at;
            $grid->rent_day;
            $grid->deposit;
            $grid->rent;
            $grid->oil_volume;
            $grid->redriving;
            $grid->odrive_price;
            $grid->timeout_price;
            $grid->remark;
            $grid->op_id;
            $grid->created_at;
            $grid->updated_at->sortable();

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
        return Show::make($id, new RentCar(), function (Show $show) {
            $show->id;
            $show->rent_num;
            $show->client_id;
            $show->staff_id;
            $show->current_mileage;
            $show->car_type;
            $show->car_id;
            $show->rent_type;
            $show->rent_at;
            $show->rent_day;
            $show->deposit;
            $show->rent;
            $show->oil_volume;
            $show->redriving;
            $show->odrive_price;
            $show->timeout_price;
            $show->remark;
            $show->op_id;
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
        return Form::make(new RentCar(), function (Form $form) {
            $form->display('id');

            $form->select('client_id')->options(ClientDetailModel::dataOptions(['id','client_name']))->required();
            $form->saving(function ($form){
                $start = "100000";
                $end = "999999";
                $idlength = Str::length($form->client_id);
                $start =Str::limit($start,6-$idlength);
                $end =Str::limit($end,6-$idlength);
                $no = "ZC".date('Ymd').random_int($start, $end).$form->client_id;
                return $no;
            });
            $form->tel('mobile')->required();
            $form->currency('current_mileage')->symbol("Km")->saving(function ($v){
                return empty($v) ? 0 :  str_replace(',','',$v);
            });
            $form->select('car_type')->options(AdminIndustry::dataOptions(['id','title'],['parent_id'=>5]))->load('car_id', '/getcars')->required();
            $form->select('car_id')->required();
            $form->radio('rent_type')->options(AdminIndustry::dataOptions(['id','title'],['parent_id'=>19]))->required();
            $form->select('staff_id')->options(DriverDetailModel::dataOptions(['id','name'],['staff_type'=>31,'staff_status'=>1,'driver_status'=>0]));
            $form->date('rent_at');

            $form->text('rent_day');
            $form->text('deposit');
            $form->text('rent');
            $form->text('oil_volume');
            $form->text('redriving');
            $form->text('odrive_price');
            $form->text('timeout_price');
            $form->text('remark');
            $form->text('op_id');

            Admin::script(
                <<<SCRIPT
                $(".rent_at").on('click',function(e){
                  var type =  $(':radio[name="rent_type"]:checked').val();
                  if(type != 20 && type !=''){
                    if($('.staff_id').val() == ''){
                        layer.alert('请选择司机', {
                          icon: 1,
                          skin: 'layer-ext-moon'
                        });
                        
                    }
                  }
                });
                $('.client_id').on('change',function(){
                   $.ajax({
                        method: 'get',
                        dataType:"json",
                        url: '/admin/getclient?id=' + $(this).val(),
                        success: function (res) {
                            if(res.status){
                                $('.mobile').val(res.data.mobile);
                            }
                        }
                    });
                });
SCRIPT
            );
        });
    }
}
