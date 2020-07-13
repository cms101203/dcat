<?php

namespace App\Admin\Controllers;

use App\Admin\Repositories\InvoiceLog;
use App\Models\AdminIndustry;
use App\Models\InvoiceLogModel;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;

class InvoiceLogController extends AdminController
{
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Grid::make(new InvoiceLog(), function (Grid $grid) {
            $grid->id->sortable();
            $grid->return_id;
            $grid->tax_num;
            $grid->type;
            $grid->title;
            $grid->money;
            $grid->point;
            $grid->invoice_img;
            $grid->kp_at;
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
        return Show::make($id, new InvoiceLog(), function (Show $show) {
            $show->id;
            $show->return_id;
            $show->tax_num;
            $show->type;
            $show->title;
            $show->money;
            $show->point;
            $show->invoice_img;
            $show->kp_at;
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
        return Form::make(new InvoiceLog(), function (Form $form)use($id) {
            $form->hidden('return_id')->default($id);
            $form->text('tax_num')->required();
            $form->select('type')->options(AdminIndustry::dataOptions(['id','title'],['parent_id'=>55]))->required();
            $form->datetime('kp_at')->required();
            $form->text('title')->required();
            $form->number('money')->required();
            $form->number('point')->default(0);
            $form->image('invoice_img')->saving(function ($imgs){
                return json_encode($imgs);
            });
            $form->textarea('remark');
            $form->hidden('op_id')->default(auth('admin')->user()->id);
        });
    }
}
