<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCarsMaintainLogTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cars_maintain_log', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('type')->comment('保养类型');
            $table->date('by_at')->nullable()->comment('保养时间');
            $table->integer('car_mileage')->default('0')->comment('汽车里程');
            $table->integer('op_id')->comment('添加人');
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
        Schema::dropIfExists('cars_maintain_log');
    }
}
