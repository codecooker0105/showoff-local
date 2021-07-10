<?php

namespace App\Http\Controllers\Admin;

use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\View;

class UserController extends Controller
{
    public $row_per_page = 10;

    public function index(Request $request)
    {
        $data = array();
        $data['pageTitle'] = 'Users';
        $data['users'] = 'm-menu__item--open m-menu__item--expanded';
        $data['user_list'] = 'm-menu__item--active';

        $data['users_list'] = User::where(function ($query) use ($request) {
            if ($request->user_search) {
                $query->where('username', 'LIKE', '%' . $request->user_search . '%')
                    ->orwhere('email', 'LIKE', '%' . $request->user_search . '%');
            }
            if ($request->user_type) {
                $query->where('status', $request->user_type);
            }
        })->where('role_type', '1')
            ->withCount('posts', 'follow', 'following')
            ->orderBy('id', 'desc')
            ->paginate($this->row_per_page);

        $data['user_type'] = @$request->user_type;

//        $user_search = $request->user_search;
//        if ($user_search) {
//            $data['users_list'] = User::where('name', 'LIKE', '%' . $user_search . '%')
//                ->orwhere('email', 'LIKE', '%' . $user_search . '%')
//                ->where('role_type', 1)
//                ->withCount('posts', 'follow', 'following')
//                ->paginate(10)
//                ->setPath(url()->current() . "?user_search=" . $user_search);
//        } else {
//            $data['users_list'] = User::where('role_type', '1')
//                ->withCount('posts', 'follow', 'following')
//                ->paginate(10);
//        }

        return view('users.users')->with($data);
    }

    public function add()
    {
        $data = array();
        $data['pageTitle'] = 'Add New User'; // please use user name
        $data['users'] = 'm-menu__item--open m-menu__item--expanded';
        $data['add_user'] = 'm-menu__item--active';
        return view('users.add')->with($data);
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|max:255',
//            'phone' => ['nullable', 'digits_between:8,11'],
//            'date_of_birth' => 'nullable|before: 5 years ago',
            'email' => 'required|unique:users|email',
//            'username' => 'required|unique:users|username',
            'password' => array('required', 'different:name', 'min:6'),
        ]);

//        dd($request->all());

        if ($validator->fails()) {
            return redirect('admin/users/add')->withErrors($validator)->withInput();
        }
        $user = new User();
        $user->name = $request->name;
        $user->username = $request->username;
        $user->email = $request->email;
        if ($request->password) {
            $user->password = Hash::make($request->password);
        }
        $user->location = $request->location;
        $user->role_type = 1;

        $user->save();

        if ($request->file('image')) {
            $user_id = $user->id; // user id
            $image = $request->file('image'); //image call from request
            $imageName = time() . $image->getClientOriginalName(); //get image original name
            $uploadPath = 'assets/users_image/' . $user_id . '/'; //upload path in variable
            $image->move($uploadPath, $imageName); //image move into the directory
            $image_url = $uploadPath . $imageName; //concrete image url
            $user->image_url = $image_url; // image url upload in database
            $user->save();
        }
        return redirect('admin/users/')->with('message', 'User created successfully');
    }

    public function details($id)
    {
        $data = array();
        $data['user'] = User:: withCount('posts', 'follow', 'following')->with(['posts' => function ($q) {
            $q->withCount(['comments', 'likes', 'tags'])->orderBy('created_at', 'desc')/*->limit($this->row_per_page)*/
            ->latest();
        }])->find($id);

        if ($data['user'] == null || $data['user']->role_type != 1) {
            return back();
        } else {
            $data['pageTitle'] = 'User Details - ' . $data['user']->name; // please use user name
            $data['users'] = 'm-menu__item--open m-menu__item--expanded';
            $data['user_list'] = 'm-menu__item--active';
            return view('users.details')->with($data);
        }
    }

    public function edit($id)
    {
        $data = array();
        $data['user'] = User::find($id);

        if ($data['user'] == null || $data['user']->role_type != 1) {
            return back();
        } else {
            $data['pageTitle'] = 'User Details - ' . $data['user']->name; // please use user name
            $data['users'] = 'm-menu__item--open m-menu__item--expanded';
            $data['user_list'] = 'm-menu__item--active';
            return view('users.edit')->with($data);
        }
    }

    public function update(Request $request)
    {
        $id = $request->id;
        $request->validate([
            'username' => 'required|max:255',
            'phone' => ['nullable', 'digits_between:8,11'],
            'date_of_birth' => 'nullable|before:5 years ago',
            'email' => 'required|email|unique:users,email,' . $id,
            'password' => 'nullable|different:username|min:6'
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
            $uploadPath = 'assets/users_image/' . $user_id . '/'; //upload path in variable
            $image->move($uploadPath, $imageName); //image move into the directory
            $image_url = $uploadPath . $imageName; //concrete image url
            $user->image_url = $image_url; // image url upload in database
        }
        $user->save();
        return redirect('admin/users/')->with('message', 'User Update successfully.');
    }

    public function delete(Request $request)
    {
        if ($request->ajax()) {
            $id = $request->get('id');
            $user = User::find($id);
            $user->delete();
            $data['users_list'] = User::where('role_type', '1')->paginate(10)->setPath(url('admin/users') . "?page=$request->page");
            return Response::json(View::make('users.render_users', $data)->render());
        }
    }

    public function changeStatus(Request $request)
    {
        if ($request->ajax()) {
            $id = $request->get('id');
            $user = User::find($id);
            if ($user->status == 1) {
                $user->status = 2;
                $user->save();
                DB::table('oauth_access_tokens')->where('user_id', $id)->update(['revoked' => 1]); //LOGOUT THIS BLOCKED USER
                $html = '<a href="javascript:" class="btn btn-xs btn-outline-success" id="' . $id . '"
                               onclick="statusFunction('. $id .',1)"><i class="la la-check-circle-o"></i>
                            Activate</a>';
            } else {
                $user->status = 1;
                $user->save();
                $html = '<a href="javascript:" class="btn btn-xs btn-outline-warning" id="' . $id . '"
                            onclick="statusFunction('. $id .',2)"><i class="la la-ban"></i> Block</a>';

            }
            return Response::json($html);

        }
    }
}
