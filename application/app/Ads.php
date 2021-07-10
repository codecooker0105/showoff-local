<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Ads extends Model
{
    public function  getAdsBannerAttribute($value)
    {
        if (file_exists(dirname(base_path()).'/'.$value)===true && $value){
            return url('/').'/'.$value;
        }else{
            return null;
//            return url('/').'/assets/no-image.jpg';
        }

    }
    public function  getCompanyLogoAttribute($value)
    {
        if (file_exists(dirname(base_path()).'/'.$value)===true && $value){
            return url('/').'/'.$value;
        }else{
            return null;
//            return url('/').'/assets/no-image.jpg';
        }

    }
    public function merchant(){

         return $this->hasOne(User::class, 'id', 'merchant_id');
    }



}
