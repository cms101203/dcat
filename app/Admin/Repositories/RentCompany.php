<?php

namespace App\Admin\Repositories;

use Dcat\Admin\Repositories\EloquentRepository;
use App\Models\RentCompanyModel as RentCompanyModelModel;

class RentCompany extends EloquentRepository
{
    /**
     * Model.
     *
     * @var string
     */
    protected $eloquentClass = RentCompanyModelModel::class;
}
