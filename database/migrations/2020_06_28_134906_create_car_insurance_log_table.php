<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCarInsuranceLogTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('car_insurance_log', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('type')->comment('保险类型');
            $table->date('pay_at')->comment('缴纳日期');
            $table->integer('cars_id')->comment('所属车辆');
            $table->integer('op_id')->comment('操作人');
            $table->float('pay_money')->nullable()->comment('缴纳金额');
            $table->string('remark')->nullable()->comment('备注');
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
        Schema::dropIfExists('car_insurance_log');
    }
}
