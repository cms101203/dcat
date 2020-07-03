<?php

namespace App\Admin\Controllers;

use App\Admin\Repositories\CarsIllegalLog;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;

class CarsIllegalLogController extends AdminController
{
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Grid::make(new CarsIllegalLog(), function (Grid $grid) {
            $grid->id->sortable();
            $grid->rent_id;
            $grid->car_id;
            $grid->staff_id;
            $grid->bits;
            $grid->money;
            $grid->illegal_at;
            $grid->type;
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
        return Show::make($id, new CarsIllegalLog(), function (Show $show) {
            $show->id;
            $show->rent_id;
            $show->car_id;
            $show->staff_id;
            $show->bits;
            $show->money;
            $show->illegal_at;
            $show->type;
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
        return Form::make(new CarsIllegalLog(), function (Form $form) {
            $form->display('id');
            $form->text('rent_id');
            $form->text('car_id');
            $form->text('staff_id');
            $form->text('bits');
            $form->text('money');
            $form->text('illegal_at');
            $form->text('type');
            $form->text('remark');
            $form->text('op_id');
        
            $form->display('created_at');
            $form->display('updated_at');
        });
    }
}
