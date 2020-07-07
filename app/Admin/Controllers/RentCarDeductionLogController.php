<?php

namespace App\Admin\Controllers;

use App\Admin\Repositories\RentCarDeductionLog;
use App\Models\RentCarModel;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Layout\Content;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;

class RentCarDeductionLogController extends AdminController
{
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Grid::make(new RentCarDeductionLog(), function (Grid $grid) {
            $grid->id->sortable();
            $grid->rent_id->using(RentCarModel::dataOptions(['id','rent_num']));
            $grid->rent_money;
            $grid->rent_over;
            $grid->deposit_money;
            $grid->deposit_over;
            $grid->next_at;
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
        return Show::make($id, new RentCarDeductionLog(), function (Show $show) {
            $show->id;
            $show->rent_id;
            $show->rent_money;
            $show->rent_over;
            $show->deposit_money;
            $show->deposit_over;
            $show->next_at;
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

        $id = intval(request()->get('id'));
        return Form::make(new RentCarDeductionLog(), function (Form $form) use ($id) {
            $form->display('id');
            $form->hidden('rent_id')->default($id);
            $form->currency('rent_money')->symbol("元")->saving(function ($v){
                return empty($v) ? 0 :  str_replace(',','',$v);
            });

            $form->currency('deposit_money')->symbol("元")->saving(function ($v){
                return empty($v) ? 0 :  str_replace(',','',$v);
            });
            $form->currency('money')->symbol("元")->saving(function ($v){
                return empty($v) ? 0 :  str_replace(',','',$v);
            });
            $rent = RentCarModel::where('id',$form->rent_id)->first();
            $form->hidden('rent_over')->saving(function ($item)use($form,$rent){
                if ($form->isCreating()) {
                    $rent_money = intval(str_replace(',', '', $form->rent_money));
                    if ($rent_money > 0) {

                        if ($rent['rent'] > $rent_money) {
                            $item = $rent['rent'] - $rent_money;
                            RentCarModel::where('id',$rent['id'])->update(['rent'=>$item]);
                            return $item;
                        } else {
                            return $form->error('租金余额已经不够扣除');
                        }
                    }else{
                        return $rent['rent'];
                    }
                }
            });
            $form->hidden('deposit_over')->saving(function ($item)use($form,$rent){
                if ($form->isCreating()) {
                    $deposit_money =  intval(str_replace(',','',$form->deposit_money));
                    if ($deposit_money > 0) {
                        if($rent['deposit'] > $deposit_money){
                            $item = $rent['deposit'] - $deposit_money;
                            RentCarModel::where('id',$rent['id'])->update(['deposit'=>$item]);
                            return $item;
                        }else{
                            return $form->error('押金余额已经不够扣除');
                        }
                    }else{
                        return $rent['deposit'];
                    }
                }
            });
            $form->date('next_at')->required();
            $form->textarea('remark');
            $form->hidden('op_id')->default(auth('admin')->user()->id);

            $form->display('created_at');
            $form->display('updated_at');
        });
    }
}
