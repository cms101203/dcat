<?php

namespace App\Admin\Controllers;

use App\Admin\Repositories\ReturnCar;
use App\Models\RentCarModel;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;

class ReturnCarController extends AdminController
{
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {

        return Grid::make(new ReturnCar(), function (Grid $grid) {
            $grid->id->sortable();
            $grid->rent_id;
            $grid->is_checkout;
            $grid->return_at;
            $grid->return_mileage;
            $grid->return_oil;
            $grid->is_odrive;
            $grid->is_time;
            $grid->oy_price;
            $grid->wz_deposit;
            $grid->receivable;
            $grid->paid;
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
        return Show::make($id, new ReturnCar(), function (Show $show) {
            $show->id;
            $show->rent_id;
            $show->is_checkout;
            $show->return_at;
            $show->return_mileage;
            $show->return_oil;
            $show->is_odrive;
            $show->is_time;
            $show->oy_price;
            $show->wz_deposit;
            $show->receivable;
            $show->paid;
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
        $id = intval(request()->get('id'));
        return Form::make(new ReturnCar(), function (Form $form) use($id){
            $form->display('id');
            $form->select('rent_id')->options(RentCarModel::dataOptions(['id','rent_num']))->default($id)->required();
            $form->radio('is_checkout')->options([0=>'未结帐',1=>'已结帐']);
            $form->datetime('return_at');
            $form->number('return_mileage');
            $form->text('return_oil')->default('满格');
            $form->radio('is_odrive')->options([0=>'未超驶',1=>'超驶']);
            $form->text('is_time')->options([0=>'未超时',1=>'超时']);
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
