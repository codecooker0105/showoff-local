<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;
use App\User;
class RedirectIfAuthenticated
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @param  string|null  $guard
     * @return mixed
     */
    public function handle($request, Closure $next, $guard = null)
    {
        if (Auth::guard($guard)->check()) {

            if (Auth::user()->hasRole('admin')) {

                return redirect('/admin');
            }
            elseif (Auth::user()->hasRole('merchant')) {

                return redirect('/merchant');
            }
        }
        else{

            return $next($request);
        }

        //return $next($request);


    }
}
