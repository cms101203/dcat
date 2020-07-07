<?php

namespace App\Admin\Controllers;

use App\Admin\Repositories\CarInsuranceLog;
use App\Models\AdminIndustry;
use App\Models\CarInsuranceLogModel;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;
use App\Models\CarsModel;

class CarInsuranceLogController extends AdminController
{
    protected  $title="保险缴纳记录";
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Grid::make(new CarInsuranceLog(), function (Grid $grid) {
            $grid->id->sortable();
            $grid->column('cars_id','所属汽车牌照')->display(function ($item){
                $cars = CarsModel::where('id',$item)->first();
                return $cars['car_num'];
            });
            $grid->type->using(AdminIndustry::dataOptions(['id','title'],['parent_id'=>27]));
            $grid->pay_at;
            $grid->column('datetime','保险有效期')->display(function($item){
                return $this->start_at." ~ ".$this->end_at;
            });
            $grid->pay_money;
            $grid->remark;
            $grid->created_at;
            $grid->actions(function (Grid\Displayers\Actions $actions) {
                $actions->disableView();
            });
            $grid->disableCreateButton();

            $grid->withBorder();
            $grid->filter(function (Grid\Filter $filter) {
                $filter->equal('type')->select(AdminIndustry::dataOptions(['id','title'],['parent_id'=>27]));
                $filter->equal('cars_id','所属汽车')->select(CarsModel::dataOptions(['id','car_num']));
                $filter->between('pay_at')->date();
                $filter->between('end_at','到期时间')->date();
        
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
        return Show::make($id, new CarInsuranceLog(), function (Show $show) {
            $show->id;
            $show->type;
            $show->pay_at;
            $show->cars_id;
            $show->op_id;
            $show->pay_money;
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
        $id = request()->get('id');
        return Form::make(new CarInsuranceLog(), function (Form $form)use($id) {
            $form->display('id');
            $form->select('type')->options(AdminIndustry::dataOptions(['id','title'],['parent_id'=>27]))->required();
            $form->date('pay_at')->required();
            $form->dateRange('start_at', 'end_at', '保险有效期')->required();
            $form->hidden('cars_id')->default($id);
            $form->saving(function ($form) {
                if ($form->isCreating()){
                    $check = CarInsuranceLogModel::where('cars_id',$form->cars_id)->where('type',$form->type)->where('pay_at',$form->pay_at)->count();
                    if ($check){
                        return $form->error('记录已经存在!');
                    }
                }
            });
            $form->hidden('op_id')->default(auth('admin')->user()->id);
            $form->currency('pay_money')->symbol("元")->saving(function ($v){
                return str_replace(',','',$v);
            });
            $form->textarea('remark');
        
            $form->display('created_at');
            $form->display('updated_at');
        });
    }
}
