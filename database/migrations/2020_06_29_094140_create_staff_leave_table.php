<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStaffLeaveTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('staff_leave', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('staff_id')->comment('所属员工');
            $table->tinyInteger('type')->comment('请假类型');
            $table->integer('duration')->default('0')->comment('请假天数');
            $table->timestamp('duration_strat')->nullable()->comment('假期开始时间');
            $table->timestamp('duration_end')->nullable()->comment('假期结束时间');
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
        Schema::dropIfExists('staff_leave');
    }
}
