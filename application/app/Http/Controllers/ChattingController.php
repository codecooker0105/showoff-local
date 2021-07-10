<?php

namespace App\Http\Controllers;

use App\Events\MessageSent;
use Illuminate\Http\Request;

class ChattingController extends Controller
{
    public function index()
    {

//        $options = array(
//            'cluster' => 'ap2',
//            'useTLS' => true
//        );

//        $pusher = new \Pusher\Pusher(
//            '25a079e74e1dc0bb05c9',
//            'da002e07f37ba71d071c',
//            '980865',
//            $options
//        );

//        $data['message'] = 'hello world';
//        $pusher->trigger('my-channel', 'my-event', $data);
//        dd($pusher);
//        only this will work other wont . and for this  run on application folder on console  php artisan queue:listen
//        $result = event(new MessageSent("message2","Hello world2"));

        $data = new \stdClass();
        $data->message = "Hello world2";
        $data->receiver = "Rayhan";
        $data->room_id = "Rayhan87878";
        $data->event_name = "Rayhankdj";
        $result = broadcast(new MessageSent($data))->toOthers();
    }
}
