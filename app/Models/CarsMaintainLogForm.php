<?php

namespace App\Models;

use App\Models\AdminIndustry as IndustryModel;
use Dcat\Admin\Support\LazyRenderable;
use App\Models\CarsMaintainLogModel as MaintainLog;
use Dcat\Admin\Form;

class CarsMaintainLogForm extends LazyRenderable
{

    public function render()
    {
        // TODO: Implement render() method.
        return Form::make(new MaintainLog(),function (Form $form){
            $form->select('type')->options(IndustryModel::dataOptions(['id','title'],['parent_id'=>23]))->required();
            $form->date('by_at')->required();
            $form->text('car_mileage')->required();
            $form->hidden('op_id')->default(auth('admin')->user()->id);
        });
    }
}
