<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Followers extends Model
{
    protected $fillable=['user_id','follower_id'];


    public function follow()
    {
        return $this->hasOne('App\User', 'id', 'follower_id');
    }

    public function following()
    {
        return $this->hasOne('App\User', 'id', 'user_id');
    }
}
