<?php

namespace App\Models;

use Dcat\Admin\Traits\HasDateTimeFormatter;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Model;
use App\Scopes\CompanyScope;

class CarInsuranceLogModel extends Model
{
	use HasDateTimeFormatter;
    use SoftDeletes;
    protected static function boot()
    {
        parent::boot();
        /**
         * 添加全局scope以自动过滤数据，如需排除请在->get()之前使用:->withoutGlobalScope(OpScope::class)
         */
        $rolescope = new CompanyScope();
        $rolescope->colName="op_id";
        static::addGlobalScope($rolescope);
    }

    protected $table = 'cars_insurance_log';


}
