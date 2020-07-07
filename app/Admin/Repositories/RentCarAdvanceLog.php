<?php

namespace App\Admin\Repositories;

use Dcat\Admin\Repositories\EloquentRepository;
use App\Models\RentCarAdvanceLogModel as RentCarAdvanceLogModelModel;

class RentCarAdvanceLog extends EloquentRepository
{
    /**
     * Model.
     *
     * @var string
     */
    protected $eloquentClass = RentCarAdvanceLogModelModel::class;
}
