<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCarsIllegalLogTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cars_illegal_log', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('rent_id')->comment('所属租车单');
            $table->integer('car_id')->comment('违章车辆');
            $table->integer('staff_id')->default('0')->nullable()->comment('违章司机');
            $table->integer('bits')->default('0')->nullable()->comment('扣除分值');
            $table->float('money')->default('0.00')->nullable()->comment('罚款金额');
            $table->timestamp('illegal_at')->nullable()->comment('违章时间');
            $table->integer('type')->default('0')->nullable()->comment('处理方式');
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
        Schema::dropIfExists('cars_illegal_log');
    }
}
