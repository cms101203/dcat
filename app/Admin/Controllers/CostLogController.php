<?php

namespace App\Admin\Controllers;

use App\Admin\Repositories\CostLog;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;

class CostLogController extends AdminController
{
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Grid::make(new CostLog(), function (Grid $grid) {
            $grid->id->sortable();
            $grid->kid;
            $grid->uid;
            $grid->cid;
            $grid->type;
            $grid->cost_type;
            $grid->data_id;
            $grid->money;
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
        return Show::make($id, new CostLog(), function (Show $show) {
            $show->id;
            $show->kid;
            $show->uid;
            $show->cid;
            $show->type;
            $show->cost_type;
            $show->data_id;
            $show->money;
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
        return Form::make(new CostLog(), function (Form $form) {
            $form->display('id');
            $form->text('kid');
            $form->text('uid');
            $form->text('cid');
            $form->text('type');
            $form->text('cost_type');
            $form->text('data_id');
            $form->text('money');
            $form->text('remark');
            $form->text('op_id');
        
            $form->display('created_at');
            $form->display('updated_at');
        });
    }
}
