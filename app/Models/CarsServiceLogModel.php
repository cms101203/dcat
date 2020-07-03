<?php

namespace App\Models;

use App\Scopes\CompanyScope;
use Dcat\Admin\Traits\HasDateTimeFormatter;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Model;

class CarsServiceLogModel extends Model
{
	use HasDateTimeFormatter;
    use SoftDeletes;

    protected $table = 'cars_service_log';

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

    /**
     * Get options for Select field in form.
     *
     * @param \Closure|null $closure
     *
     * @return array
     */
    public static function selectOptions(\Closure $closure = null)
    {

        $options = (new static())->withQuery($closure)->buildSelectOptions();

        return collect($options)->all();
    }
}
