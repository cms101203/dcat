<?php

namespace App\Admin\Controllers;

use App\Admin\Repositories\RentCarAdvanceLog;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;

class RentCarAdvanceLogController extends AdminController
{
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Grid::make(new RentCarAdvanceLog(), function (Grid $grid) {
            $grid->id->sortable();
            $grid->rent_id;
            $grid->money;
            $grid->advance_at;
            $grid->remark;
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
        return Show::make($id, new RentCarAdvanceLog(), function (Show $show) {
            $show->id;
            $show->rent_id;
            $show->money;
            $show->advance_at;
            $show->remark;
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
        return Form::make(new RentCarAdvanceLog(), function (Form $form) use($id) {
            $form->display('id');
            $form->hidden('rent_id')->default($id);
            $form->number('money')->required();
            $form->datetime('advance_at')->required();
            $form->textarea('remark');
            $form->hidden('op_id')->default(auth('admin')->user()->id);
        });
    }
}
