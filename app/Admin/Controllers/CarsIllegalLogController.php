<?php

namespace App\Admin\Controllers;

use App\Admin\Repositories\CarsIllegalLog;
use App\Models\AdminIndustry;
use App\Models\CarsModel;
use App\Models\DriverDetailModel;
use App\Models\RentCarModel;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;

class CarsIllegalLogController extends AdminController
{
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Grid::make(new CarsIllegalLog(), function (Grid $grid) {
            $grid->id->sortable();
            $grid->rent_id->using(RentCarModel::dataOptions(['id','rent_num']));
            $grid->car_id->using(CarsModel::dataOptions(['id','car_num']));
            $grid->staff_id->using(DriverDetailModel::dataOptions(['id','name']));
            $grid->bits->display(function ($item){
                return $item." 分";
            });
            $grid->money->display(function ($item){
                return $item." 元";
            });
            $grid->illegal_at;
            $grid->type->using(AdminIndustry::dataOptions(['id','title'],['parent_id'=>50]));
            $grid->remark->responsive(0);;
            $grid->created_at->responsive(0);;
            $grid->updated_at->sortable();
        
            $grid->filter(function (Grid\Filter $filter) {
                $filter->equal('rent_id')->select(RentCarModel::dataOptions(['id','rent_num']));
                $filter->equal('car_id')->select(CarsModel::dataOptions(['id','car_num']));
                $filter->equal('staff_id')->select(DriverDetailModel::dataOptions(['id','name'],['staff_type'=>31]));
                $filter->between('illegal_at')->datetime();
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
        return Show::make($id, new CarsIllegalLog(), function (Show $show) {
            $show->id;
            $show->rent_id;
            $show->car_id;
            $show->staff_id;
            $show->bits;
            $show->money;
            $show->illegal_at;
            $show->type;
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
        $rid = request()->get('rid');
        $id = request()->get('id');
        $cid = request()->get('cid');
        $sid = request()->get('sid');
        return Form::make(new CarsIllegalLog(), function (Form $form)use($id,$rid,$cid,$sid) {

            $form->display('id');
            $form->hidden('rent_id')->default($rid);
            $form->hidden('return_id')->default($id);
            $form->hidden('car_id')->default($cid);
            $form->hidden('staff_id')->default($cid);

            $form->number('bits');
            $form->currency('money')->symbol("元")->saving(function ($v){
                return empty($v) ? 0 :  str_replace(',','',$v);
            });
            $form->datetime('illegal_at');
            $form->select('type')->options(AdminIndustry::dataOptions(['id','title'],['parent_id'=>50]));
            $form->select('offset_car')->options(CarsModel::dataOptions(['id','car_num']));
            $form->currency('offset_money')->symbol("元")->saving(function ($v){
                return empty($v) ? 0 :  str_replace(',','',$v);
            });
            $form->textarea('remark');
            $form->hidden('op_id')->default(auth('admin')->user()->id);
        
            $form->display('created_at');
            $form->display('updated_at');
        });
    }
}
