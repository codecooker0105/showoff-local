<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PostLikes extends Model
{
    public function users(){
        return $this->hasOne(User::class, 'id', 'user_id');
    }
}
