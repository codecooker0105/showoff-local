<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BannerManagement extends Model
{
    public function ads(){

        return $this->hasOne(Ads::class, 'id', 'adv_id');
    }
}
