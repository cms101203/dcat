<?php

namespace App\Models;

use Illuminate\Database\Eloquent\SoftDeletes;
use Dcat\Admin\Traits\HasDateTimeFormatter;
use Dcat\Admin\Support\Helper;
use Dcat\Admin\Traits\ModelTree;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Spatie\EloquentSortable\Sortable;

class AdminIndustry extends BaseModel
{
    use SoftDeletes;
	use HasDateTimeFormatter;
    protected $table = 'admin_industry';

    protected $titleColumn = 'title';
//    use HasDateTimeFormatter,
     use  ModelTree {
        ModelTree::boot as treeBoot;
    }

    /**
     * Create a new Eloquent model instance.
     *
     * @param array $attributes
     */
    public function __construct(array $attributes = [])
    {
        $this->setConnection("mysql");
        $this->setTable($this->table);

        parent::__construct($attributes);
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
