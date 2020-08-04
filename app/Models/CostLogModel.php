<?php

namespace App\Models;

use Dcat\Admin\Traits\HasDateTimeFormatter;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Arr;

class CostLogModel extends Model
{
	use HasDateTimeFormatter;
    use SoftDeletes;

    protected $table = 'cost_log';

    const COST_SERVICE   = 1; //维修
    const COST_INSURANCE = 2; //保险
    const COST_MAINTAIN  = 3; //保养
    const COST_WAGE      = 4; //员工工资
    const COST_SECD      = 5; //汽车借调
    const COST_DEPOSIT   = 6; //租赁押金
    const COST_RENT      = 7; //租赁租金
    const COST_DEDUCTION = 8; //单付租金
    const COST_ADVANCE   = 9; //预支记录
    const COST_WZ_DEPOSIT= 10;//违章押金
    const COST_PAID      = 11;//还车实收金额
    const COST_REFUND    = 12;//还车返款

    const TYPE_SERVICE   = "汽车维修";
    const TYPE_INSURANCE = "汽车保险";
    const TYPE_MAINTAIN  = "汽车保养";
    const TYPE_WAGE      = "员工工资";
    const TYPE_SECD      = "汽车借调";
    const TYPE_DEPOSIT   = "租赁押金";
    const TYPE_RENT      = "租赁租金";
    const TYPE_DEDUCTION = "单付租金";
    const TYPE_ADVANCE   = "预支记录";
    const TYPE_WZ_DEPOSIT= "违章押金";
    const TYPE_PAID      = "还车实收金额";
    const TYPE_REFUND    = "还车返款";

    static $typeArr = [
        self::COST_SERVICE=>self::TYPE_SERVICE,
        self::COST_INSURANCE=>self::TYPE_INSURANCE,
        self::COST_MAINTAIN=>self::TYPE_MAINTAIN,
        self::COST_WAGE=>self::TYPE_WAGE,
        self::COST_SECD=>self::TYPE_SECD,
        self::COST_DEPOSIT=>self::TYPE_DEPOSIT,
        self::COST_RENT=>self::TYPE_RENT,
        self::COST_DEDUCTION=>self::TYPE_DEDUCTION,
        self::COST_ADVANCE=>self::TYPE_ADVANCE,
        self::COST_WZ_DEPOSIT=>self::COST_WZ_DEPOSIT,
        self::COST_PAID=>self::TYPE_PAID,
        self::COST_REFUND=>self::TYPE_REFUND
    ];

    

    public static function costLog($data){


        $param = [];
        $param['kid']       = Arr::get($data,'kid',0);
        $param['uid']       = Arr::get($data,'uid',0);
        $param['cid']       = Arr::get($data,'cid',0);
        $param['type']      = Arr::get($data,'type',1);
        $param['cost_type'] = Arr::get($data,'cost_type',1);
        $param['data_id']   = Arr::get($data,'data_id',0);
        $param['money']     = Arr::get($data,'money',0);
        $param['op_id']     = auth('admin')->user()->id;
        $param['remark']    = self::$typeArr[$param['type']];
        $id = self::insertGetId($param);
        return $id;

    }
}
