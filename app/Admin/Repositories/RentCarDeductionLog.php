<?php

namespace App\Admin\Repositories;

use Dcat\Admin\Repositories\EloquentRepository;
use App\Models\RentCarDeductionLogModel as RentCarDeductionLogModelModel;

class RentCarDeductionLog extends EloquentRepository
{
    /**
     * Model.
     *
     * @var string
     */
    protected $eloquentClass = RentCarDeductionLogModelModel::class;
}
