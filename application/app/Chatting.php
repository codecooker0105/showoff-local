<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Chatting extends Model
{
    public function  getImageAttribute($value)
    {
        if ($value){
            return url('/'). '/' .$value;
        }else{
            return null;
        }
    }
}