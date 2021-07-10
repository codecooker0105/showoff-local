<?php

namespace App\Http\Controllers\Admin;

use App\PostsCategory;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\View;

class CategoryController extends Controller
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
        $data['pageTitle'] = 'Categories';
        $data['categories'] = 'm-menu__item--open m-menu__item--expanded';
        $data['category_list'] = 'm-menu__item--active';

        $data['categoryList'] = PostsCategory::where(function ($query) use ($request) {
            if (!empty($request->search_string)) {
                $query->where('name', "like", "%$request->search_string%");
            }
        })->withCount(['posts'])->orderBy('id', 'desc')->paginate($this->row_per_page);
        if ($request->ajax()) {
            return Response::json(View::make('categories.render-list', $data)->render());
        } else {
            return view('categories.list')->with($data);
        }

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data = array();
        $data['pageTitle'] = 'Add New Category'; // please use user name
        $data['categories'] = 'm-menu__item--open m-menu__item--expanded';
        $data['add_category'] = 'm-menu__item--active';
        return view('categories.add')->with($data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|unique:posts_categories',
        ]);
        if ($validator->fails()) {
            return redirect('admin/category/create')->withErrors($validator)->withInput();
        }
        $category = new PostsCategory();
        $category->name = $request->name;
        $category->save();
        return redirect('admin/category/')->with('message', 'Category created successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = array();
        $data['category'] = PostsCategory::find($id);
        if ($data['category'] == null) {
            return back();
        } else {
            $data['pageTitle'] = 'Category Edit'; //
            $data['categories'] = 'm-menu__item--open m-menu__item--expanded';
            $data['category_list'] = 'm-menu__item--active';
            return view('categories.edit')->with($data);
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|unique:posts_categories,name,' . $id
        ]);
        if ($validator->fails()) {
            return redirect('admin/category/' .$id. '/edit')->withErrors($validator)->withInput();
        }
        $category = PostsCategory::find($id);
        $category->name = $request->name;
        $category->save();
        return redirect('admin/category/')->with('message', 'Category updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
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
            $category = PostsCategory::find($id);
            $category->delete();
            return 1;
        }
    }
}
