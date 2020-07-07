<?php

namespace App\Admin\Controllers;

use App\Admin\Repositories\RentCompany;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;

class RentCompanyController extends AdminController
{
    protected $title = "公司管理";
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Grid::make(new RentCompany(), function (Grid $grid) {
            $grid->id->sortable();
            $grid->title;
            $grid->contact;
            $grid->mobile;
            $grid->phone;
            $grid->address;
            $grid->created_at;
            $grid->updated_at->sortable();
            $grid->withBorder();
            $grid->filter(function (Grid\Filter $filter) {
                $filter->ilike('title');

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
        return Show::make($id, new RentCompany(), function (Show $show) {
            $show->id;
            $show->title;
            $show->contact;
            $show->mobile;
            $show->phone;
            $show->address;
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
        return Form::make(new RentCompany(), function (Form $form) {
            $form->display('id');
            $form->text('title')->required();
            $form->text('contact')->required();
            $form->text('mobile');
            $form->text('phone');
            $form->textarea('address');
            $form->hidden('op_id')->default(auth('admin')->user()->id);

            $form->display('created_at');
            $form->display('updated_at');
        });
    }
}
