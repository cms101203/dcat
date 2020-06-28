<?php

namespace App\Admin\Controllers;

use App\Admin\Repositories\CarsMaintainLog;
use App\Models\CarsMaintainLogModel;
use App\Models\AdminIndustry;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;
use Illuminate\Http\Request;

class CarsMaintainLogController extends AdminController
{
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Grid::make(new CarsMaintainLog(), function (Grid $grid) {
            $grid->id->sortable();
            $grid->type;
            $grid->by_at;
            $grid->car_mileage;
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
        return Show::make($id, new CarsMaintainLog(), function (Show $show) {
            $show->id;
            $show->type;
            $show->by_at;
            $show->car_mileage;
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
        $id = \request()->get('id');
        return Form::make(new CarsMaintainLog(), function (Form $form)use($id) {
            $form->display('id');
            $form->select('type')->options(AdminIndustry::dataOptions(['id','title'],['parent_id'=>23]))->required();
            $form->date('by_at')->required()->required();
            $form->saving(function ($form) {
                $check = CarsMaintainLogModel::where('cars_id',$form->cars_id)->where('type',$form->type)->where('by_at',$form->by_at)->count();

                if ($check){
                    return $form->error('记录已经存在!');
                }
            });

            $form->number('car_mileage');
            $form->hidden('op_id')->default(auth('admin')->user()->id);
            $form->hidden('cars_id')->default($id);
            $form->display('created_at');
            $form->display('updated_at');
        });
    }
}
