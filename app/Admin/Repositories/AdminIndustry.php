<?php

namespace App\Admin\Repositories;

use Dcat\Admin\Repositories\EloquentRepository;
use App\Models\AdminIndustry as AdminIndustryModel;

class AdminIndustry extends EloquentRepository
{
    /**
     * Model.
     *
     * @var string
     */
    public function __construct($modelOrRelations = [])
    {
        $this->eloquentClass = AdminIndustryModel::class;

        parent::__construct($modelOrRelations);
    }
}
