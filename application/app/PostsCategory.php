<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class PostsCategory extends Model
{
    use SoftDeletes;
    protected $dates = ['deleted_at'];
    public function posts(){
        return $this->hasMany(Posts::class,'category_id','id');
    }
}
