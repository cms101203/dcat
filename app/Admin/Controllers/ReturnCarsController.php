<?php

namespace App\Admin\Controllers;

use App\Admin\Repositories\ReturnCar;
use App\Models\AdminIndustry;
use App\Models\CarsIllegalLogModel;
use App\Models\CarsModel;
use App\Models\ClientDetailModel;
use App\Models\CostLogModel;
use App\Models\DriverDetailModel;
use App\Models\RentCarModel;
use App\Models\RentCompanyModel;
use App\Models\ReturnCarModel;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;

use Dcat\Admin\Widgets\Table;
use Dcat\Admin\Form\NestedForm;

use Dcat\Admin\Admin;
use Illuminate\Http\Request;

class ReturnCarsController extends AdminController
{
    protected $title="还车管理";
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {

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
       return;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {

        return Form::make(new ReturnCar(), function (Form $form){

            $form->radio('refund_pay_type')->options([1=>'现金',2=>'银行卡',3=>'公对公',4=>'微信',5=>'支付宝'])->default(1)->required();

            $form->date('refund_at')->required();
            $form->number('refund')->required();
            $form->textarea('refund_mark');
            $form->saved(function ($form){
                $check = CostLogModel::where('type',CostLogModel::COST_REFUND)->where('data_id',$form->getKey())->first();
                if ($check){
                    CostLogModel::where('id',$check['id'])->update(['money'=>-$form->refund,'op_id'=>auth('admin')->user()->id]);
                }else{
                    //租金租金
                    $data = [];
                    $data['data_id']   = $form->getKey();
                    $data['rid']       = $form->model()->rent_id;
                    $rent = RentCarModel::where('id',$form->model()->rent_id)->first();
                    $data['kid']       = $rent->client_id;
                    $data['type']      = CostLogModel::COST_REFUND;
                    $data['cost_type'] = 1;
                    $data['money']     = -$form->refund;
                    $data['cp_id']     = auth('admin')->user()->cp_id;
                    $data['op_id']     = auth('admin')->user()->id;
                    CostLogModel::costLog($data);
                }
            });
        });
    }
}
