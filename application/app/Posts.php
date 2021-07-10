<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;

class Posts extends Model
{
    protected $with = ['images'];
    protected $appends = ['ShareUrl'];

    public function comments()
    {
        return $this->hasMany(PostComments::class, 'post_id', 'id');
    }

    public function admin_comments()
    {
        return $this->hasMany(PostComments::class)->where('parent_id', 0);
    }

    public function images()
    {
        return $this->hasMany(PostFiles::class, 'post_id', 'id');
    }

    public function likes()
    {
        return $this->hasMany(PostLikes::class, 'post_id', 'id');
    }

    public function users()
    {
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

    public function likeStatus()
    {
        return $this->hasOne(PostLikes::class, 'post_id', 'id')->where('user_id', Auth::id());
    }

    public function category()
    {
        return $this->belongsTo(PostsCategory::class, 'category_id', 'id');
    }

    public function tags()
    {
        return $this->hasMany(PostTags::class, 'post_id', 'id')->with('users');
    }

    public function reports()
    {
        return $this->hasMany(Reports::class, 'post_id', 'id');
    }

    public function getShareUrlAttribute()
    {
        return url('/timeline') . '/' . $this->id;
    }

    public function getThumbnailUrlAttribute($value)
    {
        if ($value) {
            return $value;
        } else {
            return url('/') . '/assets/no-image.jpg';
        }
    }
}