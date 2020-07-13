<?php

namespace App\Admin\Repositories;

use Dcat\Admin\Repositories\EloquentRepository;
use App\Models\InvoiceLogModel as InvoiceLogModelModel;

class InvoiceLog extends EloquentRepository
{
    /**
     * Model.
     *
     * @var string
     */
    protected $eloquentClass = InvoiceLogModelModel::class;
}
