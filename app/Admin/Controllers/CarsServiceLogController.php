<?php

namespace App\Admin\Controllers;

use App\Admin\Repositories\CarsServiceLog;
use App\Models\AdminIndustry;
use App\Models\CarsModel;
use App\Models\CostLogModel;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;

class CarsServiceLogController extends AdminController
{
    protected $title="维修管理";
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Grid::make(new CarsServiceLog(), function (Grid $grid) {
            $grid->id->sortable();
            $grid->column('cars_id','所属汽车牌照')->display(function ($item){
                $cars = CarsModel::where('id',$item)->first();
                return $cars['car_num'];
            });
            $grid->service_at;
            $grid->service_moeny->display(function ($item){
                return $item."/元";
            });
            $grid->remark;
            $grid->created_at;
            $grid->actions(function (Grid\Displayers\Actions $actions) {
                $actions->disableView();
            });
            $grid->disableCreateButton();

            $grid->withBorder();
            $grid->filter(function (Grid\Filter $filter) {

                $filter->equal('cars_id','所属汽车')->select(CarsModel::dataOptions(['id','car_num']));
                $filter->between('service_at')->date();

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
        return Show::make($id, new CarsServiceLog(), function (Show $show) {
            $show->id;
            $show->service_at;
            $show->service_moeny;
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
        return Form::make(new CarsServiceLog(), function (Form $form) use($id) {
            $form->display('id');
            $form->date('service_at')->required();
            $form->currency('service_moeny')->symbol("元")->saving(function ($v){
                return str_replace(',','',$v);
            });
            $form->textarea('remark');
            $form->hidden('op_id')->default(auth('admin')->user()->id);
            $form->hidden('cars_id')->default($id);
            $form->display('created_at');
            $form->display('updated_at');
            $form->saved(function ($form){
                $data = [];
                $data['data_id']   = $form->getKey();
                $data['cid']       = $form->cars_id;
                $data['type']      = CostLogModel::COST_SERVICE;
                $data['cost_type'] = 1;
                $data['money']     = -$form->service_moeny;
                $data['cp_id']     = auth('admin')->user()->cp_id;
                $data['op_id']     = auth('admin')->user()->id;
                CostLogModel::costLog($data);
            });
        });
    }
}
