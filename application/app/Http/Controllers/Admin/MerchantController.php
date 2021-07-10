<?php

namespace App\Http\Controllers\Admin;

use App\Ads;
use App\Role;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\View;

class MerchantController extends Controller
{
    public function index(Request $request)
    {
        $data = array();
        $data['pageTitle'] = 'Merchants';
        $data['merchants'] = 'm-menu__item--open m-menu__item--expanded';
        $data['merchant_list'] = 'm-menu__item--active';
        $search = $request->search;
        if ($search) {
            $users_list = Role::find(3)->users()->where('name', 'like', '%' . $search . '%')
                ->orWhere('email', 'like', '%' . $search . '%')
                ->orWhere('owner_name', 'like', '%' . $search . '%')
                ->orWhere('phone', 'like', '%' . $search . '%')
                ->paginate(2)->setPath(url()->current() . "?search=" . $search);
        } else {
            $users_list = Role::find(3)->users()->paginate(2);
        }
        return view('merchants.merchants', ['users_list' => $users_list])->with($data);
    }

    public function add()
    {
        $data = array();
        $data['pageTitle'] = 'Add New Merchant'; // please use user name
        $data['merchants'] = 'm-menu__item--open m-menu__item--expanded';
        $data['add_merchant'] = 'm-menu__item--active';
        return view('merchants.add')->with($data);
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|max:255',
            'owner_name' => 'required|max:255',
            'email' => 'required|unique:users|email',
            'phone' => 'nullable|digits_between:8,11',
            'password' => array(
                'required',
                'different:name',
                'min:6'
            ),

        ]);
        $user = new User();
        $user->name = $request->name;
        $user->owner_name = $request->owner_name;
        $user->phone = $request->phone;
        $user->email = $request->email;
        $user->password = Hash::make($request->password);
        $user->role_type = 2;
        $user->save();
        $user->attachRole(3);
        return redirect('admin/merchants/')->with('message', 'Merchant created successfully');
    }

    public function details($id)
    {
        $data = array();
        $data['user'] = Role::find(3)->users()->find($id);
        if ($data['user']) {
            $data['ads_list'] = $data['user']->ads()->paginate(2);
            $data['pageTitle'] = 'Merchant Details - ' . $data['user']->name; // please use user name
            $data['merchants'] = 'm-menu__item--open m-menu__item--expanded';
            $data['merchant_list'] = 'm-menu__item--active';
            return view('merchants.details')->with($data);
        } else {
            return redirect()->back();
        }
    }

    public function edit($id)
    {
        $user = Role::find(3)->users()->find($id);
        if ($user) {
            $data = array();
            $data['pageTitle'] = 'Merchant Edit - ' . $user->name;
            $data['merchants'] = 'm-menu__item--open m-menu__item--expanded';
            $data['merchant_list'] = 'm-menu__item--active';
            return view('merchants.edit', ['user' => $user])->with($data);
        } else {
            return redirect()->back();
        }
    }

    public function update(Request $request)
    {
        $id = $request->id;
        $request->validate([
            'name' => 'required|max:255',
            'owner_name' => 'required|max:255',
            'phone' => 'min:8|numeric',
            'email' => 'required|email|unique:users,email,' . $id,
            'password' => 'nullable|min:6',

        ]);

        $user = User::find($id);
        $user->name = $request->name;
        $user->owner_name = $request->owner_name;
        $user->phone = $request->phone;
        $user->email = $request->email;
        if ($request->password) {
            $request->validate([
                'password' => array(
                    'different:name',
                    'min:6',
                )
            ]);
            $user->password = Hash::make($request->password);
        }
        $user->save();
        return redirect('admin/merchants/')->with('message', 'Merchant Update successfully.');
    }

    public function delete(Request $request)
    {
        if ($request->ajax()) {
            $id = $request->get('id');
            $user = User::find($id);
            $user->delete();
            $data['users_list'] = Role::find(3)->users()->paginate(2)->setPath(url('admin/merchants') . "?page=$request->page");
            return Response::json(View::make('merchants.render_merchants', $data)->render());
        }
    }

    public function adsDelete(Request $request)
    {
        if ($request->ajax()) {
            $id = $request->get('id');
            $ad = Ads::find($id);
            $merchant_id = $ad->merchant_id;
            $ad->delete();
            $data['ads_list'] = Ads::where('merchant_id', $merchant_id)->paginate(2)->setPath(url('admin/merchants/details/' . $merchant_id) . "?page=$request->page");
            return Response::json(View::make('merchants.render_ads', $data)->render());
        }
    }

    public function adsChangeStatus(Request $request)
    {
        if ($request->ajax()) {
            $id = $request->get('id');
            $ad = Ads::find($id);
            $merchant_id = $ad->merchant_id;
            if ($ad->status == 1) {
                $ad->status = 2;
                $ad->save();
            } else {
                $ad->status = 1;
                $ad->save();
            }
            $data['ads_list'] = Ads::where('merchant_id', $merchant_id)->paginate(2)->setPath(url('admin/merchants/details/' . $merchant_id) . "?page=$request->page");
            return Response::json(View::make('merchants.render_ads', $data)->render());
        }
    }

    public function changeStatus(Request $request)
    {
        if($request->ajax()){
            $id = $request->get('id');
            $user = User::find($id);
            if ($user->status == 1){
                $user->status = 2;
                $user->save();
            }
            else{
                $user->status = 1;
                $user->save();
            }
            $data['users_list'] = Role::find(3)->users()->paginate(2)->setPath(url('admin/merchants')."?page=$request->page");
            return Response::json(View::make('merchants.render_merchants', $data)->render());
        }
    }
}
