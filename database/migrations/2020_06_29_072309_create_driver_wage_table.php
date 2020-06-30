<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDriverWageTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('driver_wage', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('driver_id')->comment('所属司机');
            $table->float('basic_wage')->comment('基本工资');
            $table->float('tc_money')->default('0.00')->nullable()->comment('提成');
            $table->float('bonus')->default('0.00')->nullable()->comment('奖金');
            $table->integer('violate_num')->default('0')->nullable()->comment('违章次数');
            $table->float('deduction')->default('0.00')->nullable()->comment('扣除');
            $table->float('surplus')->comment('现金结余');
            $table->date('cycle_start')->comment('开始时间');
            $table->date('cycle_end')->comment('结束时间');
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
        Schema::dropIfExists('driver_wage');
    }
}
