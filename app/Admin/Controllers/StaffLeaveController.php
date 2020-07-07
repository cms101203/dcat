<?php

namespace App\Admin\Controllers;

use App\Admin\Repositories\StaffLeave;
use App\Models\AdminIndustry;
use Dcat\Admin\Admin;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;

class StaffLeaveController extends AdminController
{
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Grid::make(new StaffLeave(), function (Grid $grid) {
            $grid->id->sortable();
            $grid->staff_id;
            $grid->type;
            $grid->duration;
            $grid->duration_strat;
            $grid->duration_end;
            $grid->remark;
            $grid->op_id;
            $grid->created_at;
            $grid->updated_at->sortable();

            $grid->withBorder();
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
        return Show::make($id, new StaffLeave(), function (Show $show) {
            $show->id;
            $show->staff_id;
            $show->type;
            $show->duration;
            $show->duration_strat;
            $show->duration_end;
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
        return Form::make(new StaffLeave(), function (Form $form)use($id) {
            $form->display('id');
            $form->hidden('staff_id')->default($id);
            $form->select('type')->options(AdminIndustry::dataOptions(['id','title'],['parent_id'=>33]))->required();
            $form->datetime('duration_strat','开始时间')->format('YYYY-MM-DD HH:mm:ss')->default(date('Y-m-d 09:00:00'))->required();
            $form->datetime('duration_end','结束时间')->format('YYYY-MM-DD HH:mm:ss')->default(date('Y-m-d 18:00:00'))->required();
            $form->number('duration');
            $form->textarea('remark');
            $form->hidden('op_id')->default(auth('admin')->user()->id);


            Admin::script(
                <<<SCRIPT
                $('.duration_strat,.duration_end').blur(function(){
                    if($('.duration_strat').val() && $('.duration_end').val()){
                        var start = new Date($('.duration_strat').val()).getTime();
                        var end = new Date($('.duration_end').val()).getTime();
                        var time = (end - start)/(1000*60*60);
                        var days = Math.floor(time/24);
                        var hours = time%24;
                        if(days > 0){
                             if(hours <=4.5){
                                $(".duration").val(days+0.5);
                            }else{
                                $(".duration").val(days);
                            }
                        }else{
                            if(time <=4.5){
                                $(".duration").val(0.5);
                            }else{
                                $(".duration").val(1);
                            }
                        }
                    }
                });
SCRIPT
            );
        });
    }
}
