<?php

namespace App\Admin\Controllers;

use App\Admin\Repositories\Cars;
use App\Models\AdminIndustry;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;

class CarsController extends AdminController
{
    protected $title ="车辆管理";
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Grid::make(new Cars(), function (Grid $grid) {
            $grid->id->sortable();
            $grid->car_type;
            $grid->car_num;
            $grid->car_engine_num;
            $grid->car_spot_num;
            $grid->car_img;
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
        return Show::make($id, new Cars(), function (Show $show) {
            $show->id;
            $show->car_type;
            $show->car_num;
            $show->car_engine_num;
            $show->car_spot_num;
            $show->car_img;
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
        return Form::make(new Cars(), function (Form $form) {
            $form->display('id');
            $form->select('car_type')->options(AdminIndustry::dataOptions(['id','title'],['parent_id'=>'5']));
            $form->text('car_num');
            $form->text('car_engine_num');
            $form->text('car_spot_num');
            $form->multipleImage('car_img')->saving(function ($imgs){
                return json_encode($imgs);
            });

            $form->display('created_at');
            $form->display('updated_at');
        });
    }
}
