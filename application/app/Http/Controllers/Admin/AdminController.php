<?php

namespace App\Http\Controllers\Admin;

use App\CommonSettings;
use App\Role;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\View;

class AdminController extends Controller
{
    public $paginate = 10;
    public function index(Request $request)
    {
        $data = array();
        $data['pageTitle'] = 'Admins';
        $data['admins'] = 'm-menu__item--open m-menu__item--expanded';
        $data['admin_list'] = 'm-menu__item--active';

        $admin_search = $request->admin_search;
        if ($admin_search){
            $data['admins_list'] = User::whereHas('roles', function ($query) {
                $query->where('name', '!=', 'merchant');
            })->where('name', 'LIKE', '%' . $admin_search . '%')
                ->paginate($this->paginate)->setPath(url()->current()."?admin_search=".$admin_search);

        }
        else{
            $data['admins_list'] = User::whereHas('roles', function ($query) {
                $query->where('name', '!=', 'merchant');
            })->paginate($this->paginate);

        }

        return view('admins.admins')->with($data);
    }

    public function add()
    {
        $data = array();
        $data['pageTitle'] = 'Add New Admin'; // please use user name
        $data['admins'] = 'm-menu__item--open m-menu__item--expanded';
        $data['add_admin'] = 'm-menu__item--active';
        return view('admins.add')->with($data);
    }

    public function general_settings()
    {
        $data = array();
        $data['data'] = CommonSettings::find(1);
        $data['pageTitle'] = 'General Settings'; // please use user name
        $data['settings'] = 'm-menu__item--open m-menu__item--expanded';
        $data['add_admin'] = 'm-menu__item--active';
        return view('settings.general-settings')->with($data);
    }

    public function general_settings_update(Request $request)
    {
        $settings = CommonSettings::find(1);
        $settings->about_us = $request->about_us;
        $settings->terms_conditions = $request->terms_conditions;
        $settings->privacy_policy = $request->privacy_policy;
        $settings->version = $request->version;
        $settings->save();
        return redirect('admin/general-settings/')->with('message', 'Settings has been updated successfully.');
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|max:255',
            'phone' => ['nullable', 'digits_between:8,11'],
            'date_of_birth' => 'nullable|before: 5 years ago',
            'email' => 'required|unique:users|email',
            'password' => array('required','different:name','min:6'),
        ]);

        if ($validator->fails()) {
            return redirect('admin/staffs/add')->withErrors($validator)->withInput();
        }
        $user = new User();
        $user->name = $request->name;
        $user->gender = $request->gender;
        $user->email = $request->email;
        $user->bio = $request->bio;
        $user->phone = $request->phone;
        $user->date_of_birth = $request->date_of_birth;
        $user->password = Hash::make($request->password);
        $user->role_type = 2;
        $role = Role::find($request->role);
        $user->save();
        $user->attachRole($role);

        if ($request->file('image')) {
            $user_id = $user->id; // user id
            $image = $request->file('image'); //image call from request
            $imageName = time() . $image->getClientOriginalName(); //get image original name
            $uploadPath = 'assets/admins_image/' . $user_id . '/'; //upload path in variable
            $image->move($uploadPath, $imageName); //image move into the directory
            $image_url = $uploadPath . $imageName; //concrete image url
            $user->image_url = $image_url; // image url upload in database
            $user->save();
        }
        return redirect('admin/staffs/')->with('message', 'Admin created successfully');
    }

    public function details($id)
    {
        $data = array();
        $data['admin'] = User::find($id);
        if ( $data['admin'] == null || $data['admin']->hasRole('merchant') || $data['admin']->role_type !=2){
            return back();
        }
        else{
            $data['pageTitle'] = 'Admin Details - '.$data['admin']->name; // please use user name
            $data['admins'] = 'm-menu__item--open m-menu__item--expanded';
            $data['admin_list'] = 'm-menu__item--active';
            return view('admins.details')->with($data);
        }
    }

    public function edit($id)
    {
        $data = array();
        $data['admin'] = User::find($id);

        if ( $data['admin'] == null || $data['admin']->hasRole('merchant') || $data['admin']->role_type !=2){
            return back();
        }
        else{
            $data['pageTitle'] = 'Admin Details - '.$data['admin']->name; // please use user name
            $data['admins'] = 'm-menu__item--open m-menu__item--expanded';
            $data['admin_list'] = 'm-menu__item--active';
            return view('admins.edit')->with($data);
        }
    }

    public function update(Request $request)
    {
        $id = $request->id;
        $request->validate([
            'name' => 'required|max:255|min:2',
            'phone' => ['nullable', 'digits_between:8,11'],
            'date_of_birth' => 'nullable|before:5 years ago',
            'email' => 'required|email|unique:users,email,'.$id,
            'password' => 'nullable|different:name|min:6'
        ]);

        $user = User::find($id);
        $user->name = $request->name;
        $user->gender = $request->gender;
        $user->email = $request->email;
        $user->phone = $request->phone;
        $user->bio = $request->bio;
        $user->date_of_birth = $request->date_of_birth;
        $user->password = Hash::make($request->password);
        if ($request->file('image')) {
            $user_id = $user->id; // user id
            $image = $request->file('image'); //image call from request
            $imageName = time() . $image->getClientOriginalName(); //get image original name
            $uploadPath = 'assets/admins_image/' . $user_id . '/'; //upload path in variable
            $image->move($uploadPath, $imageName); //image move into the directory
            $image_url = $uploadPath . $imageName; //concrete image url
            $user->image_url = $image_url; // image url upload in database
        }
        $user->save();
        return redirect('admin/staffs/')->with('message', 'Admin Update successfully.');
    }

    public function delete(Request $request)
    {
        if($request->ajax()){
            $id = $request->get('id');
            $user = User::find($id);
            $user->delete();
            $data['admins_list'] = $data['admins_list'] = User::whereHas('roles', function ($query) {
                $query->where('name', '!=', 'merchant');
            })->paginate($this->paginate)->setPath(url('admin/staffs')."?page=$request->page");
            return Response::json(View::make('admins.render_admins', $data)->render());
        }
    }
}