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

Route::post('/testt', function () {
    return config("app.timezone");
});

Route::middleware('throttle:10,1')->group(function () {
    Route::get('/user2', function () {
         return 'tested';
    });
});

//Route::post('/readMessage', 'Api\ApiController@readMessage');

Route::prefix('v1')->group(function () {
    Route::post('/post', 'Api\ApiController@getMockAllPost2');
});

Route::prefix('v1')->group(function () {
    Route::post('sign-in', [ 'uses'=>'Api\UserController@login','middleware' => 'throttle:60,0.1']);
    Route::post('sign-up', 'Api\UserController@register');
    Route::post('forgot-password', 'Api\UserController@forgotPassword');
    Route::post('password-reset', 'Api\UserController@changePassword');

//    Route::get('sendmessage', 'Api\ApiController@sendmessage');

    Route::group(['middleware' => 'auth:api'], function () {
        /*Posts*/
        Route::get('/common-lists', 'Api\ApiController@getCommonLists');
        Route::post('/create-post', 'Api\ApiController@CreatePost');//not yet
        Route::get('/post', 'Api\ApiController@fetchAllPost');
        Route::post('/post', 'Api\ApiController@getAllPost');
        Route::get('/loyality', 'Api\ApiController@getLoyality');
        Route::post('/search-screen', 'Api\ApiController@searchScreen');

        Route::get('/index', 'Api\ApiController@fetchAllPost');
        Route::get('/post/{id}', 'Api\ApiController@getPost');
        Route::post('/stop-live/{id}', 'Api\ApiController@stopLive');//not yet
        Route::delete('remove/post/{id}', 'Api\ApiController@removePost');
        Route::post('post-comment/{id}', 'Api\ApiController@commentPost');
        Route::get('get-post-likes/{id}', 'Api\ApiController@fetchlikesPost');

        Route::get('get-post-comment/{id}', 'Api\ApiController@fetchcommentPost');
        Route::get('post-like/{id}', 'Api\ApiController@likePost');
        Route::get('comment-like/{id}', 'Api\ApiController@likeComment');
        Route::get('delete-comment/{id}', 'Api\ApiController@deleteComment');
        Route::get('delete-post/{id}', 'Api\ApiController@deletePost');

        Route::post('/contact-us', 'Api\ApiController@ContactUs');
        Route::post('/send-feedback', 'Api\ApiController@FeedBack');
        Route::post('/follow-user', 'Api\ApiController@FollowUser');
        Route::post('/unfollow-user', 'Api\ApiController@UnfollowUser');
        Route::get('/followers', 'Api\ApiController@followers');
        Route::get('/followings', 'Api\ApiController@followings');
        Route::get('/followers/{id}', 'Api\ApiController@followers');
        Route::get('/followings/{id}', 'Api\ApiController@followings');
        Route::get('/get-profile', 'Api\ApiController@getProfile');
        Route::post('/set-profile', 'Api\ApiController@setProfile');
        Route::post('/change-password', 'Api\ApiController@change_password');
        Route::get('/get-user-profile/{id}', 'Api\ApiController@getUserProfile');
        Route::get('/block-user/{id}', 'Api\ApiController@blockUser');
        Route::get('/blocked-users', 'Api\ApiController@blockedUsers');

        Route::get('/get-filter', 'Api\ApiController@getFilter');
        Route::post('/set-filter', 'Api\ApiController@setFilter');

        Route::get('/update-settings', 'Api\ApiController@UpdateSettings');
        Route::post('/users-feed/{cid}', 'Api\ApiController@UserFeed');//not exist
        Route::post('sign-out', 'Api\UserController@logout');
        Route::post('update-fcm-token', 'Api\UserController@update_fcm_token');//not exist
        Route::get('report/{id}', 'Api\ApiController@report');

        /*Stories*/
        Route::post('/create-story', 'Api\ApiController@CreateStory');//not yet
        Route::get('/stories', 'Api\ApiController@getAllStory');

        /*Notifications*/
        Route::get('/get-notifications', 'Api\ApiController@notifications');
        Route::post('/read-notification', 'Api\ApiController@read_notification');
        //Chatting
        Route::post('/sendMessage', 'Api\ApiController@sendMessage');
        Route::get('/channel-list', 'Api\ApiController@channeList');
        Route::get('/get-message-by-channel/{channelName}', 'Api\ApiController@get_message_by_channel');
        //Route::get('/get-message-by-channel1/{channelName}', 'Api\ApiController@get_message_by_channel');
        Route::post('/readMessage', 'Api\ApiController@readMessage');

        //Ads
        Route::get('/get-ads', 'Api\ApiController@adsList');
    });
});

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});