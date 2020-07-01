<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRentCarDeductionLogTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('rent_car_deduction_log', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('rent_id')->comment('所属租赁单号');
            $table->float('rent_money')->nullable()->comment('租金扣除数');
            $table->float('rent_over')->nullable()->comment('租金剩余数');
            $table->float('deposit_money')->nullable()->comment('押金扣除数');
            $table->float('deposit_over')->nullable()->comment('押金剩余数');
            $table->date('next_at')->comment('下次扣除时间');
            $table->string('remark')->nullable()->comment('备注');
            $table->integer('op_id')->default('0')->nullable()->comment('操作人');
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
        Schema::dropIfExists('rent_car_deduction_log');
    }
}
