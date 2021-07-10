<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;

class Notification extends Model
{
    protected $appends = ['FollowingStatus'];
    public function users()
    {
        return $this->hasOne(User::class, 'id', 'action_taken_by');
    }
    public function  getFollowingStatusAttribute()
    {
        $get_follow = Followers::where('follower_id', $this->action_taken_by)->where('user_id', Auth::id())->exists();
        if ($get_follow) {
            $following_status = 1;
        } else {
            $following_status = 0;
        }
        return $following_status;
    }
}