<?php

namespace App\Http\Controllers\Admin;

use App\Posts;
use App\Reports;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\View;

class ReportController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public $row_per_page = 10;

    public function index(Request $request)
    {
        $data = array();
        $data['pageTitle'] = 'Reports';
        $data['reports'] = 'm-menu__item--active';

        $data['reportList'] = Reports::where(function ($query) use ($request) {
        })->whereHas('post', function ($q) use ($request) {
            if ($request->search_string) {
                $q->where('post_text', "like", "%$request->search_string%");
            }
        })->orderBy('id', 'desc')->paginate($this->row_per_page);
        if ($request->ajax()) {
            return Response::json(View::make('reports.render-reports', $data)->render());
        } else {
            return view('reports.reports')->with($data);
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
        //
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
            $category = Reports::find($id);
            $category->delete();
            return 1;
        }
    }
}