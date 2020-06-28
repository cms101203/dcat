<?php

namespace App\Admin\Repositories;

use Dcat\Admin\Repositories\EloquentRepository;
use App\Models\CarsServiceLogModel as CarsServiceLogModelModel;

class CarsServiceLog extends EloquentRepository
{
    /**
     * Model.
     *
     * @var string
     */
    protected $eloquentClass = CarsServiceLogModelModel::class;
}
