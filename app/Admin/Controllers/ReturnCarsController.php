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
        });
    }
}
