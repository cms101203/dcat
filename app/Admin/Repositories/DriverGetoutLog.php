<?php

namespace App\Admin\Repositories;

use Dcat\Admin\Repositories\EloquentRepository;
use App\Models\DriverGetoutLogModel as DriverGetoutLogModelModel;

class DriverGetoutLog extends EloquentRepository
{
    /**
     * Model.
     *
     * @var string
     */
    protected $eloquentClass = DriverGetoutLogModelModel::class;
}
