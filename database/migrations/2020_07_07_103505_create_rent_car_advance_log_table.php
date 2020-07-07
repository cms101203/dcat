<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRentCarAdvanceLogTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('rent_car_advance_log', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('rent_id')->comment('租车单id');
            $table->float('money')->comment('预支钱数');
            $table->timestamp('advance_at')->comment('预支时间');
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
        Schema::dropIfExists('rent_car_advance_log');
    }
}
