<?php

namespace App\Admin\Repositories;

use Dcat\Admin\Repositories\EloquentRepository;
use App\Models\CarsIllegalLogModel as CarsIllegalLogModelModel;

class CarsIllegalLog extends EloquentRepository
{
    /**
     * Model.
     *
     * @var string
     */
    protected $eloquentClass = CarsIllegalLogModelModel::class;
}
