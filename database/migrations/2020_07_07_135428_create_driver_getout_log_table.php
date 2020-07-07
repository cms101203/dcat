<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDriverGetoutLogTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('driver_getout_log', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('rent_id')->comment('租车单ID');
            $table->integer('staff_id')->comment('所属司机');
            $table->timestamp('outs_at')->nullable()->comment('出车开始时间');
            $table->timestamp('oute_at')->nullable()->comment('出车结束时间');
            $table->integer('car_id')->comment('相关车辆');
            $table->integer('op_id')->comment('操作人');
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
        Schema::dropIfExists('driver_getout_log');
    }
}
