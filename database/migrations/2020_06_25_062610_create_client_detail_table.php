<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateClientDetailTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('client_detail', function (Blueprint $table) {
            $table->increments('id');
            $table->string('client_name')->default('')->comment('客户名');
            $table->string('client_mobile')->nullable()->comment('客户联系方式');
            $table->string('client_wechat')->nullable()->comment('客户微信');
            $table->string('client_qq')->nullable()->comment('客户qq');
            $table->string('client_email')->nullable()->comment('客户邮箱');
            $table->string('id_card')->nullable()->comment('客户身份证号');
            $table->json('prove_img')->nullable()->comment('证件图片');
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
        Schema::dropIfExists('client_detail');
    }
}
