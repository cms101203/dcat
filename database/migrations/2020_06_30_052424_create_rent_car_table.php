<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRentCarTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('rent_car', function (Blueprint $table) {
            $table->increments('id');
            $table->string('rent_num')->default('')->comment('租赁单号');
            $table->integer('client_id')->comment('客户ID');
            $table->integer('staff_id')->comment('相关司机');
            $table->integer('current_mileage')->default('0')->nullable()->comment('当前历程');
            $table->integer('car_type')->default('0')->comment('汽车类型');
            $table->integer('car_id')->default('0')->comment('汽车ID');
            $table->integer('rent_type')->default('0')->comment('租赁方式');
            $table->timestamp('rent_at')->default('CURRENT_TIMESTAMP')->comment('租赁时间');
            $table->integer('rent_day')->default('0')->comment('预租天数');
            $table->float('deposit')->default('0.00')->nullable()->comment('已交押金');
            $table->float('rent')->default('0.00')->nullable()->comment('已付租金');
            $table->string('oil_volume')->nullable()->comment('当前油量');
            $table->string('redriving')->nullable()->comment('限驶');
            $table->float('odrive_price')->default('0.00')->nullable()->comment('超驶加价');
            $table->float('timeout_price')->default('0.00')->nullable()->comment('超时加价');
            $table->string('remark')->nullable()->comment('备注');
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
        Schema::dropIfExists('rent_car');
    }
}
