<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\Auth;

class Stories extends Model
{
    use SoftDeletes;
    public function images()
    {
        return $this->hasMany(StoryFiles::class, 'story_id', 'id');
    }
    public function users(){
        return $this->hasOne(User::class, 'id', 'user_id');
    }

    public function blocked_user()
    {
        return $this->hasOne(BlockedUser::class, 'blocked_id', 'user_id')->where('block_by_id', Auth::id());
    }

    public function block_by_user()
    {
        return $this->hasOne(BlockedUser::class, 'block_by_id', 'user_id')->where('blocked_id', Auth::id());
    }

    public function  getThumbnailUrlAttribute($value)
    {
        if ($value){
            return $value;
        }else{
            return url('/').'/assets/no-image.jpg';
        }
    }
}
