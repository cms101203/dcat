<?php

namespace App\Admin\Controllers;

use App\Admin\Repositories\DriverWage;
use App\Models\CostLogModel;
use App\Models\DriverDetailModel;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;

class DriverWageController extends AdminController
{
    protected  $title="员工工资管理";
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Grid::make(new DriverWage(), function (Grid $grid) {
            $grid->id->sortable();
            $grid->staff_id->using(DriverDetailModel::dataOptions(['id','name']));
            $grid->basic_wage;
            $grid->tc_money;
            $grid->bonus;
            $grid->violate_num;
            $grid->deduction;
            $grid->surplus;
            $grid->work_days;
            $grid->leave_days;
            $grid->public_days;
            $grid->column('cycle_start','薪资周期')->display(function ($item){
                return $this->cycle_start." ~ ".$this->cycle_end;
            });
            $grid->remark;
            $grid->created_at;
            $grid->updated_at->sortable();
            $grid->actions(function (Grid\Displayers\Actions $actions) {
                $actions->disableView();
            });

            $grid->withBorder();
            $grid->disableCreateButton();
            $grid->filter(function (Grid\Filter $filter) {
                $filter->equal('staff_id')->select(DriverDetailModel::dataOptions(['id','name']));

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
        return Show::make($id, new DriverWage(), function (Show $show) {
            $show->id;
            $show->driver_id;
            $show->basic_wage;
            $show->tc_money;
            $show->bonus;
            $show->violate_num;
            $show->deduction;
            $show->surplus;
            $show->cycle_start;
            $show->cycle_end;
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
        $id = request()->get('id');
        return Form::make(new DriverWage(), function (Form $form) use($id){
            $form->display('id');
            $form->hidden('driver_id')->default($id);
            $form->currency('basic_wage')->symbol("元")->saving(function ($v){
                return str_replace(',','',$v);
            })->required();
            $form->currency('tc_money')->symbol("元")->saving(function ($v){
                return empty($v) ? 0 : str_replace(',','',$v);
            });
            $form->currency('bonus')->symbol("元")->saving(function ($v){
                return empty($v) ? 0 :  str_replace(',','',$v);
            });
            $form->number('violate_num');
            $form->currency('deduction')->symbol("元")->saving(function ($v){
                return empty($v) ? 0 :  str_replace(',','',$v);
            });
            $form->currency('surplus')->symbol("元")->saving(function ($v){
                return empty($v) ? 0 : str_replace(',','',$v);
            });
            $form->number('work_days');
            $form->number('leave_days');
            $form->number('public_days');
            $form->dateRange('cycle_start', 'cycle_end', '工资周期')->required();
            $form->textarea('remark');
            $form->hidden('op_id')->default(auth('admin')->user()->id);

            $form->saved(function ($form){
                $data = [];
                $data['data_id']   = $form->getKey();
                $data['uid']       = $form->driver_id;
                $data['type']      = CostLogModel::COST_WAGE;
                $data['cost_type'] = 1;
                $data['money']     = -$form->surplus;
                $data['cp_id']     = auth('admin')->user()->cp_id;
                $data['op_id']     = auth('admin')->user()->id;
                CostLogModel::costLog($data);
            });
        });
    }
}
