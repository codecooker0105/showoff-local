<?php

namespace App\Http\Controllers\Api;

use App\Ads;
use App\BannerManagement;
use App\BlockedUser;
use App\Channel;
use App\Chatting;
use App\CommentLike;
use App\CommonSettings;
use App\ContactUs;
use App\Device;
use App\Events\MessageSent;
use App\Jobs\ExpireStory;
use App\Notification;
use App\PostFiles;
use App\PostsCategory;
use App\PostTags;
use App\Feedbacks;
use App\FilterSetting;
use App\Followers;
use App\PostComments;
use App\PostLikes;
use App\Posts;
use App\PrivacyPolicy;
use App\PushNotification;
use App\Reports;
use App\Stories;
use App\StoryFiles;
use App\Traits\ApiStatusTrait;
use App\Traits\NotificationTrait;
use App\User;
use Carbon\Carbon;
use Folour\Flavy\Exceptions\CmdException;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use Folour\Flavy\FlavyFacade as Flavy;
use mysql_xdevapi\Exception;
use OpenTok\ArchiveMode;
use OpenTok\MediaMode;
use OpenTok\OpenTok;
use Intervention\Image\ImageManagerStatic as Image;
use SebastianBergmann\CodeCoverage\Report\Xml\Report;

class ApiController extends Controller
{
    use ApiStatusTrait, NotificationTrait;

    public function __construct()
    {
        $this->basedir = dirname(base_path()) . ('/assets/');
    }

    public $comment_ids = array();

    /*Create Post*/
    public function CreatePost(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'type' => 'required',
            'post_file' => 'required_if:type,==,1|required_if:type,==,2'
        ]);

        if ($validator->fails()) {
            $response['message'] = $validator->errors()->first();
            return $this->failureApiResponse($response);
        }
        $post_files = $request->file('post_file');

        $new_post = new Posts();
        $new_post->user_id = Auth::id();
        $new_post->type = $request->type;
        $new_post->post_text = $request->post_text;
        $new_post->location = $request->location;
        $new_post->latitude = $request->latitude;
        $new_post->longitudes = $request->longitudes;
        $new_post->category_id = $request->category_id;
        $new_post->save();
        if (count($post_files)) {
            
            foreach ($post_files as $key => $post_file) {
                $user_id = Auth::id(); // user id
                
                $image = $post_file; //image call from request
                $imageName = time() . $image->getClientOriginalName(); //get image original name
                $imageName = preg_replace('/\s+/', '', $imageName);
                $uploadPath = 'assets/post_resource/' . $user_id . '/'; //upload path in variable
                $image->move($uploadPath, $imageName); //image move into the directory

                $image_url = $uploadPath . $imageName; //concrete image url

                if ($key == "0") {
                    $new_post->file_path = $image_url;
                    $new_post->reference_url =  $image_url; // image url upload in database

                    if ($request->type == '2') {
                        try {
                            $tempname = $user_id . time() . 'thumb.jpg';
                            $temppath = public_path('tempfiles/' . $tempname);
                            Flavy::thumbnail($image_url, $temppath, 1);
                            $video_thumb__url = $uploadPath . $tempname;
                            file_put_contents($video_thumb__url,file_get_contents($temppath));
                            $new_post->thumbnail_url = $video_thumb__url;
                            unlink($temppath);
                        } catch (CmdException $exception) {
                            $response['thumnail'] = "failed for iphone";
                        }
                    }

                } else {
                    $new_files = new PostFiles();
                    $new_files->post_id = $new_post->id;
                    $new_files->type = 1;
                    $new_files->file_path = $image_url;
                    $new_files->reference_url = $image_url; // image url upload in database
                    $new_files->save();
                }
            }
        }
        $devices = Device::where('user_id', Auth::id())
            ->whereNotNull('fcm_token')
            ->pluck('fcm_token');

        $msg = "Post Created";
        // PushNotification::sentpush("driver_location", null,$msg, $devices);

        $new_post->save();

        if ($request->tag_friends) {
            $tag_friends = json_decode($request->tag_friends);
            foreach ($tag_friends as $tag_friend) {
                $post_tag = new PostTags();
                $post_tag->post_id = $new_post->id;
                $post_tag->user_id = $tag_friend;
                $post_tag->save();
            }
        }

        $response['post'] = $new_post;
        $response['message'] = trans('messages.post_create');
        return $this->successApiResponse($response);

    }

    /*Fetch Post*/
    public function getPost($id)
    {
        $new_post = Posts::with(['comments', 'tags', 'likes', 'category'])
            ->withCount(['comments' => function ($q) {
                $q->with('users');
            }, 'likes'])
            ->find($id);
        $response['post'] = $new_post;
        return $this->successApiResponse($response);
    }

    /*Fetch All Post*/
    public function fetchAllPost(Request $request)
    {
        //$response['add_lists'] = Ads::with('merchant')->get();
        $new_post = Posts::with(['users', 'comments', 'category'])
            ->withCount(['comments', 'likes', 'likeStatus as like_status'])
            ->doesnthave('blocked_user')
            ->doesnthave('block_by_user')
            ->orderBy('id', 'desc')
            ->paginate(10);

        $new_post->map(function ($post) {
            $get_follow = Followers::where('follower_id', $post->user_id)->where('user_id', Auth::id())->exists();
            if ($get_follow) {
                $post->following_status = 1;
            } else {
                $post->following_status = 0;
            }
        });
        $category_post = PostsCategory::with(['posts' => function ($q) {
            $q->with('comments', 'category')->withCount(['comments', 'likes']);
        }])->get();
        // $response['category_post'] = $category_post;
        $response['post'] = $new_post;
        return $this->successApiResponse($response);
    }

    /*Search Screen*/
    public function searchScreen(Request $request)
    {
        $new_post = Posts::where(function ($q) use ($request) {
            if ($request->category_id) {
                $q->where('category_id', $request->category_id);
            }
        })->where(function ($qq) use ($request) {
            if ($request->search_string) {
                $qq->where('post_text', "like", "%$request->search_string%")
                    ->orWhere('location', "like", "%$request->search_string%")
                    ->orWhereHas('users', function ($subquery) use ($request) {
                        $subquery->where('username', "like", "%$request->search_string%");
                    });
            }
        })->with('users', 'comments', 'category')
            ->doesnthave('blocked_user')
            ->doesnthave('block_by_user')
            ->withCount(['comments', 'likes', 'likeStatus as like_status'])
            ->orderBy('id', 'desc')
            ->paginate(10);

        $new_post->map(function ($post) {
            $get_follow = Followers::where('follower_id', $post->user_id)->where('user_id', Auth::id())->exists();
            if ($get_follow) {
                $post->following_status = 1;
            } else {
                $post->following_status = 0;
            }
        });
        $response['post'] = $new_post;
        return $this->successApiResponse($response);
    }

    /*get Common Lists*/
    public function getCommonLists()
    {
        $category_post = PostsCategory::withCount('posts')->get();
        $common_settings = CommonSettings::find(1);
        $response['category_lists'] = $category_post;
        $response['common_settings'] = $common_settings;
        return $this->successApiResponse($response);
    }

    /*Fetch Post*/
    public function getAllPost(Request $request)
    {
        $banners = BannerManagement::pluck('adv_id')->toArray();

        if ($banners) {
            $ids_ordered = implode(',', $banners);
            $response['add_lists'] = Ads::with('merchant')
                ->whereIn('id', $banners)
                ->orderByRaw(DB::raw("FIELD(id, $ids_ordered)"))
                ->get();
        } else {
            $response['add_lists'] = Ads::with('merchant')->limit(5)->get();
        }
        $filter = FilterSetting::whereUserId(Auth::id())->first();
        if ($filter) {
            if ($filter->liked == "1") {
                $request->sort_by = 1;
            }

        }

        if ($request->sort_by == "1") {

            $new_posts = Posts::with(['comments' => function ($q) {
                $q->with('users');
            }, 'likes', 'tags'])
                ->with('users')
                ->withCount(['comments', 'likes'])
                ->doesnthave('blocked_user')
                ->doesnthave('block_by_user')
                ->orderBy('likes_count', 'desc')
                ->get();

        } elseif ($request->sort_by == "2") {
            $new_posts = Posts::with(['comments' => function ($q) {
                $q->with('users');
            }, 'likes', 'tags'])
                ->with('users')
                ->withCount(['comments', 'likes'])
                ->doesnthave('blocked_user')
                ->doesnthave('block_by_user')
                ->orderBy('crowd_count', 'desc')
                ->get();
        } elseif ($request->sort_by == "3") {
            $new_posts = Posts::with(['comments' => function ($q) {
                $q->with('users');
            }, 'likes', 'tags'])
                ->with('users')
                ->withCount(['comments', 'likes'])
                ->doesnthave('blocked_user')
                ->doesnthave('block_by_user')
                ->orderBy('fun_count', 'desc')
                ->get();
        } else {
            $new_posts = Posts::with(['comments' => function ($q) {
                $q->with('users');
            }, 'likes', 'tags'])
                ->with('users')
                ->withCount(['comments', 'likes'])
                ->doesnthave('blocked_user')
                ->doesnthave('block_by_user')
                ->orderBy('created_at', 'desc')
                ->get();
        }

        $apiKey = '46254272';
        $apiSecret = '7499c79ac2747b08d7dbd99e659074ac9b0a4112';
        $opentok = new OpenTok($apiKey, $apiSecret);
        $archiveList = $opentok->listArchives();
        $items = collect($archiveList->getItems());

        foreach ($new_posts as $new_post) {

            if ($new_post->type == "3" && $new_post->opentok_s3 == null) {
                $session = $new_post->opentok_session;
                $inPages = $items->filter(function ($collection) use ($session) {
                    if ($collection->sessionId == $session) {
                        return $collection;
                    }
                });
                $stop_object = $inPages->first();
                if ($stop_object) {
                    $new_post->opentok_s3 = $stop_object->url;
                    $new_post->save();
                }
            }

            $new_post->follow_status = 0;
            $new_post->like_status = 0;

            if ($new_post->likes->contains('user_id', Auth::id())) {
                $new_post->like_status = 1;
            }
            if ($new_post->user_id == Auth::id()) {
                $new_post->follow_status = 1;
            } else {
                $follow = Followers::where('user_id', Auth::id())
                    ->where('follower_id', $new_post->user_id)
                    ->exists();
                if ($follow) {
                    $new_post->follow_status = 1;
                }
            }
        }
        $response['post'] = $new_posts;
        return $this->successApiResponse($response);
    }

    /*Story Section*/
    public function CreateStory(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'type' => 'required',
            'story_file' => 'required_if:type,==,1|required_if:type,==,2'
        ]);
        if ($validator->fails()) {
            $response['message'] = $validator->errors()->first();
            return $this->failureApiResponse($response);
        }
        $story_files = $request->file('story_file');
        $new_story = new Stories();
        $new_story->user_id = Auth::id();
        $new_story->type = $request->type;
        $new_story->save();
        if (count($story_files)) {
            foreach ($story_files as $key => $story_file) {
                $user_id = Auth::id(); // user id
                $image = $story_file; //image call from request
                $imageName = time() . $image->getClientOriginalName(); //get image original name
                $imageName = preg_replace('/\s+/', '', $imageName);
                $uploadPath = 'assets/post_resource/' . $user_id . '/'; //upload path in variable
                $image->move($uploadPath, $imageName); //image move into the directory
                
                $image_url = $uploadPath . $imageName; //concrete image url

                if ($key == "0") {
                    $new_story->file_path = $image_url;
                    $new_story->reference_url = $image_url; // image url upload in database

                    if ($request->type == '2') {
                        try {
                            $tempname = $user_id . time() . 'thumb.jpg';
                            $temppath = public_path('tempfiles/' . $tempname);
                            Flavy::thumbnail($image_url, $temppath, 1);
                            $video_thumb__url = $uploadPath . $tempname;
                            file_put_contents($video_thumb__url,file_get_contents($temppath));
                            $new_story->thumbnail_url = $video_thumb__url;
                            unlink($temppath);
                        } catch (CmdException $exception) {
                            $response['thumnail'] = "failed for iphone";
                        }
                    }
                } else {
                    $new_files = new StoryFiles();
                    $new_files->story_id = $new_story->id;
                    $new_files->type = 1;
                    $new_files->file_path = $image_url;
                    $new_files->reference_url = $image_url; // image url upload in database
                    $new_files->save();
                }
            }
        }
        $devices = Device::where('user_id', Auth::id())
            ->whereNotNull('fcm_token')
            ->pluck('fcm_token');
        $msg = "Story Created";
        // PushNotification::sentpush("driver_location", null,$msg, $devices);
        $new_story->save();

        //JOB QUEUE
        $payload = [
            'story_id' => $new_story->id,
        ];
        ExpireStory::dispatch($payload)->delay(86400);//86400 SECONDS

        $response['story'] = $new_story;
        $response['message'] = trans('messages.story_create');
        return $this->successApiResponse($response);

    }

    public function getAllStory()
    {
        $story = Stories::with(['images', 'users'])
            ->where('status', 1)
            ->doesnthave('blocked_user')
            ->doesnthave('block_by_user')
            ->orderBy('id', 'desc')
            ->get();
        $response['story'] = $story;
        return $this->successApiResponse($response);
    }

    function distance($a, $b)
    {

        list($lat1, $lon1) = $a;
        list($lat2, $lon2) = $b;
        $theta = $lon1 - $lon2;
        $dist = sin(deg2rad($lat1)) * sin(deg2rad($lat2)) + cos(deg2rad($lat1)) * cos(deg2rad($lat2)) * cos(deg2rad($theta));
        $dist = acos($dist);
        $dist = rad2deg($dist);
        $miles = $dist * 60 * 1.1515;

        return [$a[2] => $miles];
    }


    /*Fetch Post*/
    public function getMockAllPost(Request $request)
    {
        $banners = BannerManagement::pluck('adv_id')->toArray();

        $ref = array($request->latitude, $request->longitudes);


        if ($banners) {
            $ids_ordered = implode(',', $banners);
            $response['add_lists'] = Ads::with('merchant')
                ->whereIn('id', $banners)
                ->orderByRaw(DB::raw("FIELD(id, $ids_ordered)"))
                ->get();
        } else {
            $response['add_lists'] = Ads::with('merchant')->limit(5)->get();
        }
        $filter = FilterSetting::whereUserId(Auth::id())->first();
        $set_filter = false;
        if ($filter) {
            if ($filter->liked == "1" || $filter->nearest == "1"
                || $filter->most_recent == "1" || $filter->following == "1"
                || $filter->comments == "1" || $filter->crowded == "1"
                || $filter->fun_limit == "1" || $filter->quiet == "1"
                || $filter->last_twenty_four == "1" || $filter->last_forty_eight == "1"
            ) {
                $set_filter = true;
            }

            if ($filter->liked == "1") {
                $request->sort_by = 1;
            }

            if ($filter->nearest == "1") {
                $request->sort_by = 4;
            }
            if ($filter->most_recent == "1") {
                $request->sort_by = 5;
            }
            if ($filter->following == "1") {
                $request->sort_by = 6;
            }

        }

        $new_posts = Posts::with(['comments' => function ($q) {
            $q->with('users');
        }, 'likes' => function ($q) {
            $q->with('users');
        }, 'tags'])
            ->with('users')
            ->doesnthave('blocked_user')
            ->doesnthave('block_by_user')
            ->withCount(['comments', 'likes']);

        if (!$filter) {
            $new_posts = $new_posts
                ->orderBy('created_at', 'desc');
        }

        if (@$filter->liked == "1") {

            $new_posts = $new_posts
                ->orderBy('likes_count', 'desc');

        } elseif (@$filter->comments == "1") {

            $new_posts = $new_posts
                ->orderBy('comments_count', 'desc');

        } elseif (@$filter->crowded == "1") {
            $new_posts = $new_posts
                ->orderBy('crowd_count', 'desc');
        } elseif (@$filter->fun_limit == "1") {
            $new_posts = $new_posts
                ->orderBy('fun_count', 'desc');

        } elseif (@$filter->most_recent == "1") {
            $new_posts = $new_posts
                ->orderBy('created_at', 'desc');
        } elseif (@$filter->quiet == "1") {
            $new_posts = $new_posts
                ->orderBy('crowd_count', 'asc');
        } /*nearest*/
        elseif (@$filter->nearest == "1") {

            $all_posts = Posts::whereNotNull('longitudes')
                ->where('longitudes', '!=', 'null')
                ->whereNotNull('latitude')
                ->doesnthave('blocked_user')
                ->doesnthave('block_by_user')
                ->where('latitude', '!=', 'null')
                ->select('id', 'longitudes', 'latitude')
                ->get()
                ->toArray();


            $distances = array_map(function ($item) use ($ref) {

                $a[0] = $item['latitude'];
                $a[1] = $item['longitudes'];
                $a[2] = $item['id'];

                return $this->distance($a, $ref);
            }, $all_posts);

            asort($distances);

            $sorted = [];
            foreach ($distances as $key => $distance) {
                $sorted[key($distance)] = $distance[key($distance)];

            }
            asort($sorted);
            $ids_ordered = implode(',', array_keys($sorted));


            $new_posts = $new_posts
                ->whereIn('id', array_keys($sorted))
                ->orderByRaw(DB::raw("FIELD(id, $ids_ordered)"));

        } else {
            $new_posts = $new_posts
                ->orderBy('created_at', 'desc');
        }
        if (@$filter->following == "1") {
            $follow = Followers::where('user_id', Auth::id())
                ->pluck('follower_id');

            $new_posts = $new_posts
                ->whereIn('user_id', $follow);

        }
        //dd(Carbon::now()->subHours(48));
        if (@$filter->last_twenty_four == "1") {


            $new_posts = $new_posts
                ->whereBetween('created_at', [Carbon::now()->subHours(24), Carbon::now()]);

        }

        //dd(Carbon::now()->sub(2));
        if (@$filter->last_forty_eight == "1") {


            $new_posts = $new_posts
                ->whereBetween('created_at', [Carbon::now()->subHours(48), Carbon::now()]);

        }

        /*else{
            $new_posts = $new_posts
                ->orderBy('created_at','desc')
            ;
        }*/


        $apiKey = '46254272';
        $apiSecret = '7499c79ac2747b08d7dbd99e659074ac9b0a4112';
        $opentok = new OpenTok($apiKey, $apiSecret);
        $archiveList = $opentok->listArchives();
        $items = collect($archiveList->getItems());
        $new_posts = $new_posts->get();
        foreach ($new_posts as $new_post) {


            if ($new_post->type == "3") {
                $session = $new_post->opentok_session;
                $inPages = $items->filter(function ($collection) use ($session) {
                    if ($collection->sessionId == $session) {
                        return $collection;
                    }

                });
                $stop_object = $inPages->first();
                if ($stop_object) {
                    $new_post->opentok_s3 = $stop_object->url;

                    $new_post->save();

                }
            }


            $new_post->follow_status = 0;
            $new_post->like_status = 0;

            if ($new_post->likes->contains('user_id', Auth::id())) {
                $new_post->like_status = 1;
            }
            if ($new_post->user_id == Auth::id()) {
                $new_post->follow_status = 1;
            } else {
                $follow = Followers::where('user_id', Auth::id())
                    ->where('follower_id', $new_post->user_id)
                    ->exists();

                if ($follow) {
                    $new_post->follow_status = 1;
                }
            }

        }
        /*     $subset = $new_posts->map(function ($new_posts) {
                 return collect($new_posts->toArray())
                     ->only(['id', 'crowd_count'])
                     ->all();
             });
             return $subset;*/
        $response['post'] = $new_posts;
        $response['set_filter'] = $set_filter;
        return $this->successApiResponse($response);

    } /*Fetch Post*/

    public function getMockAllPost2(Request $request)
    {
        $banners = BannerManagement::pluck('adv_id')->toArray();

        $ref = array($request->latitude, $request->longitudes);


        if ($banners) {
            $ids_ordered = implode(',', $banners);
            $response['add_lists'] = Ads::with('merchant')
                ->whereIn('id', $banners)
                ->orderByRaw(DB::raw("FIELD(id, $ids_ordered)"))
                ->get();
        } else {
            $response['add_lists'] = Ads::with('merchant')->limit(5)->get();
        }
        $filter = FilterSetting::whereUserId(Auth::id())->first();
        $set_filter = false;
        if ($filter) {
            if ($filter->liked == "1" || $filter->nearest == "1"
                || $filter->most_recent == "1" || $filter->following == "1"
                || $filter->comments == "1" || $filter->crowded == "1"
                || $filter->fun_limit == "1" || $filter->quiet == "1"
                || $filter->last_twenty_four == "1" || $filter->last_forty_eight == "1"
            ) {
                $set_filter = true;
            }

            if ($filter->liked == "1") {
                $request->sort_by = 1;
            }

            if ($filter->nearest == "1") {
                $request->sort_by = 4;
            }
            if ($filter->most_recent == "1") {
                $request->sort_by = 5;
            }
            if ($filter->following == "1") {
                $request->sort_by = 6;
            }

        }

        $new_posts = Posts::with(['comments' => function ($q) {
            $q->with('users');
        }, 'likes' => function ($q) {
            $q->with('users');
        }, 'tags'])
            ->with('users')
            ->doesnthave('blocked_user')
            ->doesnthave('block_by_user')
            ->withCount(['comments', 'likes']);
        $set_filter_any = false;
        if (!$filter) {
            $new_posts = $new_posts
                ->orderBy('created_at', 'desc');
        } else {
            if (@$filter->nearest == "1") {
                $set_filter_any = true;
            }

            /* $new_posts = $new_posts->where(function ($q) use ($filter,$ref){*/
            if (@$filter->nearest == "1") {

                $all_posts = Posts::whereNotNull('longitudes')
                    ->where('longitudes', '!=', 'null')
                    ->whereNotNull('latitude')
                    ->doesnthave('blocked_user')
                    ->doesnthave('block_by_user')
                    ->where('latitude', '!=', 'null')
                    ->select('id', 'longitudes', 'latitude')
                    ->get()
                    ->toArray();
                $distances = array_map(function ($item) use ($ref) {

                    $a[0] = $item['latitude'];
                    $a[1] = $item['longitudes'];
                    $a[2] = $item['id'];

                    return $this->distance($a, $ref);
                }, $all_posts);

                asort($distances);

                $sorted = [];
                foreach ($distances as $key => $distance) {
                    $sorted[key($distance)] = $distance[key($distance)];

                }
                asort($sorted);
                $ids_ordered = implode(',', array_keys($sorted));
                $new_posts->whereIn('id', array_keys($sorted))
                    ->orderByRaw(DB::raw("FIELD(id, $ids_ordered)"));


            }

            /*    $new_posts = $new_posts
                    ->orderBy('created_at','desc')
                ;*/
        }


        if (@$filter->following == "1") {
            $set_filter_any = true;
            $follow = Followers::where('user_id', Auth::id())
                ->pluck('follower_id');

            $new_posts = $new_posts
                ->whereIn('user_id', $follow);

        }
        //dd(Carbon::now()->subHours(48));
        if (@$filter->last_twenty_four == "1") {

            $set_filter_any = true;
            $new_posts = $new_posts
                ->whereBetween('created_at', [Carbon::now()->subHours(24), Carbon::now()]);

        }

        //dd(Carbon::now()->sub(2));
        if (@$filter->last_forty_eight == "1") {

            $set_filter_any = true;
            $new_posts = $new_posts
                ->whereBetween('created_at', [Carbon::now()->subHours(48), Carbon::now()]);

        }

        /*else{
            $new_posts = $new_posts
                ->orderBy('created_at','desc')

            ;

        }*/


        $apiKey = '46254272';
        $apiSecret = '7499c79ac2747b08d7dbd99e659074ac9b0a4112';
        $opentok = new OpenTok($apiKey, $apiSecret);
        $archiveList = $opentok->listArchives();
        $items = collect($archiveList->getItems());
        $new_posts = $new_posts->get();


        if (@$filter->liked == "1") {
            $set_filter_any = true;
            $new_posts = $new_posts->sortByDesc('likes_count');
        }
        if (@$filter->comments == "1") {
            $set_filter_any = true;
            $new_posts = $new_posts->sortByDesc('comments_count');
        }
        if (@$filter->crowded == "1") {
            $set_filter_any = true;
            $new_posts = $new_posts->sortByDesc('crowd_count');
        }
        if (@$filter->fun_limit == "1") {
            $set_filter_any = true;
            $new_posts = $new_posts->sortByDesc('fun_count');
        }
        if (@$filter->most_recent == "1") {
            $set_filter_any = true;
            $new_posts = $new_posts->sortByDesc('created_at');
        }
        if (@$filter->quiet == "1") {

            $set_filter_any = true;
            $new_posts = $new_posts->sortBy('crowd_count');
        }

        if ($set_filter_any == false) {

            $new_posts = $new_posts->sortByDesc('created_at');
        }

        foreach ($new_posts as $new_post) {


            if ($new_post->type == "3") {
                $session = $new_post->opentok_session;
                $inPages = $items->filter(function ($collection) use ($session) {
                    if ($collection->sessionId == $session) {
                        return $collection;
                    }

                });
                $stop_object = $inPages->first();
                if ($stop_object) {
                    $new_post->opentok_s3 = $stop_object->url;

                    $new_post->save();

                }
            }


            $new_post->follow_status = 0;
            $new_post->like_status = 0;

            if ($new_post->likes->contains('user_id', Auth::id())) {
                $new_post->like_status = 1;
            }
            if ($new_post->user_id == Auth::id()) {
                $new_post->follow_status = 1;
            } else {
                $follow = Followers::where('user_id', Auth::id())
                    ->where('follower_id', $new_post->user_id)
                    ->exists();

                if ($follow) {
                    $new_post->follow_status = 1;
                }
            }

        }
        /*     $subset = $new_posts->map(function ($new_posts) {
                 return collect($new_posts->toArray())
                     ->only(['id', 'crowd_count'])
                     ->all();
             });
             return $subset;*/

        $response['post'] = @$new_posts->values()->all();
        $response['set_filter'] = $set_filter;
        return $this->successApiResponse($response);

    }

    /*Fetch Loyality*/
    public function getLoyality()
    {
        $banners = BannerManagement::pluck('adv_id')->toArray();


        if ($banners) {
            $ids_ordered = implode(',', $banners);
            $response['add_lists'] = Ads::with('merchant')
                ->whereIn('id', $banners)
                ->orderByRaw(DB::raw("FIELD(id, $ids_ordered)"))
                ->get();
        } else {
            $response['add_lists'] = Ads::with('merchant')
                ->limit(5)
                ->get();
        }
        $response['loyality_lists'] = Ads::with('merchant')
            ->get();
        return $this->successApiResponse($response);

    }

    /*Remove Post*/
    public function removePost($id)
    {

        $new_post = Posts::find($id);
        if ($new_post) {
            if (file_exists($new_post->file_path)) {
                unlink($new_post->file_path);
            }
            $new_post->delete();
        }

        $response['message'] = trans('messages.post_removed');
        return $this->successApiResponse($response);
    }

    /*Comment Post*/
    public function commentPost($id, Request $request)
    {
        $validator = Validator::make($request->all(), [
            'comment' => 'required_without:comment_file',
        ]);
        if ($validator->fails()) {
            $response['message'] = $validator->errors()->first();
            return $this->failureApiResponse($response);
        }

        $new_comment = new PostComments();
        $new_comment->user_id = Auth::id();
        $new_comment->post_id = $id;
        $new_comment->comment = $request->comment;
        if ($request->parent_id) {
            $new_comment->parent_id = $request->parent_id;
        }
        if ($request->file('comment_file')) {
            $image = $request->file('comment_file'); //image call from request
            $imageName = time() . $image->getClientOriginalName(); //get image original name
            $uploadPath = 'assets/comments_images' . '/'; //upload path in variable
            $image->move($uploadPath, $imageName); //image move into the directory
            $image_url = $uploadPath . $imageName; //concrete image url
            $new_comment->comment_file = $image_url; // image url upload in database
        }
        $new_comment->save();

        //NOTIFICATION
        $notification_data = new \stdClass();
        $notification_data->type = $request->parent_id ? 2 : 1;
        $notification_data->post_id = $id;
        $notification_data->user_id =  $request->parent_id ? PostComments::find($request->parent_id)->user_id : Posts::find($id)->user_id;
        $notification_data->username = Auth::user()->username;
        $notification_data->comment = $request->comment;
        $notification_data->comment_id = $new_comment->id;
        if ($request->parent_id) {
            $notification_data->parent_id = $request->parent_id;
        }
        if ($request->file('comment_file')) {
            $notification_data->comment_file = $new_comment->comment_file;
        }
        $this->notificationStore($notification_data);

        $new_post = Posts::with(['comments' => function ($q) {
            $q->with('users');
        }])->withCount(['comments', 'likes'])->find($id);



        $response['post'] = $new_post;
        $response['message'] = trans('messages.comment_create');
        return $this->successApiResponse($response);
    }

    /* Fetch Comment Post*/
    public function fetchcommentPost($id)
    {
        $new_post = Posts::with(['users', 'comments' => function ($q) {
            $q->with([
                'users',
                'replies' => function ($qq) {
                    $qq->with(['users', 'liked']);
                },
                'liked' => function ($qqq) {
//                    $qqq->with([
//                        'users' => function ($qu){
//                    }]);
//                    $qqq->select('id','user_id');
                }
            ]);
            $q->where('parent_id', 0);
        }])->withCount(['comments', 'likes', 'likeStatus as like_status'])->find($id);

        $get_follow = Followers::where('follower_id', $new_post->user_id)->where('user_id', Auth::id())->exists();
        if ($get_follow) {
            $new_post->following_status = 1;
        } else {
            $new_post->following_status = 0;
        }
        $response['post'] = $new_post;
        return $this->successApiResponse($response);
    }

    /* Fetch Comment Like*/
    public function fetchlikesPost($id)
    {

        $new_post = Posts::with(['likes' => function ($q) {
            $q->with('users');
        }])
            ->withCount(['comments', 'likes'])
            ->find($id);

        foreach ($new_post->likes as $like) {


            $like->follow_status = 0;

            $follow = Followers::where('user_id', Auth::id())
                ->where('follower_id', $like->user_id)
                ->exists();

            if ($follow) {
                $like->follow_status = 1;
            }

        }
        $response['post'] = $new_post;
        return $this->successApiResponse($response);

    }

    /*Like Post*/
    public function likePost($id)
    {
        $like = PostLikes::whereUserId(Auth::id())
            ->wherePostId($id)
            ->first();
        if ($like) {
            $like->delete();
        } else {
            $like = new PostLikes();
            $like->user_id = Auth::id();
            $like->post_id = $id;
            $like->save();

            //NOTIFICATION
            $notification_data = new \stdClass();
            $notification_data->type = 4;
            $notification_data->post_id = $id;
            $notification_data->username = Auth::user()->username;
            $this->notificationStore($notification_data);
        }

        $new_post = Posts::with('comments')
            ->withCount(['comments', 'likes'])
            ->find($id);
        $response['post'] = $new_post;
        $response['message'] = trans('messages.post_liked');
        return $this->successApiResponse($response);

    }

    /*Like Comment*/
    public function likeComment($id)
    {
        $like = CommentLike::whereUserId(Auth::id())
            ->whereCommentId($id)
            ->first();
        if ($like) {
            $like->delete();
        } else {
            $like = new CommentLike();
            $like->user_id = Auth::id();
            $like->comment_id = $id;
            $like->save();
        }

//        $new_post = Posts::with('comments')
//            ->withCount(['comments', 'likes'])
//            ->find($id);
//        $response['post'] = $new_post;
        $response['message'] = trans('messages.comment_liked');
        return $this->successApiResponse($response);

    }

    /*Contact Us*/

    public function ContactUs(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required',
            'description' => 'required',
        ]);

        if ($validator->fails()) {
            $response['message'] = $validator->errors()->first();
            return $this->failureApiResponse($response);
        }

        ContactUs::create(array_merge($request->all(), ['user_id' => Auth::id()]));
        $response['message'] = trans('messages.contactus');
        return $this->successApiResponse($response);

    }

    /*FeedBack*/

    public function FeedBack(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required',
            'description' => 'required',
        ]);

        if ($validator->fails()) {
            $response['message'] = $validator->errors()->first();
            return $this->failureApiResponse($response);
        }

        Feedbacks::create(array_merge($request->all(), ['user_id' => Auth::id()]));
        $response['message'] = trans('messages.feedbacks');
        return $this->successApiResponse($response);
    }

    /*Notifications*/
    public function notifications()
    {
        $notifications = Notification::with(['users'])->where('user_id', Auth::id())->where('read_status', 0)->orderBy('id', 'desc')->get();
        $response['notifications'] = $notifications;
        return $this->successApiResponse($response);
    }

    public function read_notification(Request $request)
    {
        if ($request->notification_id) {
            Notification::where('user_id', Auth::id())->where('id', $request->notification_id)->update(['read_status' => 1]);
        } else {
            Notification::where('user_id', Auth::id())->where('read_status', 0)->update(['read_status' => 1]);
        }
        $response['message'] = "Status has been changed successfully.";
        return $this->successApiResponse($response);
    }

    /*Follow and Unfollow*/
    public function FollowUser(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'follower_id' => 'required',
        ]);

        if ($validator->fails()) {
            $response['message'] = $validator->errors()->first();
            return $this->failureApiResponse($response);
        }

        //NOTIFICATION
        if (!Followers::where('user_id', Auth::id())->where('follower_id', $request->follower_id)->first()) {
            $data = new \stdClass();
            $data->type = 3;
            $data->following_id = $request->follower_id;
            $data->follower_id = Auth::id();
            $data->username = Auth::user()->username;
            $this->notificationStore($data);
        }

        Followers::firstOrCreate(array_merge($request->all(), ['user_id' => Auth::id()]));

        $response['message'] = trans('messages.follow');
        return $this->successApiResponse($response);
    }

    public function UnfollowUser(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'follower_id' => 'required',
        ]);

        if ($validator->fails()) {
            $response['message'] = $validator->errors()->first();
            return $this->failureApiResponse($response);
        }

        Followers::whereUserId(Auth::id())->whereFollowerId($request->follower_id)->delete();
        $response['message'] = trans('messages.unfollow');
        return $this->successApiResponse($response);
    }


    public function followers($id = null)
    {
        if (!$id) {
            $id = Auth::id();
        }
        $response['follow_lists'] = $follow_lists = Followers::with('following')
            ->whereFollowerId($id)
            ->get();

        foreach ($follow_lists as $follow_list) {
            $follow_exist = Followers::whereFollowerId($follow_list->user_id)
                ->whereUserId($id)
                ->count();
            $follow_list->is_follow = false;

            if ($follow_exist > 0) {
                $follow_list->is_follow = true;
            }

        }


        $response['message'] = "List Updated";
        return $this->successApiResponse($response);
    }

    public function followings($id = null)
    {
        if (!$id) {
            $id = Auth::id();
        }
        $response['follow_lists'] = Followers::with('follow')->whereUserId($id)->get();
        $response['message'] = "List Updated";
        return $this->successApiResponse($response);

    }

    public function report($id)
    {
        if (!Reports::where('post_id', $id)->where('user_id', Auth::id())->first()) {
            Reports::create(['post_id' => $id, 'user_id' => Auth::id()]);
        }
        $response['message'] = "Report Created successfully.";
        return $this->successApiResponse($response);
    }

    /*Update Settings */
    public function UpdateSettings()
    {
        $response['follow_lists'] = Followers::with('following')->whereFollowerId(Auth::id())->get();
        $response['message'] = "List Updated";
        return $this->successApiResponse($response);
    }


    /*Get Profile*/

    public function getProfile()
    {
        $response['user_data'] = User::with('posts')
            ->withCount(['follow', 'following', 'posts'])
            ->find(Auth::id());
        $response['message'] = "Profile Fetched";
        return $this->successApiResponse($response);
    }

    /*Get Profile*/
    public function getUserProfile($id)
    {
        $user_datas = User::with(['posts' => function ($q) {
            $q->with(['comments' => function ($q) {
                $q->with('users');
            }, 'likes', 'tags'])
                ->with('users')
                ->withCount(['comments', 'likes'])
                ->orderBy('created_at', 'desc');
        }])->withCount(['follow', 'following', 'posts'])->find($id);

        if ($user_datas) {

            $get_follow = Followers::where('follower_id', $user_datas->id)->where('user_id', Auth::id())->exists();
            if ($get_follow) {
                $user_datas->following_status = 1;
            } else {
                $user_datas->following_status = 0;
            }

            if (count(@$user_datas->posts)) {
                foreach ($user_datas->posts as $new_post) {
                    $new_post->follow_status = 0;
                    $new_post->like_status = 0;
                    if ($new_post->likes->contains('user_id', Auth::id())) {
                        $new_post->like_status = 1;
                    }
                    if ($new_post->user_id == Auth::id()) {
                        $new_post->follow_status = 1;
                    } else {
                        $follow = Followers::where('user_id', Auth::id())
                            ->where('follower_id', $new_post->user_id)
                            ->exists();
                        if ($follow) {
                            $new_post->follow_status = 1;
                        }
                    }
                }
            }
            $response['user_data'] = $user_datas;
            $response['message'] = "Profile Fetched";
            return $this->successApiResponse($response);
        } else {
            $response['message'] = "Profile not Found";
            return $this->failureApiResponse($response);
        }
    }

    /*Get Profile*/

    public function setProfile(Request $request)
    {
        $user = Auth::user();
//        $user->name = $request->name;
        $user->username = $request->username;
        $user->email = $request->email;
        $user->about_me = $request->about_me;
        $user->location = $request->location;
        $user->latitude = $request->latitude;
        $user->longitude = $request->longitude;
        if ($request->file('image')) {
            $user_id = $user->id; // user id
            $image = $request->file('image'); //image call from request
            $imageName = time() . $image->getClientOriginalName(); //get image original name
            $uploadPath = 'assets/users_image/' . $user_id . '/'; //upload path in variable
            $image->move($uploadPath, $imageName); //image move into the directory
            $image_url = $uploadPath . $imageName; //concrete image url
            $user->image_url = $image_url; // image url upload in database
        }
        $user->save();
        $response['user_data'] = Auth::user();
        $response['message'] = "Profile Fetched";
        return $this->successApiResponse($response);
    }

    /*Get Profile*/
    public function change_password(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'password' => array(
                'required',
                'min:8',
                'regex:/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).+$/'
            ),
        ], ['password.regex' => trans('messages.password_regex')]);

        if ($validator->fails()) {
            $response['message'] = $validator->errors()->first();
            return $this->failureApiResponse($response);
        } else {
            $user = Auth::user();
            request()->user()->fill(['password' => Hash::make(request()->input('password'))])->save();
            $response['message'] = trans('messages.password_changed');
            $user->token = null;
            $user->save();
            return $this->successApiResponse($response);
        }
    }

    /*Get Filter*/

    public function getFilter()
    {
        $response['filter_setting'] = FilterSetting::whereUserId(Auth::id())->first();
        $response['message'] = "Profile Fetched";
        return $this->successApiResponse($response);
    }

    /*Get Profile*/

    public function setFilter(Request $request)
    {

        $filter = FilterSetting::whereUserId(Auth::id())->first();
        if (!$filter) {
            $filter = new FilterSetting();
        }

        $filter->most_recent = $request->most_recent;
        $filter->following = $request->following;
        $filter->nearest = $request->nearest;
        $filter->liked = $request->liked;
        $filter->comments = $request->comments;
        $filter->crowded = $request->crowded;
        $filter->quiet = $request->quiet;
        $filter->fun_limit = $request->fun_limit;
        $filter->last_twenty_four = $request->last_twenty_four;
        $filter->last_forty_eight = $request->last_forty_eight;
        $filter->user_id = Auth::id();
        $filter->save();


        /*filter post count*/
        $ref = array($request->latitude, $request->longitudes);
        $filter = FilterSetting::whereUserId(Auth::id())->first();
        if ($filter) {
            if ($filter->liked == "1") {
                $request->sort_by = 1;
            }

            if ($filter->nearest == "1") {
                $request->sort_by = 4;
            }
            if ($filter->most_recent == "1") {
                $request->sort_by = 5;
            }
            if ($filter->following == "1") {
                $request->sort_by = 6;
            }

        }

        $new_posts = Posts::with(['comments' => function ($q) {
            $q->with('users');
        }, 'likes' => function ($q) {
            $q->with('users');
        }, 'tags'])
            ->with('users')
            ->doesnthave('blocked_user')
            ->doesnthave('block_by_user')
            ->withCount(['comments', 'likes']);

        if (!$filter) {
            $new_posts = $new_posts
                ->orderBy('created_at', 'desc');
        }

        if (@$filter->liked == "1") {

            $new_posts = $new_posts
                ->orderBy('likes_count', 'desc');

        } elseif (@$filter->comments == "1") {

            $new_posts = $new_posts
                ->orderBy('comments_count', 'desc');

        } elseif (@$filter->crowded == "1") {
            $new_posts = $new_posts
                ->orderBy('crowd_count', 'desc');
        } elseif (@$filter->fun_limit == "1") {
            $new_posts = $new_posts
                ->orderBy('fun_count', 'desc');

        } elseif (@$filter->most_recent == "1") {
            $new_posts = $new_posts
                ->orderBy('created_at', 'desc');
        } elseif (@$filter->quiet == "1") {
            $new_posts = $new_posts
                ->orderBy('crowd_count', 'asc');
        } /*nearest*/
        elseif (@$filter->nearest == "1") {

            $all_posts = Posts::whereNotNull('longitudes')
                ->where('longitudes', '!=', 'null')
                ->whereNotNull('latitude')
                ->doesnthave('blocked_user')
                ->doesnthave('block_by_user')
                ->where('latitude', '!=', 'null')
                ->select('id', 'longitudes', 'latitude')
                ->get()
                ->toArray();


            $distances = array_map(function ($item) use ($ref) {

                $a[0] = $item['latitude'];
                $a[1] = $item['longitudes'];
                $a[2] = $item['id'];

                return $this->distance($a, $ref);
            }, $all_posts);

            asort($distances);

            $sorted = [];
            foreach ($distances as $key => $distance) {
                $sorted[key($distance)] = $distance[key($distance)];

            }
            asort($sorted);
            $ids_ordered = implode(',', array_keys($sorted));


            $new_posts = $new_posts
                ->whereIn('id', array_keys($sorted))
                ->orderByRaw(DB::raw("FIELD(id, $ids_ordered)"));

        }
        if (@$filter->following == "1") {
            $follow = Followers::where('user_id', Auth::id())
                ->pluck('follower_id');

            $new_posts = $new_posts
                ->whereIn('user_id', $follow);

        }

        /*     if (@$filter->last_twenty_four == "1"){


                 $new_posts = $new_posts
                     ->whereBetween('created_at', [Carbon::now()->subDay(), Carbon::today()])
                ;
             }

             if (@$filter->last_forty_eight == "1"){
                $new_posts = $new_posts
                     ->whereBetween('created_at', [Carbon::now()->subDays(2), Carbon::today()])
                ;
             }*/

        if (@$filter->last_twenty_four == "1") {
            $new_posts = $new_posts
                ->whereBetween('created_at', [Carbon::now()->subHours(24), Carbon::now()]);
        }

        if (@$filter->last_forty_eight == "1") {
            $new_posts = $new_posts
                ->whereBetween('created_at', [Carbon::now()->subHours(48), Carbon::now()]);
        }
        $response['filter_posts'] = $new_posts->count();
        $response['filter_setting'] = $filter;
        $response['message'] = "Filter Updated";
        return $this->successApiResponse($response);
    }

    /*Chatting*/
    public function sendMessage(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'message' => 'required_if:type,==,1',
            'receiver_id' => 'required',
            'channel_name' => 'required',
            'event_name' => 'required',
            'type' => 'required',
            'file' => 'required_if:type,==,2|required_if:type,==,3|required_if:type,==,4'
        ]);

        if ($validator->fails()) {
            $response['message'] = $validator->errors()->first();
            return $this->failureApiResponse($response);
        } else {
            $data = new \stdClass();
            $data->message = null;
            $data->image = null;
            $data->video = null;
            $data->attachment = null;
            $push_title = "";
            $subTtitle = "";

            $check_exist = Channel::where('channel_name', "like", "%$request->channel_name%")->first();
            if ($check_exist) {
                $channel_id = $check_exist->id;
            } else {
                $channel = new Channel();
                $channel->channel_name = $request->channel_name;
                $channel->user_id_1 = Auth::id();
                $channel->user_id_2 = $request->receiver_id;
                $channel->save();
                $channel_id = $channel->id;
            }

            $chatting = new Chatting();
            $chatting->channel_id = $channel_id;
            $chatting->sender_id = Auth::id();
            $chatting->receiver_id = $request->receiver_id;
            if ((int)$request->type === 1) {
                $chatting->message = $request->message;
                $data->message = $request->message;
                $push_title = Auth::user()->username . " has sent you a text message.";
                $subTtitle = $request->message;
            }
            if ((int)$request->type === 2) { //IMAGE
                $push_title = Auth::user()->username . " has sent you an image.";
                if ($request->file('file')) {
                    $user_id = Auth::id(); // user id
                    $image = $request->file('file'); //image call from request
                    $imageName = time() . $image->getClientOriginalName(); //get image original name
                    $uploadPath = 'assets/users_image/' . $user_id . '/'; //upload path in variable
                    $image->move($uploadPath, $imageName); //image move into the directory
                    $image_url = $uploadPath . $imageName; //concrete image url
                    $chatting->image = $image_url; // image url upload in database
                    $data->image = url('/') . '/' . $image_url;
                }
            }
            if ((int)$request->type === 3) { // VIDEO
                $push_title = Auth::user()->username . " has sent you a video.";
                if ($request->file('file')) {
                    $user_id = Auth::id(); // user id
                    $image = $request->file('file'); //image call from request
                    $imageName = time() . $image->getClientOriginalName(); //get image original name
                    $imageName = preg_replace('/\s+/', '', $imageName);
                    $uploadPath = 'assets/post_resource/' . $user_id . '/'; //upload path in variable
                    $image->move($uploadPath, $imageName); //image move into the directory
                    $image_url = $uploadPath . $imageName; //concrete image url
                    $chatting->video = $image_url; // image url upload in database
                    $data->video = $image_url;
                    try {
                        //$image_url_temp = '/home/gay4erfxtjdu/public_html/'.$image_url;
                        $tempname = $user_id . time() . 'thumb.jpg';
                        //$temppath = '/home/gay4erfxtjdu/public_html/tempfiles/' . $tempname;
                        $temppath = public_path('tempfiles/' . $tempname);
                        //Flavy::thumbnail($image_url_temp, $temppath, 1);
                        Flavy::thumbnail($image_url, $temppath, 1);
                        $video_thumb__url = $uploadPath . $tempname;
                        file_put_contents($video_thumb__url,file_get_contents($temppath));
                        //Storage::disk('s3')->put($uploadPath . $tempname, file_get_contents($temppath), 'public');
                        $chatting->thumbnail_url = $video_thumb__url;
                        $data->thumbnail_url = $video_thumb__url;
                        unlink($temppath);
                    } catch (CmdException $exception) {
                        $response['thumnail'] = "failed for iphone";
                    }
                }
            }
            if ((int)$request->type === 4) { // ATTACHMENT
                $push_title = Auth::user()->username . " has sent you an attachment.";
                if ($request->file('file')) {
                    $user_id = Auth::id(); // user id
                    $image = $request->file('file'); //image call from request
                    $imageName = time() . $image->getClientOriginalName(); //get image original name
                    $uploadPath = 'assets/users_image/' . $user_id . '/'; //upload path in variable
                    $image->move($uploadPath, $imageName); //image move into the directory
                    $image_url = $uploadPath . $imageName; //concrete image url
                    $chatting->attachment = $image_url; // image url upload in database
                    $data->attachment = $image_url;
                }
            }

            $chatting->type = $request->type;
            $chatting->save();

            $options = array(
                'cluster' => env('PUSHER_APP_CLUSTER'),
                'useTLS' => true
            );

            //SEND PUSH TO PUSHER
            $pusher = new \Pusher\Pusher(env('PUSHER_APP_KEY'), env('PUSHER_APP_SECRET'), env('PUSHER_APP_ID'), $options);
            $data->receiver_id = $request->receiver_id;
            $data->sender_id = Auth::id();
            $data->channel_name = $request->channel_name;
            $data->event_name = $request->event_name;
            $data->type = $request->type;
            $pusher->trigger($request->channel_name, $request->event_name, $data);
            //$result = broadcast(new MessageSent($data))->toOthers(); //WILL WORK IF QUEUE LISTER IS ACTIVE

            $senderObj = new \stdClass();
            $senderObj->id = Auth::id();
            $senderObj->username = Auth::user()->username;
            $senderObj->image_url =Auth::user()->image_url;

            $receiverObj = new \stdClass();
            $get_receiver = User::select('id','username','image_url')->where('id', $request->receiver_id)->first();
            if($get_receiver){
                $receiverObj->id = $get_receiver->id;
                $receiverObj->username = $get_receiver->username;
                $receiverObj->image_url = $get_receiver->image_url;
            }

            $msg = array
            (
                'channel_name' => $request->channel_name,
                'push_type' => $this->pushType('chatting'),
                'sender_obj' => $senderObj,
                'receiver_obj' => $receiverObj,
            );
            $tokens = array();
            $devices = @Device::where('user_id', $request->receiver_id)->get();
            if($devices){
                foreach ($devices as $device){
                    $tokens[] = $device->fcm_token;
                }
            }

            if($tokens){
                PushNotification::sentpush($push_title, $subTtitle, $msg, $tokens);
            }
            $response['message'] = "Message Sent";
            return $this->successApiResponse($response);
        }
    }

    public function channeList()
    {
        $channel_list = Channel::with([
            'lastChat' => function ($query) {
                $query->select('*');
            }, 'user_one' => function ($query) {
                $query->select('id', 'username', 'image_url');
            }, 'user_two' => function ($query) {
                $query->select('id', 'username', 'image_url');
            }
        ])->where(function ($q) {
            $q->where('user_id_1', Auth::id())
                ->orWhere('user_id_2', Auth::id());
        })->get();
        $response['channelObj'] = $channel_list;
        return $this->successApiResponse($response);
    }

    public function get_message_by_channel($channelName)
    {
        $check_exist = Channel::where('channel_name', "like", "%$channelName%")->first();
        if ($check_exist) {
            $message_list = Chatting::with([])->where('channel_id', $check_exist->id)->get();
            $response['messageObj'] = $message_list;
            return $this->successApiResponse($response);
        } else {
            $response['message'] = "Sorry given channel does not exist.";
            return $this->failureApiResponse($response);
        }
    }

    public function readMessage(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'channel_name' => 'required',
        ]);
        if ($validator->fails()) {
            $response['message'] = $validator->errors()->first();
            return $this->failureApiResponse($response);
        } else {
            $get_channel = Channel::where('channel_name', "like", "%$request->channel_name%")->first();
            $get_chat = Chatting::where('channel_id',$get_channel->id)->where('receiver_id', Auth::id())->update(['read_status' => 1]);
            $response['readMessage'] = $get_chat;
            $response['messageObj'] = "Status has been changed successfully.";
            return $this->successApiResponse($response);
        }
    }

    public function deleteComment($id)
    {
        $this->comment_ids[] = $id;
        $get_comments = PostComments::where('id', $id)->with('replies')->first();
        if (!$get_comments->replies->isEmpty()) {
            $this->get_reply_ids($get_comments->replies);
        }
        PostComments::destroy($this->comment_ids);
        $response['messageObj'] = "Comment has been deleted successfully.";
        return $this->successApiResponse($response);
    }

    public function deletePost($id)
    {
        $post = Posts::where('user_id', Auth::id())->where('id', $id)->first();
        if (file_exists($post->file_path)) {
            unlink($post->file_path);
        }
        $post->delete();
        $get_comments = PostComments::where('post_id', $id)->with('replies')->get();
        if ($get_comments) {
            foreach ($get_comments as $comments) {
                $this->comment_ids[] = @$comments->id;
                if (!$comments->replies->isEmpty()) {
                    $this->get_reply_ids($comments->replies);
                }
            }
        }
        PostComments::destroy($this->comment_ids);//DELETE POST COMMENTS
        PostTags::where('post_id', $id)->delete();//DELETE POST TAGS
        PostLikes::where('post_id', $id)->delete();//DELETE POST LIKES
        PostFiles::where('post_id', $id)->delete();//DELETE POST FILES

        $response['messageObj'] = "Post has been deleted successfully.";
        return $this->successApiResponse($response);
    }

    public function blockUser($id)
    {
        $check_blocked = BlockedUser::where('block_by_id', Auth::id())->where('blocked_id', $id)->first();
        if ($check_blocked) {
            $check_blocked->delete();
            $response['messageObj'] = "User has been unblocked successfully.";
        } else {
            $block = new BlockedUser();
            $block->block_by_id = Auth::id();
            $block->blocked_id = $id;
            $block->save();
            $response['messageObj'] = "User has been blocked successfully.";
        }
        return $this->successApiResponse($response);
    }

    public function blockedUsers()
    {
        $blcokedUsers = BlockedUser::with(['users' => function ($q){
            $q->select('id','username','image_url');
        }])->where('block_by_id', Auth::id())->get();
        $response['blcokedUsers'] = $blcokedUsers;
        return $this->successApiResponse($response);
    }

    public function adsList()
    {
        $ads_list = Ads::where('status', 1)->get();
        $response['adsObj'] = $ads_list;
        return $this->successApiResponse($response);
    }

    function get_reply_ids($replies)
    {
        foreach ($replies as $reply) {
            $this->comment_ids[] = @$reply->id;
            if (!$reply->replies->isEmpty()) {
                $this->get_reply_ids($reply->replies);
            }
        }
        return $this->comment_ids;
    }
}