<?php

namespace App\Http\Controllers;

use App\Posts;
use App\User;
use App\CommonSettings;
use Folour\Flavy\Exceptions\FlavyException;
use Folour\Flavy\FlavyFacade as Flavy;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use mysql_xdevapi\Exception;
use OpenTok\OpenTok;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //$this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('home');
    }
    public function rolecheck()
    {
        $user = User::find(12);
        //$user->hasRole('admin');
        dd($user->hasRole('merchant'));
    }
    public function about_us(){
        $data = array();
        $data['data'] = CommonSettings::find(1);
        return view('about_us')->with($data);
    }
    public function privacy_policy(){
        $data = array();
        $data['data'] = CommonSettings::find(1);
        return view('privacy_policy')->with($data);
    }
    public function termsandcond(){
        $data = array();
        $data['data'] = CommonSettings::find(1);
        return view('termsandcond')->with($data);
    }

    public function s3Live(){
        $new_posts=Posts::whereType(3)->get();
        $apiKey='46254272';
        $apiSecret='7499c79ac2747b08d7dbd99e659074ac9b0a4112';
        $opentok = new OpenTok($apiKey, $apiSecret);
        $archiveList = $opentok->listArchives();
        $items=collect($archiveList->getItems());

       
        foreach ($new_posts as $new_post){


                $session =  $new_post->opentok_session;
                $inPages = $items->filter(function($collection) use($session){
                    if ($collection->sessionId == $session){
                        return $collection;
                    }

                });
                $stop_object=$inPages->first();

                if (@$stop_object->url){


                    if ($new_post->thumbnail_url == null){
                        try{

                            $tempname=time().'thumbd.jpg';
                            $temppath=base_path('tempfiles/'.$tempname);
                            $filename=base_path().'/tempfiles/'.time()."archive.mp4";
                            file_put_contents($filename,file_get_contents($stop_object->url));
                            Flavy::thumbnail($filename, $temppath, 1);

                            $user_id=$new_post->user_id;
                            $uploadPath = 'assets/post_resource/' . $user_id . '/';
                            Storage::disk('s3')->put($uploadPath.$tempname,file_get_contents($temppath), 'public');
                            $video_thumb__url = $uploadPath . $tempname;

                            $new_post->thumbnail_url = env('s3_url_files').$video_thumb__url;
                            unlink($temppath);
                            unlink($filename);
                            echo $new_post->id.'<br>';

                        }catch (FlavyException $exception){

                            echo 'failed '.$new_post->id.'<br>';
                        }

                    }



                    $new_post->opentok_s3=$stop_object->url;


                    $new_post->save();


                }


        }
    }
}
