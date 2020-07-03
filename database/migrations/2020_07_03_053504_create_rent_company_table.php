<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRentCompanyTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('rent_company', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title')->default('')->comment('公司名称');
            $table->string('contact')->nullable()->comment('负责人');
            $table->string('mobile')->nullable()->comment('联系电话');
            $table->string('phone')->nullable()->comment('手机号');
            $table->string('address')->nullable()->comment('公司地址');
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
        Schema::dropIfExists('rent_company');
    }
}
