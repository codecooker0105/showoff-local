<?php

namespace App\Http\Controllers\Admin;

use App\Permission;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;


class PermissionController extends Controller
{


    public function index(Request $request)
    {
        $createUser = new Permission();
        $createUser->name = $request->name;
    }
}
