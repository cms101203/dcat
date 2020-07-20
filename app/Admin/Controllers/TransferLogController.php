<?php

namespace App\Admin\Controllers;

use App\Admin\Repositories\TransferLog;
use App\Models\CarsModel;
use App\Models\CostLogModel;
use App\Models\RentCarModel;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;

class TransferLogController extends AdminController
{
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Grid::make(new TransferLog(), function (Grid $grid) {
            $grid->id->sortable();
            $grid->rent_id;
            $grid->client_id;
            $grid->car_id;
            $grid->mileages;
            $grid->oils;
            $grid->transfer_id;
            $grid->transfer_mileage;
            $grid->transfer_oils;
            $grid->transfer_at;
            $grid->remark;
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
        return Show::make($id, new TransferLog(), function (Show $show) {
            $show->id;
            $show->rent_id;
            $show->client_id;
            $show->car_id;
            $show->mileages;
            $show->oils;
            $show->transfer_id;
            $show->transfer_mileage;
            $show->transfer_oils;
            $show->transfer_at;
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
        $uid =  request()->get('uid');
        $cid = request()->get('cid');
        return Form::make(new TransferLog(), function (Form $form)use($id,$uid,$cid) {
            $form->display('id');
            $form->hidden('rent_id')->default($id);
            $form->hidden('client_id')->default($uid);
//            $form->number('car_id')->required();
            $form->selectResource('car_id')
                ->path('cars');
            $form->radio('is_secd','借调')->options([0=>'否',1=>'是'])->default(0)->required();
            $form->number('secd_money','借调费')->default(0);
            $form->number('mileages')->required();
            $form->text('oils')->required();
            $form->text('carnum','被换车牌号')->default(function ($item) use($cid){
                $car = CarsModel::where('id',$cid)->first();
                return $car['car_num'];
            })->disable();
            $form->hidden('transfer_id')->default($cid);
            $form->number('transfer_mileage')->required();
            $form->text('transfer_oils')->required();
            $form->date('transfer_at')->required();
            $form->textarea('remark')->required();

            $form->ignore(['is_secd','secd_money']);
            $form->saved(function ($form){
                $car = CarsModel::where('id',$form->car_id)->first();

                $res = RentCarModel::where('id',$form->rent_id)
                    ->update(['car_id'=>$form->car_id,
                        'car_type'=>$car['car_type'],
                        'current_mileage'=>$form->mileages,
                        'oil_volume'=>$form->oils,
                        'is_secd' => $form->is_secd,
                        'secd_money' => $form->secd_money,
                        'secd_company' => $car['cp_id']
                    ]);
                if ($res){
                    CarsModel::where('id',$form->transfer_id)->update(['car_status'=>0]);
                    //汽车借调
                    if ($form->secd_money){
                        $data = [];
                        $data['data_id']   = $form->getKey();
                        $data['rid']       = $form->rent_id;
                        $data['kid']       = $form->client_id;
                        $data['cid']       = $form->car_id;
                        $data['secd_company'] = $car['cp_id'];
                        $data['type']      = CostLogModel::COST_SECD;
                        $data['cost_type'] = 1;
                        $data['money']     = -$form->secd_money;
                        $data['cp_id']     = auth('admin')->user()->cp_id;
                        $data['op_id']     = auth('admin')->user()->id;
                        CostLogModel::costLog($data);
                    }
                }
            });
        });
    }
}
