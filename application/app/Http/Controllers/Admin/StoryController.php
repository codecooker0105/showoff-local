<?php

namespace App\Http\Controllers\Admin;

use App\Stories;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\View;

class StoryController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public $paginate = 10;

    public function index(Request $request)
    {
        $data = array();
        $data['pageTitle'] = 'Stories';
        $data['stories'] = 'm-menu__item--active';
//        $data['story_list'] = Stories::with('users', 'images')->latest()->paginate($this->paginate);

        $data['story_list'] = Stories::where(function ($query) use ($request) {
            if ($request->type) {
                $query->where('type', $request->type);
            }
            if ($request->sorting) {
                $query->where('status', $request->sorting);
            }
        })->with('users', 'images')->orderBy('id', 'desc')->paginate($this->paginate);

//        if ($request->sorting == "old_story") {
//            $data['story_list'] = $data['story_list']->orderBy('id', 'asc')->paginate($this->paginate);
//        } else {
//            $data['story_list'] = $data['story_list']->orderBy('id', 'desc')->paginate($this->paginate);
//        }

        if ($request->ajax()) {
            return Response::json(View::make('stories.render_story', $data)->render());
        } else {
            return view('stories.stories')->with($data);
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = array();
        $data['pageTitle'] = 'Stories';
        $data['stories'] = 'm-menu__item--active';
        $data['story'] = Stories::where('id', $id)->with('users', 'images')->first();
        return view('stories.details')->with($data);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function delete(Request $request)
    {
        if ($request->ajax()) {
            $id = $request->get('id');
            $story = Stories::find($id);
            $story->delete();
            return 1;
        }
    }
}