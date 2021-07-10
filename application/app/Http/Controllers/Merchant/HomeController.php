<?php

namespace App\Http\Controllers\Merchant;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class HomeController extends Controller
{
    public function index(){
        $data = array();
        $data['pageTitle'] = 'Merchant Dashboard';
        $data['dashboard'] = 'm-menu__item--active';
        return view('merchantpanel.dashboard.dashboard')->with($data);
    }
}
