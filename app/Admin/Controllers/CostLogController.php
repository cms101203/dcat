<?php

namespace App\Admin\Controllers;

use App\Admin\Repositories\CostLog;
use App\Models\CarsModel;
use App\Models\ClientDetailModel;
use App\Models\CostLogModel;
use App\Models\DriverDetailModel;
use App\Models\StaffLeaveModel;
use App\User;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Models\Administrator;
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
            $grid->kid->display(function ($item){
                $client = ClientDetailModel::where('id',$item)->first();
                return empty($client) ? '--' : $client['client_name'] ;
            });
            $grid->uid->display(function ($item){
                $staff = DriverDetailModel::where('id',$item)->first();
                return empty($staff) ? '--' : $staff['name'] ;
            });
            $grid->cid->display(function ($item){
                $cars = CarsModel::where('id',$item)->first();
                return empty($cars) ? '--' : $cars['car_num'] ;
            });
            $grid->type->display(function ($item){
               return empty($item) ? '--' : CostLogModel::$typeArr[$item];
            });
            $grid->cost_type->using([1=>"扣费",2=>"收入"]);
            $grid->data_id;
            $grid->money;
            $grid->remark;
            $grid->op_id->display(function ($item){
                $user = Administrator::where('id',$item)->first();
                return empty($user) ? '--' : $user['name'];
            });
            $grid->created_at;
            $grid->disableCreateButton();
            $grid->filter(function (Grid\Filter $filter) {
                $filter->equal('kid')->select(ClientDetailModel::dataOptions(['id','client_name']));
                $filter->equal('uid')->select(DriverDetailModel::dataOptions(['id','name']));
                $filter->equal('cid')->select(CarsModel::dataOptions(['id','car_num']));
                $filter->equal('type')->select(CostLogModel::$typeArr);
                $filter->equal('cost_type')->select([1=>"扣费",2=>"收入"]);
                // 设置datetime类型
                $filter->between('created_at')->date();
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
