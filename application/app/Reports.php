<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Reports extends Model
{
    protected $fillable = [
        'post_id','user_id',
    ];

    public function users(){
        return $this->hasOne(User::class, 'id', 'user_id');
    }

    public function post(){
        return $this->hasOne(Posts::class,'id','post_id');
    }
}