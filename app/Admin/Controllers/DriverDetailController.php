<?php

namespace App\Admin\Controllers;

use App\Admin\Repositories\DriverDetail;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;

class DriverDetailController extends AdminController
{
    protected  $title="司机管理";
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Grid::make(new DriverDetail(), function (Grid $grid) {
            $grid->id->sortable();
            $grid->name;
            $grid->mobile;
            $grid->id_card;
            $grid->driver_status->select([0=>'空闲中',1=>'工作中',2=>'休息中','3'=>'已离职']);
            $grid->type->using([1=>'本公司',2=>'外调']);
            $grid->created_at;
        
            $grid->filter(function (Grid\Filter $filter) {
                $filter->equal('id');
                $filter->ilike('name');
                $filter->ilike('mobile');
                $filter->ilike('id_card');
                $filter->equal('driver_status')->select([0=>'空闲中',1=>'工作中',2=>'休息中','3'=>'已离职']);
                $filter->equal('type')->select([1=>'本公司',2=>'外调']);
        
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
        return Show::make($id, new DriverDetail(), function (Show $show) {
            $show->id;
            $show->name;
            $show->mobile;
            $show->id_card;
            $show->photo_img->unescape()->as(function ($item){
                $img = '';
                if ($item){
                    $item = json_decode($item,true);
                    foreach ($item as $v){
                        $img .="<img data-action='preview-img' src='/uploads/{$v}' style='max-width:200px;max-height:200px' class='img' />";
                    }
                }
                return $img;
            });
            $show->driver_status->using([0=>'空闲中',1=>'工作中',2=>'休息中','3'=>'已离职']);
            $show->type->using([1=>'本公司',2=>'外调']);
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Form::make(new DriverDetail(), function (Form $form) {
            $form->display('id');
            $form->text('name')->required();
            $form->tel('mobile')->required();
            $form->text('id_card');
            $form->multipleImage('photo_img')->saving(function ($imgs){
                return json_encode($imgs);
            });
            $form->radio('driver_status')->options([0=>'空闲中',1=>'工作中',2=>'休息中','3'=>'已离职'])->default(0);
            $form->radio('type')->options([1=>'本公司',2=>'外调']);
            $form->hidden('op_id')->default(auth('admin')->user()->id);
        
            $form->display('created_at');
            $form->display('updated_at');
        });
    }
}
