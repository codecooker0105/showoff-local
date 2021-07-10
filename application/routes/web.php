<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/vid', function () {
    Flavy::thumbnail(base_path('nok.MP4'), base_path('thumb_%d.jpg'), 1);
    });

Route::get('/login', function () {
    $data = array();
    $data['pageTitle'] = 'Login';
    return view('auth.login')->with($data);
});

Route::get('/timeline/{id}', 'Admin\PostController@webView');

Route::get('/', function () {
    return redirect('/login');
});

Route::get('/about_us', 'HomeController@about_us');
Route::get('/privacy_policy', 'HomeController@privacy_policy');
Route::get('/termsandcond', 'HomeController@termsandcond');

//Route::get('/s3-refresh-live','HomeController@s3Live');

//Route::get('/rolecheck','HomeController@rolecheck');

Route::group(['prefix' => 'admin', 'middleware' => ['auth', 'role:admin']], function () {
    /*User's Route*/
    Route::get('/', 'Admin\UserController@index');
    Route::get('/users', 'Admin\UserController@index');
    Route::get('/users/add', 'Admin\UserController@add');
    Route::post('/users/add', 'Admin\UserController@store');
    Route::get('/users/details/{id}', 'Admin\UserController@details');
    Route::get('/users/edit/{id}', 'Admin\UserController@edit');
    Route::post('/users/edit', 'Admin\UserController@update');
    Route::post('/users/delete', 'Admin\UserController@delete');
    Route::post('/users/change-status', 'Admin\UserController@changeStatus');

    /*Merchant's Route*/
    Route::get('/merchants', 'Admin\MerchantController@index');
    Route::get('/merchants/add', 'Admin\MerchantController@add');
    Route::get('/merchants/details/{id}', 'Admin\MerchantController@details');
    Route::get('/merchants/edit/{id}', 'Admin\MerchantController@edit');
    Route::post('/merchants/add/', 'Admin\MerchantController@store');
    Route::post('/merchants/edit/', 'Admin\MerchantController@update');
    Route::post('/merchants/delete', 'Admin\MerchantController@delete');
    Route::post('/merchants/change-status', 'Admin\MerchantController@changeStatus');
    Route::post('/merchants/ads/delete', 'Admin\MerchantController@adsDelete');
    Route::post('/merchants/ads/change-status', 'Admin\MerchantController@changeStatus');

    /*Ads*/
    Route::get('/ads', 'Admin\AdsController@index');
    Route::get('/ads/add', 'Admin\AdsController@add');
    Route::post('/ads/store', 'Admin\AdsController@store');
    Route::get('/ads/details/{id}', 'Admin\AdsController@details');
    Route::post('/ads/delete', 'Admin\AdsController@delete');
    Route::post('/ads/change-status', 'Admin\AdsController@changeStatus');
    Route::get('manage/ads', 'Admin\AdsController@manageAds');
    Route::post('/manage/ads', 'Admin\AdsController@adjustAds');

    Route::get('/ads/edit/{id}', 'Admin\AdsController@edit');
    Route::post('/ads/update', 'Admin\AdsController@update');

    /*Feedback Route*/
    Route::get('/feedbacks', 'Admin\HomeController@feedbackIndex');
    Route::post('/feedbacks/delete', 'Admin\HomeController@feedbackDelete');

    /*Post Route*/
    Route::get('/posts', 'Admin\PostController@index');
    Route::get('/posts/details/{id}', 'Admin\PostController@details');
    Route::get('/posts/filter/', 'Admin\PostController@filter');
    Route::post('/posts/active-status', 'Admin\PostController@activeStatus');
    Route::post('/posts/block-status', 'Admin\PostController@blockStatus');
    Route::post('/posts/delete', 'Admin\PostController@delete');
    Route::get('/posts/delete-from-detail/{id}', 'Admin\PostController@deleteFromDetail');
    Route::post('/post-comment/delete', 'Admin\PostController@commentDelete');

    /*Stories Route*/
    Route::get('/stories', 'Admin\StoryController@index');
    Route::post('/story_delete', 'Admin\StoryController@delete');
    Route::get('/story/{id}', 'Admin\StoryController@show');

    /*Admin's Route*/
    Route::get('/staffs', 'Admin\AdminController@index');
    Route::get('/staffs/add', 'Admin\AdminController@add');
    Route::post('/staffs/add', 'Admin\AdminController@store');
    Route::get('/staffs/details/{id}', 'Admin\AdminController@details');
    Route::get('/staffs/edit/{id}', 'Admin\AdminController@edit');
    Route::post('/staffs/edit', 'Admin\AdminController@update');
    Route::post('/staffs/delete', 'Admin\AdminController@delete');

    /*Categories*/
    Route::resource('/category', 'Admin\CategoryController');
    Route::post('/category_delete', 'Admin\CategoryController@delete');

    /*Report*/
    Route::get('/reports', 'Admin\ReportController@index');
    Route::post('/report_delete', 'Admin\ReportController@delete');
    //Settings
    Route::get('/general-settings', 'Admin\AdminController@general_settings');
    Route::post('settings/update', 'Admin\AdminController@general_settings_update');
});

Route::group(['prefix' => 'merchant', 'middleware' => ['auth', 'role:merchant']], function () {
    Route::get('/', 'Merchant\HomeController@index');
    /*Ads route*/
    Route::get('/ads', 'Merchant\AdsController@index');
    Route::get('/ads/add', 'Merchant\AdsController@add');
    Route::get('/ads/details/{id}', 'Merchant\AdsController@details');
    Route::get('/ads/edit/{id}', 'Merchant\AdsController@edit');
    Route::post('/ads/store', 'Merchant\AdsController@store');
    Route::post('/ads/delete', 'Merchant\AdsController@delete');
    Route::post('/ads/change-status', 'Merchant\AdsController@changeStatus');
    Route::get('/ads/edit/{id}', 'Admin\AdsController@edit');
    Route::post('/ads/update', 'Admin\AdsController@update');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

//update ui
Route::get('/posts', function () {
    $data = array();
    $data['pageTitle'] = 'Posts';
    $data['posts'] = 'm-menu__item--active';
    return view('posts.posts')->with($data);
});
Route::get('/posts/details-12', function () {
    $data = array();
    $data['pageTitle'] = 'Post Details'; // please use post title
    $data['posts'] = 'm-menu__item--active';
    return view('posts.details')->with($data);
});
Route::get('/posts/details-10', function () {
    $data = array();
    $data['pageTitle'] = 'Post Details'; // please use post title
    $data['posts'] = 'm-menu__item--active';
    return view('posts.details_video')->with($data);
});
Route::get('/posts/details-11', function () {
    $data = array();
    $data['pageTitle'] = 'Post Details'; // please use post title
    $data['posts'] = 'm-menu__item--active';
    return view('posts.details_blocked')->with($data);
});

/*Ads*/
/*Route::get('/ads', function () {
    $data = array();
    $data['pageTitle'] = 'Ads';
    $data['ads'] = 'm-menu__item--open m-menu__item--expanded';
    $data['ad_list'] = 'm-menu__item--active';
    return view('ads.ads')->with($data);
});

Route::get('/ads/details-12', function () {
    $data = array();
    $data['pageTitle'] = 'Ad Details'; // please use user name
    $data['ads'] = 'm-menu__item--open m-menu__item--expanded';
    $data['ad_list'] = 'm-menu__item--active';
    return view('ads.details')->with($data);
});

Route::get('/ads/add', function () {
    $data = array();
    $data['pageTitle'] = 'Add New Ad'; // please use user name
    $data['ads'] = 'm-menu__item--open m-menu__item--expanded';
    $data['add_ad'] = 'm-menu__item--active';
    return view('ads.add')->with($data);
});

Route::get('/feedback', function () {
    $data = array();
    $data['pageTitle'] = 'Feedback';
    $data['feedback'] = 'm-menu__item--active';
    return view('feedback.feedback')->with($data);
});

Route::get('/users', function () {
    $data = array();
    $data['pageTitle'] = 'Users';
    $data['users'] = 'm-menu__item--open m-menu__item--expanded';
    $data['user_list'] = 'm-menu__item--active';
    return view('users.users')->with($data);
});

Route::get('/users/details-12', function () {
    $data = array();
    $data['pageTitle'] = 'User Details'; // please use user name
    $data['users'] = 'm-menu__item--open m-menu__item--expanded';
    $data['user_list'] = 'm-menu__item--active';
    return view('users.details')->with($data);
});

Route::get('/users/add', function () {
    $data = array();
    $data['pageTitle'] = 'Add New User'; // please use user name
    $data['users'] = 'm-menu__item--open m-menu__item--expanded';
    $data['add_user'] = 'm-menu__item--active';
    return view('users.add')->with($data);
});*/


/*Route::get('/merchants', function () {
    $data = array();
    $data['pageTitle'] = 'Merchants';
    $data['merchants'] = 'm-menu__item--open m-menu__item--expanded';
    $data['merchant_list'] = 'm-menu__item--active';
    return view('merchants.merchants')->with($data);
});

Route::get('/merchants/details-12', function () {
    $data = array();
    $data['pageTitle'] = 'Merchant Details'; // please use user name
    $data['merchants'] = 'm-menu__item--open m-menu__item--expanded';
    $data['merchant_list'] = 'm-menu__item--active';
    return view('merchants.details')->with($data);
});

Route::get('/merchants/add', function () {
    $data = array();
    $data['pageTitle'] = 'Add New Merchant'; // please use user name
    $data['merchants'] = 'm-menu__item--open m-menu__item--expanded';
    $data['add_merchant'] = 'm-menu__item--active';
    return view('merchants.add')->with($data);
});*/