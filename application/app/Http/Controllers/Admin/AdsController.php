<?php

namespace App\Http\Controllers\Admin;

use App\Ads;
use App\BannerManagement;
use App\Jobs\AdStatus;
use App\Jobs\ExpireAd;
use App\Role;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\View;

class AdsController extends Controller
{
    public $paginate_row = 10;

    public function index(Request $request)
    {
        $data = array();
        $data['pageTitle'] = 'Ads';
        $data['ads'] = 'm-menu__item--open m-menu__item--expanded';
        $data['ad_list'] = 'm-menu__item--active';
        if ($request->ads_search) {
            $ads_search = $request->ads_search;
            $data['ads_list'] = Ads::whereHas('merchant', function ($q) use ($request) {
                $ads_search = $request->ads_search;
                $q->where('name', 'LIKE', '%' . $ads_search . '%');
            })
                ->orWhere('title', 'LIKE', '%' . $ads_search . '%')
                ->paginate($this->paginate_row)
                ->setPath(url()->current() . "?ads_search=" . $ads_search);
        } else {
            $data['ads_list'] = Ads::with('merchant')->paginate($this->paginate_row);
        }

        return view('ads.ads')->with($data);
    }

    public function manageAds()
    {
        $data = array();
        $data['pageTitle'] = 'Manage Ad'; // please use user name
        $data['ads'] = 'm-menu__item--open m-menu__item--expanded';
        $data['ad_manage'] = 'm-menu__item--active';
        $data['ads_lists'] = Ads::with('merchant')->get();
        $data['banners'] = BannerManagement::with('ads')->get();
        return view('ads.manage')->with($data);
    }

    public function adjustAds(Request $request)
    {

        BannerManagement::truncate();
        if ($request->banner_data) {
            foreach ($request->banner_data as $each_data) {
                $banner = new BannerManagement();
                $banner->adv_id = $each_data;
                $banner->save();
            }
        }
        return redirect('admin/manage/ads');
    }

    public function add()
    {
        $data = array();
        $data['pageTitle'] = 'Add New Ad'; // please use user name
        $data['ads'] = 'm-menu__item--open m-menu__item--expanded';
        $data['add_ad'] = 'm-menu__item--active';
        return view('ads.add')->with($data);
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
//            'title' => 'required|max:255',
            'company_name' => 'required|max:255',
            'link' => 'url',
//            'merchant' => 'required',
            /* 'end_time' => 'after:start_time',*/
            'ads_banner' => 'required|image|mimes:jpeg,png,jpg,gif,svg',
//              'location' => 'required|max:255',
              'description' => 'max:500',
        ]);

        if ($validator->fails()) {
            return redirect('admin/ads/add')->withErrors($validator)->withInput();
        }

        $ads = new Ads();
        $ads->title = $request->title;
        $ads->company_name = $request->company_name;
        $ads->description = $request->description;
        $ads->link = $request->link;
        $ads->start_time = $request->start_time;
        $ads->end_time = $request->end_time;
        $ads->status = 1;
        $ads->save();

        $ads_id = $ads->id; // user id
        $company_logo = $request->file('company_logo'); //image call from request
        if ($company_logo) {
            $imageName = time() . $company_logo->getClientOriginalName(); //get image original name
            $uploadPath = 'assets/banner/' . $ads_id . '/'; //upload path in variable
            $company_logo->move($uploadPath, $imageName); //image move into the directory
            $company_logo_url = $uploadPath . $imageName; //concrete image url
            $ads->company_logo = $company_logo_url; // image url upload in database
            $ads->save();
        }

        $image = $request->file('ads_banner'); //image call from request
        if ($image) {
            $imageName = time() . $image->getClientOriginalName(); //get image original name
            $uploadPath = 'assets/banner/' . $ads_id . '/'; //upload path in variable
            $image->move($uploadPath, $imageName); //image move into the directory
            $image_url = $uploadPath . $imageName; //concrete image url
            $ads->ads_banner = $image_url; // image url upload in database
            $ads->save();
        }

        $ads->status = 1;

        if ($request->start_time && (strtotime($request->start_time)) > time()) {
            $ads->status = 4;

            //JOB QUEUE
            $payload = [
                'ad_id' => $ads_id,
                'type' => 'Pending',
            ];

            $delay = strtotime($request->start_time) - time();
            AdStatus::dispatch($payload)->delay($delay);// seconds
        }

        if ($request->end_time) {
            if ((strtotime($request->end_time)) > time()) {
                //JOB QUEUE
                $payload = [
                    'ad_id' => $ads_id,
                    'type' => 'Expire',
                ];
                $delay = strtotime($request->end_time) - time();
                AdStatus::dispatch($payload)->delay($delay);// seconds
            } else {
                $ads->status = 3;
            }
        }
        $ads->save();
        return redirect('admin/ads/')->with('message', 'Ads created successfully');
    }

    public function details($id)
    {
        $data = array();
        $data['ad'] = Ads::with('merchant')->find($id);
        if ($data['ad'] == null) {
            return back();
        } else {
            $data['pageTitle'] = 'Ad Details - ' . $data['ad']->title; // please use user name
            $data['ads'] = 'm-menu__item--open m-menu__item--expanded';
            $data['ad_list'] = 'm-menu__item--active';
            return view('ads.details')->with($data);
        }
    }

    public function delete(Request $request)
    {
        if ($request->ajax()) {
            $id = $request->get('id');
            $ad = Ads::find($id);
            $ad->delete();
            $data['ads_list'] = Ads::paginate($this->paginate_row)->setPath(url('admin/ads') . "?page=$request->page");
            return Response::json(View::make('ads.render_ads', $data)->render());
        }
    }

    public function changeStatus(Request $request)
    {
        if ($request->ajax()) {
            $id = $request->get('id');
            $ad = Ads::find($id);
            if ($ad->status == 1) {
                $ad->status = 2;
                $ad->save();
            } else {
                $ad->status = 1;
                $ad->save();
            }
            $data['ads_list'] = Ads::paginate(3)->setPath(url('admin/ads') . "?page=$request->page");
            return Response::json(View::make('ads.render_ads', $data)->render());
        }
    }

    public function edit($id)
    {
        $data = array();
        $data['ad'] = Ads::with('merchant')->find($id);
        $data['merchants'] = Role::find(3)->users()->orderby('name', 'asc')->get();
        if ($data['ad'] == null) {
            return back();
        } else {
            $data['pageTitle'] = 'Edit Ad - ' . $data['ad']->title; // please use user name
            $data['ads'] = 'm-menu__item--open m-menu__item--expanded';
            $data['ad_list'] = 'm-menu__item--active';
            return view('ads.edit')->with($data);
        }
    }

    public function update(Request $request)
    {
        $id = $request->ads_id;
        $request->validate([
//            'title' => 'required|max:255',
            'company_name' => 'required|max:255',
//            'link' => 'url',
//            'merchant' => 'required',
//            'start_time' => 'required',
//            'end_time' => 'required|after:start_time',
//            'ads_banner' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg',
//            'location' => 'required|max:255',
            'description' => 'max:500',
        ]);
        $ads = Ads::find($id);
        $ads->title = $request->title;
        $ads->company_name = $request->company_name;
        $ads->link = $request->link;
//        $ads->merchant_id = $request->merchant;
        $ads->start_time = $request->start_time;
        $ads->end_time = $request->end_time;
//        $ads->location = $request->location;
        $ads->description = $request->description;

        $ads->status = 1;
        if ($request->start_time && (strtotime($request->start_time)) > time()) {
            $ads->status = 4;
            //JOB QUEUE
            $payload = [
                'ad_id' => $id,
                'type' => 'Pending',
            ];
            $delay = strtotime($request->start_time) - time();
            AdStatus::dispatch($payload)->delay($delay);// seconds
        }

        if ($request->end_time) {
            if ((strtotime($request->end_time)) > time()) {
                //JOB QUEUE
                $payload = [
                    'ad_id' => $id,
                    'type' => 'Expire',
                ];
                $delay = strtotime($request->end_time) - time();
                AdStatus::dispatch($payload)->delay($delay);// seconds
            } else {
                $ads->status = 3;
            }
        }

        $company_logo = $request->file('company_logo'); //image call from request
        if ($company_logo) {
            $imageName = time() . $company_logo->getClientOriginalName(); //get image original name
            $uploadPath = 'assets/banner/' . $id . '/'; //upload path in variable
            $company_logo->move($uploadPath, $imageName); //image move into the directory
            $company_logo_url = $uploadPath . $imageName; //concrete image url
            $ads->company_logo = $company_logo_url; // image url upload in database
            $ads->save();
        }
        if ($request->file('ads_banner')) {
            $image = $request->file('ads_banner'); //image call from request
            $imageName = time() . $image->getClientOriginalName(); //get image original name
            $uploadPath = 'assets/banner/' . $id . '/'; //upload path in variable
            $image->move($uploadPath, $imageName); //image move into the directory
            $image_url = $uploadPath . $imageName; //concrete image url
            $ads->ads_banner = $image_url; // image url upload in database
            $ads->banner_width = @$this->getWidthHeight($image_url)[0]; // Width
            $ads->banner_height = @$this->getWidthHeight($image_url)[1]; // Height
        }
        $ads->save();
        return redirect('admin/ads/')->with('message', 'Ads update successfully');
    }

    public function getWidthHeight($value)
    {
        if (file_exists(dirname(base_path()).'/'.$value)=== true && $value){
            return list($width, $height, $type, $attr) = getimagesize(dirname(base_path()).'/'.$value);
        }else{
            return null;
        }
    }
}