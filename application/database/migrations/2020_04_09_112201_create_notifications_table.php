<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNotificationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('notifications', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id');
            $table->tinyInteger('type')
                ->nullable()
                ->comment('1="Comment on against a post", 2="Reply on against a comment", 3="Following",  4="Post Liked", ');
            $table->longText('notification_obj')->nullable();
            $table->tinyInteger('read_status')->default(0)->comment('1=Already read, 0 = Not read');
//            $table->integer('comment_id')->nullable();
//            $table->integer('comment_id')->nullable();
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
        Schema::dropIfExists('notifications');
    }
}
