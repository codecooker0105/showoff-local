<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/


Route::get('/test', function () {
    return json_encode(['test'=>'success']);
});

Route::middleware('throttle:10,1')->group(function () {
    Route::get('/user2', function () {
        return 'tested';
    });
});

/*Route::prefix('v1')->group(function () {
    Route::post('/post', 'Api\ApiController@getMockAllPost2');
});*/

Route::prefix('v2')->group(function () {
    Route::post('sign-in', [ 'uses'=>'Api\UserController@login','middleware' => 'throttle:60,0.1']);
    Route::post('sign-up', 'Api\UserController@register');
    Route::post('forgot-password', 'Api\UserController@forgotPassword');
    Route::post('password-reset', 'Api\UserController@changePassword');

    Route::group(['middleware' => 'auth:api'], function () {
        /*Posts*/
        Route::post('/create-post', 'Api\ApiController@CreatePost');
        Route::get('/post', 'Api\ApiController@getAllPost');
        Route::post('/post', 'Api\ApiController@getMockAllPost2');

        Route::get('/loyality', 'Api\ApiController@getLoyality');
        Route::get('/index', 'Api\ApiController@fetchAllPost');
        Route::get('/post/{id}', 'Api\ApiController@getPost');
        Route::post('/stop-live/{id}', 'Api\ApiController@stopLive');
        Route::delete('remove/post/{id}', 'Api\ApiController@removePost');
        Route::post('post-comment/{id}', 'Api\ApiController@commentPost');
        Route::get('get-post-likes/{id}', 'Api\ApiController@fetchlikesPost');

        Route::get('get-post-comment/{id}', 'Api\ApiController@fetchcommentPost');
        Route::post('post-like/{id}', 'Api\ApiController@likePost');

        Route::post('/contact-us', 'Api\ApiController@ContactUs');
        Route::post('/send-feedback', 'Api\ApiController@FeedBack');
        Route::post('/follow-user', 'Api\ApiController@FollowUser');
        Route::post('/unfollow-user', 'Api\ApiController@UnfollowUser');
        Route::get('/followers', 'Api\ApiController@followers');
        Route::get('/followings', 'Api\ApiController@followings');
        Route::get('/followers/{id}', 'Api\ApiController@followers');
        Route::get('/followings/{id}', 'Api\ApiController@followings');
        Route::get('/get-profle', 'Api\ApiController@getProfile');
        Route::post('/set-profle', 'Api\ApiController@setProfile');
        Route::get('/get-user-profle/{id}', 'Api\ApiController@getUserProfile');

        Route::get('/get-filter', 'Api\ApiController@getFilter');
        Route::post('/set-filter', 'Api\ApiController@setFilter');

        Route::get('/update-settings', 'Api\ApiController@UpdateSettings');
        Route::post('/users-feed/{cid}', 'Api\ApiController@UserFeed');
        Route::post('sign-out', 'Api\UserController@logout');
        Route::post('update-fcm-token', 'Api\UserController@update_fcm_token');
    });
});


Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
