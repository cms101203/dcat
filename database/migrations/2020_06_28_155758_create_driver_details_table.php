<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDriverDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('driver_details', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name')->default('')->comment('姓名');
            $table->string('mobile')->default('')->comment('电话');
            $table->string('id_card')->nullable()->comment('身份证号');
            $table->json('photo_img')->nullable()->comment('相关证件');
            $table->tinyInteger('driver_status')->default('0')->nullable()->comment('司机状态0空闲中1工作中2休息中3已离职');
            $table->integer('type')->default('1')->nullable()->comment('司机类型1本公司自己2外调司机');
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
        Schema::dropIfExists('driver_details');
    }
}
