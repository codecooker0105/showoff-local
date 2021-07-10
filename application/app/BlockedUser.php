<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BlockedUser extends Model
{
    public function users()
    {
        return $this->hasOne(User::class, 'id', 'blocked_id');
    }
}