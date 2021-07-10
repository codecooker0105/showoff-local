<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Danjdewhurst\PassportFacebookLogin\FacebookLoginTrait;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Laravel\Passport\HasApiTokens;
use Zizaco\Entrust\Traits\EntrustUserTrait;

class User extends Authenticatable
{
    use Notifiable,EntrustUserTrait,HasApiTokens;
    use FacebookLoginTrait;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password','last_login_at',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token','last_login_at',
    ];

    public function  getImageUrlAttribute($value)
    {
        if (file_exists(dirname(base_path()).'/'.$value)===true && $value){
            return url('/').'/'.$value;
        }else{
            return null;
//            return url('/').'/assets/no-image.jpg';
        }

    }

    public function ads(){

        return $this->hasMany(Ads::class, 'merchant_id', 'id');
    }

    public function posts(){

        return $this->hasMany(Posts::class, 'user_id', 'id');
    }

    public function feedback(){
        return $this->hasMany(Feedback::class,'user_id', 'id');
    }

    public function follow()
    {
        return $this->hasMany('App\Followers', 'follower_id', 'id');
    }

    public function following()
    {
        return $this->hasMany('App\Followers', 'user_id', 'id');
    }

}
