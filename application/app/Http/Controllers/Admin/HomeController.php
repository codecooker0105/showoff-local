<?php

namespace App\Http\Controllers\Admin;

use App\Ads;
use App\Feedbacks;
use App\Posts;
use App\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\View;

class HomeController extends Controller
{
    public function dashboard(Request $request)
    {
        $data = array();
        $data['pageTitle'] = 'Admin Dashboard';
        $data['dashboard'] = 'm-menu__item--active';
        $backgroundColor = ['rgba(7, 71, 166, .2)', 'rgba(156, 39, 176, .2)', 'rgba(33, 150, 243, .2)', 'rgba(0, 150, 136, .2)', 'rgba(76, 175, 80, .2)', 'rgba(255, 193, 7, .2)'];
        $borderColor = ['rgba(7, 71, 166, .8)', 'rgba(156, 39, 176, .8)', 'rgba(33, 150, 243, .8)', 'rgba(7, 71, 166, .8)', 'rgba(76, 175, 80, .8)', 'rgba(255, 193, 7, .8)'];


        /*Filters*/
        $filter_on = $request->filter_on;
        $custom_range=$request->custom_range;
        if ($custom_range){
            $filter_on ="custom_range" ;
        }

        if ($filter_on == "week") {


        }
        elseif ($filter_on == "lastmonth") {

        }
        elseif ($filter_on == "custom_range") {

        }
        else{

            /*Reward Counts*/
            $data['total_post']=Posts::count();
            $data['total_photo_post']=Posts::whereType(1)->count();
            $data['total_video_post']=Posts::whereType(2)->count();
            $data['total_live_post']=Posts::whereType(3)->count();


            /*Register User*/
            $data['registered_user_count'] = User::whereRoleType(1)->count();
            $data['active_user_count'] = User::withCount('posts')
                ->whereRoleType(1)
                ->has('posts', '>', 0)
                ->count();
            $data['inactive_user_count'] = User::withCount('posts')
                ->whereRoleType(1)
                ->has('posts', '<=', 0)
                ->count();
            $data['blocked_user_count'] = User::withCount('posts')
                ->whereRoleType(1)
                ->whereStatus(2)
                ->count();


            $data['top_users'] = User::withCount('posts','follow','following')
                ->whereRoleType(1)
                ->orderBy('posts_count','desc')
                ->limit(10)
                ->get();



            $months_names = array_reduce(range(1, 12), function ($rslt, $m) {
                $rslt[$m] = date('F', mktime(0, 0, 0, $m, 10));
                return $rslt;
            });

            $month_counter = 1;
            $chart_photo_vs_video = array();

            foreach ($months_names as $months_name) {

                /*Step Rewards Chart Data*/
                $monthly_post_photo = Posts::whereStatus(1)->
                whereType(1)->
                whereMonth('created_at', '=', $month_counter)
                    ->count();


                $monthly_post_video=Posts::whereStatus(1)->
                whereType(2)->
                whereMonth('created_at', '=', $month_counter)
                    ->count();

                $chart_photo_vs_video[$months_name]['monthly_post_photo'] = $monthly_post_photo;
                $chart_photo_vs_video[$months_name]['monthly_post_video'] = $monthly_post_video;


                $month_counter++;



            }
            

        }

        $data['chart_photo_vs_video'] =$chart_photo_vs_video;

        return view('dashboard.dashboard')->with($data);
    }


    private function generateDateRange(Carbon $date_started, Carbon $date_ended)
    {
        $dates = [];

        for ($date = $date_started; $date->lte($date_ended); $date->addDay()) {

            $dates[] = $date->format('Y-m-d');

        }
        return $dates;

    }

    public function feedbackIndex(Request $request)
    {
        $data = array();
        $data['pageTitle'] = 'Feedback';
        $data['feedback'] = 'm-menu__item--active';
        if ($request->feedback_search){
            $data['feedback_list'] = Feedbacks::whereHas('user', function ($q) use ($request){
                $q->where('name', 'LIKE','%'. $request->feedback_search.'%');
            })->orWhere('description', 'LIKE', '%' . $request->feedback_search . '%')
                ->paginate(2)->setPath(url()->current()."?feedback_search=".$request->feedback_search);
        }
        else{
            $data['feedback_list'] = Feedbacks::with('user')->paginate(2);
        }
        return view('feedback.feedback')->with($data);
    }

    public function feedbackDelete(Request $request){
        if($request->ajax()){
            $id = $request->get('id');
            $feedback = Feedbacks::find($id);
            $feedback->delete();
            $data['feedback_list'] = Feedbacks::with('user')->paginate(2)->setPath(url('admin/feedbacks')."?page=$request->page");
            return Response::json(View::make('feedback.render_feedback', $data)->render());
        }
    }
}
