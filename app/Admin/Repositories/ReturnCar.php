<?php

namespace App\Admin\Repositories;

use Dcat\Admin\Repositories\EloquentRepository;
use App\Models\ReturnCarModel as ReturnCarModelModel;

class ReturnCar extends EloquentRepository
{
    /**
     * Model.
     *
     * @var string
     */
    protected $eloquentClass = ReturnCarModelModel::class;
}
