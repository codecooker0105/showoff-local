<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateChattingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('chattings', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('channel_id')->unsigned();
            $table->integer('sender_id')->unsigned();
            $table->integer('receiver_id')->unsigned();
            $table->text('message')->nullable();
            $table->string('image')->nullable();
            $table->string('video')->nullable();
            $table->string('thumbnail')->nullable();
            $table->string('attachment')->nullable();
            $table->tinyInteger('type')->default(0);
            $table->tinyInteger('read_status')->default(0)->comment('0="Not Read" 1="Already Read"');
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
        Schema::dropIfExists('chattings');
    }
}
