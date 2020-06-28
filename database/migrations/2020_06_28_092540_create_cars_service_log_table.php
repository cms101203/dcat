<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCarsServiceLogTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cars_service_log', function (Blueprint $table) {
            $table->increments('id');
            $table->date('service_at')->comment('维修时间');
            $table->float('service_moeny')->nullable()->comment('维修花费');
            $table->string('remark')->nullable()->comment('维修备注');
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
        Schema::dropIfExists('cars_service_log');
    }
}
