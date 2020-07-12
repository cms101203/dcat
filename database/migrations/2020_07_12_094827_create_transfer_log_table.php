<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTransferLogTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('transfer_log', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('rent_id')->comment('租车单');
            $table->integer('client_id')->comment('客户');
            $table->integer('car_id')->comment('更换车');
            $table->integer('mileages')->comment('更换车里程');
            $table->string('oils')->default('')->comment('更换车油量');
            $table->integer('transfer_id')->comment('被换车辆');
            $table->integer('transfer_mileage')->comment('被换车里程');
            $table->string('transfer_oils')->default('')->comment('被换车油量');
            $table->date('transfer_at')->comment('更换日期');
            $table->string('remark')->default('')->comment('更换原因');
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
        Schema::dropIfExists('transfer_log');
    }
}
