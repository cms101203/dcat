<?php

namespace App\Admin\Repositories;

use Dcat\Admin\Repositories\EloquentRepository;
use App\Models\CarsMaintainLogModel as CarsMaintainLogModelModel;

class CarsMaintainLog extends EloquentRepository
{
    /**
     * Model.
     *
     * @var string
     */
    protected $eloquentClass = CarsMaintainLogModelModel::class;
}
