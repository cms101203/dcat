<?php

namespace App\Admin\Repositories;

use Dcat\Admin\Repositories\EloquentRepository;
use App\Models\StaffLeaveModel as StaffLeaveModelModel;

class StaffLeave extends EloquentRepository
{
    /**
     * Model.
     *
     * @var string
     */
    protected $eloquentClass = StaffLeaveModelModel::class;
}
