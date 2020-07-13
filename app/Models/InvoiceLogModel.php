<?php

namespace App\Models;

use Dcat\Admin\Traits\HasDateTimeFormatter;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Model;

class InvoiceLogModel extends BaseModel
{
	use HasDateTimeFormatter;
    use SoftDeletes;

    protected $table = 'invoice_log';
    

}
