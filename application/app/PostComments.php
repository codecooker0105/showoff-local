<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PostComments extends Model
{
    public function users(){
        return $this->hasOne(User::class, 'id', 'user_id');
    }
    public function replies()
    {
        return $this->hasMany(PostComments::class, 'parent_id');
    }
    public function liked()
    {
        return $this->hasMany(CommentLike::class, 'comment_id', 'id');
    }
    public function  getCommentFileAttribute($value)
    {
        if (file_exists(dirname(base_path()).'/'.$value)===true && $value){
            return url('/').'/'.$value;
        }else{
            return null;
        }
    }
}
