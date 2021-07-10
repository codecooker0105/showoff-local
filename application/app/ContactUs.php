<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ContactUs extends Model
{
    protected  $fillable=['email','description','user_id'];

    protected $table='contact_uses';
}
