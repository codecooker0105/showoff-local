<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Carbon\Carbon;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/admin';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    protected function authenticated(Request $request, $user)
    {
        $user->update(['last_login_at' => Carbon::now()->toDateTimeString()]);

        if ($user->role_type == 1)
        {
            $this->guard()->logout();

            $request->session()->invalidate();

            return redirect('/login')->with('message', 'You are not eligible for this site.');
        }
        elseif ($user->role_type == 2)
        {
            if ($user->hasRole('admin'))
            {
                return redirect('/admin/users');
            }
            elseif ($user->hasRole('merchant'))
            {
                if ($user->status == 1){
                    return redirect('/merchant');
                }
                else{
                    $this->guard()->logout();

                    $request->session()->invalidate();

                    return redirect('/login')->with('message', 'Merchant is blocked.');
                }

            }
        }
    }

}
