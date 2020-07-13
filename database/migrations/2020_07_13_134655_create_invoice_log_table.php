<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateInvoiceLogTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('invoice_log', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('return_id')->comment('所属还车单');
            $table->string('tax_num')->default('')->comment('税号');
            $table->integer('type')->comment('发票类型');
            $table->string('title')->default('')->comment('抬头');
            $table->float('money')->comment('面额');
            $table->tinyInteger('point')->default('0')->nullable()->comment('税点');
            $table->integer('invoice_img')->comment('发票图片');
            $table->timestamp('kp_at')->default('CURRENT_TIMESTAMP')->comment('开票时间');
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('invoice_log');
    }
}
