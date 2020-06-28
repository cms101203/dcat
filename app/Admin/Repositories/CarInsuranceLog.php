<?php

namespace App\Admin\Repositories;

use Dcat\Admin\Repositories\EloquentRepository;
use App\Models\CarInsuranceLogModel as CarInsuranceLogModelModel;

class CarInsuranceLog extends EloquentRepository
{
    /**
     * Model.
     *
     * @var string
     */
    protected $eloquentClass = CarInsuranceLogModelModel::class;
}
