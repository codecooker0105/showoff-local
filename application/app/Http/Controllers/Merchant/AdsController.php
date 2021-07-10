<?php

namespace App\Http\Controllers\Merchant;

use App\Ads;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\View;

class AdsController extends Controller
{
    public function index(Request $request)
    {
        $merchant_id = Auth::user()->id;
        $data = array();
        $data['pageTitle'] = Auth::user()->name.' - Ads';
        $data['ads'] = 'm-menu__item--open m-menu__item--expanded';
        $data['ad_list'] = 'm-menu__item--active';
        if ($request->ads_search){
            $ads_search = $request->ads_search;
            $data['ads_list'] = Ads::where('merchant_id', $merchant_id)
                ->where('title', 'LIKE', '%'.$ads_search. '%')
                ->paginate(3)
                ->setPath(url()->current()."?ads_search=".$ads_search);
        }
        else{

            $data['ads_list'] = Ads::where('merchant_id', $merchant_id)->paginate(3);
        }

        return view('merchantpanel.ads.ads')->with($data);
    }

    public function add(){
        $data = array();
        $data['pageTitle'] = 'Add New Ad'; // please use user name
        $data['ads'] = 'm-menu__item--open m-menu__item--expanded';
        $data['add_ad'] = 'm-menu__item--active';
        return view('merchantpanel.ads.add')->with($data);
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'title' => 'required|max:255',
            'merchant' => 'required',
            'start_time' => 'required',
            'end_time' => 'required|after:start_time',
            'ads_banner' => 'required|image|mimes:jpeg,png,jpg,gif,svg',
            'location' => 'required|max:255',
            'description' => 'required|max:1000',
        ]);

        if ($validator->fails()) {
            return redirect('merchant/ads/add')->withErrors($validator)->withInput();
        }
        $ads = new Ads();
        $ads->title = $request->title;
        $ads->merchant_id = Auth::user()->id;
        $ads->start_time = $request->start_time;
        $ads->end_time = $request->end_time;
        $ads->location = $request->location;
        $ads->description = $request->description;
        $ads->status = 1;
        $ads->save();
        $ads_id = $ads->id; // user id
        $image = $request->file('ads_banner'); //image call from request
        $imageName = time() . $image->getClientOriginalName(); //get image original name
        $uploadPath = 'assets/banner/' . $ads_id . '/'; //upload path in variable
        $image->move($uploadPath, $imageName); //image move into the directory
        $image_url = $uploadPath . $imageName; //concrete image url
        $ads->ads_banner = $image_url; // image url upload in database
        $ads->save();
        return redirect('merchant/ads/')->with('message', 'Ads created successfully');
    }

    public function details($id)
    {
        $data = array();
        $data['ad'] = Ads::where('merchant_id', Auth::user()->id)->find($id);
        if($data['ad'] == null){
            return back();
        }
        else{
            $data['pageTitle'] = 'Ad Details - '.$data['ad']->title; // please use user name
            $data['ads'] = 'm-menu__item--open m-menu__item--expanded';
            $data['ad_list'] = 'm-menu__item--active';
            return view('merchantpanel.ads.details')->with($data);
        }
    }

    public function delete(Request $request)
    {
        if($request->ajax()){
            $id = $request->get('id');
            $ad = Ads::find($id);
            $ad->delete();
            $data['ads_list'] = Ads::where('merchant_id', Auth::user()->id)->paginate(3)->setPath(url('merchant/ads')."?page=$request->page");
            return Response::json(View::make('merchantpanel.ads.render_ads', $data)->render());
        }
    }

    public function changeStatus(Request $request)
    {
        if($request->ajax()){
            $id = $request->get('id');
            $ad = Ads::find($id);
            if ($ad->status == 1){
                $ad->status = 2;
                $ad->save();
            }
            else{
                $ad->status = 1;
                $ad->save();
            }
            $data['ads_list'] = Ads::where('merchant_id', Auth::user()->id)->paginate(3)->setPath(url('merchant/ads')."?page=$request->page");
            return Response::json(View::make('merchantpanel.ads.render_ads', $data)->render());
        }
    }
}
