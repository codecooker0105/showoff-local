<?php

namespace App\Http\Controllers\Api;

use App\Device;
use App\Traits\ApiStatusTrait;
use App\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Validator;

class UserController extends Controller
{
    use ApiStatusTrait;

    /*Login function*/
    public function login(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'login' => 'required',
            'password' => 'required',
        ]);

        if ($validator->fails()) {
            $response['message'] = $validator->errors()->first();
            return $this->failureApiResponse($response);
        }

        $login_type = filter_var($request->input('login'), FILTER_VALIDATE_EMAIL) ? 'email' : 'username';
        $request->merge([$login_type => $request->input('login')]);

        if (Auth::attempt([$login_type => request('login'), 'password' => request('password'), 'status' => 1])) {
            $user = Auth::user();
            $user->update(['last_login_at' => Carbon::now()->toDateTimeString()]);
            $response['token'] = 'Bearer ' . $user->createToken($request->device_token)->accessToken;
            $response['user'] = $user->only(['email', 'id']);
            $response['message'] = trans('messages.login');
            return $this->successApiResponse($response);
        } else {
            $response['message'] = "Credentials do not match or you are not active user.";
            return $this->failureApiResponse($response);
        }
    }


    public function register(Request $request)
    {
        $validator = Validator::make($request->all(), [
//            'name' => 'required|max:255',
            'email' => 'required|max:255|email|unique:users,email',
            'username' => 'required|max:255',
//            'username' => 'required|max:255|unique:users,username',
            'password' => array(
                'required',
//                'different:name',
                'min:8',
                'regex:/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).+$/'
            ),
        ], ['password.regex' => trans('messages.password_regex')]);

        if ($validator->fails()) {
            $response['message'] = $validator->errors()->first();
            return $this->failureApiResponse($response);
        }

        $user_info = new User();
        $user_info->name = $request->name;
        $user_info->email = $request->email;
        $user_info->username = $request->username;
        $user_info->password = bcrypt($request->password);
        $user_info->save();

        /*     config( ['mail' => ['from' => ['address' => "system@votcen.com", 'name' => "system@votcen.com"],
                 'driver'=>"smtp",
                 'host'=>"mail.votcen.com" ,
                 'port'=>"587" ,
                 'encryption'=>null ,
                 'username'=>"system@votcen.com" ,
                 'password'=>"Plx520" ,
             ] ] );


             $html="Dear Admin <br> A new user just Registered <br>  Name : ".$request->name."<br> Email : ".$request->email;
             $html.= $request->contact_number ? "<br> Phone : <br> ".$request->contact_number : '';
             $html.= $request->details ? "<br> Details : <br> ".$request->details : '';

             Mail::send([], [], function($message) use ($request,$html)
             {

                 $message->to("eddie@thepointofit.com")
                     ->subject("New User From Votecen App")
                     ->setBody($html, 'text/html');
             });*/


        $user_info->update(['last_login_at' => Carbon::now()->toDateTimeString()]);
        $response['message'] = trans('messages.register');
        $response['token'] = 'Bearer ' . $user_info->createToken($request->device_token)->accessToken;
        $response['user'] = $user_info->only(['email', 'username', 'id']);
        /*     if ($request->device_token){
                 $tokens = new DeviceTokens();
                 $tokens->user_id = $user_info->id;
                 $tokens->device_type = $request->device_type;
                 $tokens->token = $request->device_token;
                 $tokens->save();
             }*/
        // $response['message'] = "Login Successfull";
        return $this->successApiResponse($response);

        //return $this->successApiResponse($response);
    }


    /*change password*/
    public function changePassword(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'password' => array(
                'required',
                'min:8',
                'regex:/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).+$/'
            ),
            'email' => 'required',
            'token' => 'required'
        ], ['password.regex' => trans('messages.password_regex')]);

        if ($validator->fails()) {
            $response['message'] = $validator->errors()->first();
            return $this->failureApiResponse($response);
        } else {
            $user = User::where('email', $request->email)->first();
            if ($user) {

                if ($user->token == $request->token) {
                    Auth::login($user);
                    request()->user()->fill([
                        'password' => Hash::make(request()->input('password'))
                    ])->save();
                    $response['message'] = trans('messages.password_changed');

                    $user->token = null;
                    $user->save();
                    return $this->successApiResponse($response);
                } else {
                    $response['message'] = trans('messages.token_missmatched');
                    return $this->failureApiResponse($response);
                }

            } else {
                $response['message'] = trans('messages.account_not_found');
                return $this->failureApiResponse($response);
            }
        }
    }

    /*Logout*/
    public function logout(Request $request)
    {
        if (Auth::check()) {
            Auth::user()->token()->revoke();
            $response['message'] = "Logout succesfull";
            return $this->successApiResponse($response);
        } else {
            $response['message'] = "Logout succesfull";
            return $this->failureApiResponse($response);
        }
    }

    public function forgotPassword(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required',
        ]);

        if ($validator->fails()) {
            $response['message'] = $validator->errors()->first();
            return $this->failureApiResponse($response);
        } else {
            $user = User::where('email', $request->email)->first();

            if ($user) {
                $token = rand(1111, 9999);
                //dd($token);
                $sendMail = Mail::to($request->email)->send(new \App\Mail\ResetPassword($user->email, $token));
                //dd($sendMail);
                $response['message'] = "Mail has been Sent successfully";
                $user->token = $token;
                $user->save();
                return $this->successApiResponse($response);
            } else {
                $response['message'] = "No Account Found";
                return $this->failureApiResponse($response);
            }
        }
    }

    public function update_fcm_token(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'fcm_token' => 'required',
            'device_id' => 'required',
        ]);

        if ($validator->fails()) {
            $response['message'] = $validator->errors()->first();
            return $this->failureApiResponse($response);
        }

        $device_data = Device::where('user_id', Auth::id())
            ->where('fcm_token', $request->fcm_token)
            ->first();
        if (!$device_data) {
            $device_data = new Device();
            $device_data->user_id = Auth::id();
            $device_data->device_id = $request->device_id;
        }

        $device_data->fcm_token = $request->fcm_token;
        $device_data->save();

        $response['message'] = "fcm token has been updated successfully";
        return $this->successApiResponse($response);
    }

    public function userDetails()
    {

    }
}