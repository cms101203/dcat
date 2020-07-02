<?php

namespace App\Admin\Controllers;

use App\Admin\Repositories\ReturnCar;
use App\Models\RentCarModel;
use App\Models\ReturnCarModel;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;

use Dcat\Admin\Layout\Column;
use Dcat\Admin\Layout\Content;
use Dcat\Admin\Layout\Row;

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
            $grid->remark->responsive(0);;
            $grid->created_at->responsive(0);;
            $grid->updated_at->sortable()->responsive(0);;

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
        return view('returncar.details',compact('detail','rent'));
        return Show::make($id, new ReturnCar(), function (Show $show) {

            $show->content->view('returncar.details');
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
