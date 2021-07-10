<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAdsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ads', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title')->nullable();
            $table->string('company_name')->nullable();
            $table->string('company_logo')->nullable();
            $table->dateTime('start_time')->nullable();
            $table->dateTime('end_time')->nullable();
            $table->string('ads_banner')->nullable();
            $table->string('banner_width',10)->nullable();
            $table->string('banner_height',10)->nullable();
            $table->string('location')->nullable();
            $table->text('description')->nullable();
            $table->text('status')->nullable();
            $table->integer('merchant_id')->unsigned();
            $table->foreign('merchant_id')->references('id')->on('users')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ads');
    }
}
