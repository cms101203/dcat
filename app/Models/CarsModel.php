<?php

namespace App\Models;

use Dcat\Admin\Traits\HasDateTimeFormatter;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Model;

class CarsModel extends BaseModel
{
	use HasDateTimeFormatter;
    use SoftDeletes;

    protected $table = 'cars';

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
