<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->string('email')->unique();
            $table->string('username');
            $table->string('about_me')->nullable();
            $table->string('password');
            $table->integer('role_type');
            $table->string('gender');
            $table->text('bio');
            $table->string('phone');
            $table->string('date_of_birth');
            $table->string('image_url');
            $table->string('owner_name');
            $table->string('location');
            $table->string('latitude');
            $table->string('longitude');
            $table->datetime('last_login_at')->nullable();
            $table->rememberToken();
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
        Schema::dropIfExists('users');
    }
}
