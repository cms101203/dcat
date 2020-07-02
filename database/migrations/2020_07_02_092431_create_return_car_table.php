<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateReturnCarTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('return_car', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('rent_id')->comment('关联租车单');
            $table->tinyInteger('is_checkout')->comment('是否已结帐');
            $table->timestamp('return_at')->comment('还车时间');
            $table->integer('return_mileage')->default('0')->nullable()->comment('还车里程');
            $table->string('return_oil')->default('0')->nullable()->comment('还车油量');
            $table->tinyInteger('is_odrive')->default('0')->nullable()->comment('是否超驶');
            $table->tinyInteger('is_time')->default('0')->nullable()->comment('是否超时');
            $table->float('oy_price')->default('0.00')->nullable()->comment('桥路费');
            $table->float('wz_deposit')->default('0.00')->nullable()->comment('违章押金');
            $table->float('receivable')->default('0.00')->nullable()->comment('应收金额');
            $table->float('paid')->default('0.00')->nullable()->comment('实收金额');
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
        Schema::dropIfExists('return_car');
    }
}
