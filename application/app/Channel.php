<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Channel extends Model
{
    public function lastChat()
    {
        return $this->hasOne(Chatting::class, 'channel_id', 'id')->orderBy('id','desc');
    }
    public function user_one()
    {
        return $this->hasOne(User::class, 'id', 'user_id_1');
    }
    public function user_two()
    {
        return $this->hasOne(User::class, 'id', 'user_id_2');
    }
}