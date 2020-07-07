<?php

namespace App\Admin\Controllers;

use App\Admin\Repositories\DriverGetoutLog;
use App\Models\RentCarModel;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;

class DriverGetoutLogController extends AdminController
{
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Grid::make(new DriverGetoutLog(), function (Grid $grid) {
            $grid->id->sortable();
            $grid->rent_id;
            $grid->staff_id;
            $grid->outs_at;
            $grid->oute_at;
            $grid->car_id;
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
        return Show::make($id, new DriverGetoutLog(), function (Show $show) {
            $show->id;
            $show->rent_id;
            $show->staff_id;
            $show->outs_at;
            $show->oute_at;
            $show->car_id;
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
        return Form::make(new DriverGetoutLog(), function (Form $form)use($id) {
            $form->display('id');
            $form->select('rent_id')->options(RentCarModel::dataOptions(['id','rent_num']));
            $form->hidden('staff_id')->default($id);
            $form->datetimeRange('outs_at', 'oute_at', '出车时间');

            $form->hidden('car_id')->saving(function ($item)use($form){
                $rent = RentCarModel::where('id',$form->rent_id)->first();
                return $rent->car_id;
            });
            $form->hidden('op_id')->default(auth('admin')->user()->id);

        });
    }
}
