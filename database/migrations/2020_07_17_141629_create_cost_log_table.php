<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCostLogTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cost_log', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('kid')->comment('所属客户');
            $table->integer('uid')->comment('所属人');
            $table->integer('cid')->comment('所属汽车');
            $table->integer('type')->comment('消费类型');
            $table->tinyInteger('cost_type')->comment('操作类型1扣费２收入');
            $table->integer('data_id')->comment('操作数据id');
            $table->float('money')->comment('操作钱数');
            $table->string('remark')->default('')->comment('备注');
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
        Schema::dropIfExists('cost_log');
    }
}
