<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Feedbacks extends Model
{
    protected  $fillable=['email','description','user_id'];

    public function user(){
        return $this->hasOne(User::class,'id','user_id');
    }
}
