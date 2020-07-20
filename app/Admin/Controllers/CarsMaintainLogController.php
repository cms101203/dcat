<?php

namespace App\Admin\Controllers;

use App\Admin\Repositories\CarsMaintainLog;
use App\Models\CarsMaintainLogModel;
use App\Models\AdminIndustry;
use App\Models\CarsModel;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;
use Illuminate\Http\Request;

class CarsMaintainLogController extends AdminController
{
    protected $title="保养管理";
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Grid::make(new CarsMaintainLog(), function (Grid $grid) {
            $grid->id->sortable();
            $grid->column('cars_id','所属汽车牌照')->display(function ($item){
                $cars = CarsModel::where('id',$item)->first();
                return $cars['car_num'];
            });
            $grid->type->using(AdminIndustry::dataOptions(['id','title'],['parent_id'=>23]));
            $grid->by_at;
            $grid->car_mileage->display(function ($item){
                return $item."/Km";
            });
            $grid->remark;
            $grid->created_at;
            $grid->actions(function (Grid\Displayers\Actions $actions) {
                $actions->disableView();
            });
            $grid->disableCreateButton();

            $grid->withBorder();
            $grid->filter(function (Grid\Filter $filter) {
                $filter->equal('type')->select(AdminIndustry::dataOptions(['id','title'],['parent_id'=>23]));
                $filter->equal('cars_id','所属汽车')->select(CarsModel::dataOptions(['id','car_num']));
                $filter->between('by_at')->date();

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
                if ($form->isCreating()){
                    $check = CarsMaintainLogModel::where('cars_id',$form->cars_id)->where('type',$form->type)->where('by_at',$form->by_at)->count();

                    if ($check){
                        return $form->error('记录已经存在!');
                    }
                }
            });

            $form->currency('car_mileage')->symbol("Km")->saving(function ($v){
                return str_replace(',','',$v);
            });
            $form->number('num');
            $form->number('money');
            $form->textarea('remark');
            $form->hidden('op_id')->default(auth('admin')->user()->id);
            $form->hidden('cars_id')->default($id);
            $form->display('created_at');
            $form->display('updated_at');
            $form->saved(function ($form){
                $udata = [];
                $typearr = [24=>'by_status',25=>'pd_status',26=>'cly_status'];
                CarsModel::where('id',$form->cars_id)->update([$typearr[$form->type]=>0]);
            });
        });
    }
}
