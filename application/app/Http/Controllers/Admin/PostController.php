<?php

namespace App\Http\Controllers\Admin;

use App\PostComments;
use App\Posts;
use function foo\func;
use http\Exception\BadConversionException;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\View;

class PostController extends Controller
{
    public $comment_ids = array();
    public $paginate = 10;

    public function index(Request $request)
    {
        $data = array();
        $data['pageTitle'] = 'Posts';
        $data['posts'] = 'm-menu__item--active';
        $post_list = Posts::where(function ($query) use ($request) {
            if ($request->search) {
                $query->where('post_text', 'like', '%' . $request->search . '%')
                    ->orWhereHas('users', function ($subquery) use ($request) {
                        $subquery->where('username', "like", "%$request->search%");
                    })
                    ->orWhereHas('category', function ($subquery) use ($request) {
                        $subquery->where('name', "like", "%$request->search%");
                    });
            }
            if ($request->type) {
                $query->where('type', $request->type);
            }
        })->with('users', 'images')
            ->withCount(['comments', 'likes', 'tags']);

        if ($request->sorting == "like") {
            $post_list = $post_list->orderBy('likes_count', 'desc')->paginate($this->paginate);
        } elseif ($request->sorting == "comment") {
            $post_list = $post_list->orderBy('comments_count', 'desc')->paginate($this->paginate);
        } elseif ($request->sorting == "most_recent") {
            $post_list = $post_list->orderBy('created_at', 'desc')->paginate($this->paginate);
        } elseif ($request->sorting == "old_post") {
            $post_list = $post_list->orderBy('created_at', 'asc')->paginate($this->paginate);
        } else {
            $post_list = $post_list->latest()->paginate($this->paginate);
        }
        $data['post_list'] = $post_list;

        if ($request->ajax()) {
            return Response::json(View::make('posts.render_post', $data)->render());
        } else {
            return view('posts.posts')->with($data);
        }
    }

    public function filter(Request $request)
    {
        if ($request->ajax()) {
            $filter = $request->get('filter');
            $data['post_list'] = Posts::with('users')
                ->withCount(['comments', 'likes'])
                ->where('type', $filter)
                ->latest()->paginate($this->paginate)->setPath(url('admin/posts') . "?filter=" . $request->filter);
            return Response::json(View::make('posts.render_post', $data)->render());
        }
    }

    public function details($id)
    {
        $data = array();
        $data['pageTitle'] = 'Post Details'; // please use post title
        $data['posts'] = 'm-menu__item--active';
        $data['post'] = Posts::with(['comments' => function ($q) {
            $q->with(['users', 'replies' => function ($qq) {
                $qq->with('users');
            }])->latest();
            $q->where('parent_id', 0);
        }, 'tags', 'images'])->with(['likes' => function ($q) {
            $q->with('users')->latest();
        }])->with('users')
            ->withCount(['comments', 'likes', 'tags'])
            ->find($id);
        $data['comments'] = $data['post']->comments;
        if ($data['post']) {
            return view('posts.details_video')->with($data);
        } else {
            return back();
        }
    }

    public function webView($id)
    {
        $data = array();
        $data['pageTitle'] = 'Post Details'; // please use post title
        $data['posts'] = 'm-menu__item--active';
        $data['post'] = Posts::with(['comments' => function ($q) {
            $q->with('users')->latest();
        }, 'tags', 'images'])->with(['likes' => function ($q) {
            $q->with('users')->latest();
        }])->with('users')
            ->withCount(['comments', 'likes'])
            ->find($id);

        if ($data['post']) {
            return view('posts.post-view')->with($data);
        } else {
            abort(404);
        }
    }

    public function activeStatus(Request $request)
    {
        if ($request->ajax()) {
            $id = $request->get('id');
            $post = Posts::find($id);
            $post->status = 1;
            $post->log_message = null;
            $post->save();
            $html = '<a href="javascript:" class="btn btn-xs btn-outline-warning" id="' . $id . '" onclick="blockMessage(' . $id . ')" data-toggle="modal" data-target="#blockedReason"><i class="la la-ban"></i> Block</a>';
            return Response::json($html);
        }
    }

    public function blockStatus(Request $request)
    {
        if ($request->ajax()) {
            $id = $request->get('post_id');
            $log_message = $request->get('log_message');
            $post = Posts::find($id);
            $post->status = 2;
            $post->log_message = $log_message;
            $post->save();
            $html = '<a href="javascript:" class="btn btn-xs btn-outline-success" id="' . $id . '"
                               onclick="postActiveFunction(' . $id . ')"><i class="la la-check-circle-o"></i>
                            Activate</a>';
            return Response::json($html);
        }
    }

    public function delete(Request $request)
    {
        if ($request->ajax()) {
            $id = $request->get('id');
            $post = Posts::find($id);
            if (file_exists($post->file_path)) {
                unlink($post->file_path);
            }
            $post->delete();
            return 1;
        }
    }

    public function deleteFromDetail($id)
    {
        $post = Posts::find($id);
        if (file_exists($post->file_path)) {
            unlink($post->file_path);
        }
        $post->delete();
        $data['post_list'] = Posts::with('comments', 'users')
            ->withCount(['comments', 'likes'])
            ->latest()->paginate($this->paginate);
        return redirect('admin/posts')->with('message', 'Post has been deleted.');
    }

    public function commentDelete(Request $request)
    {
        if ($request->ajax()) {
            $id = $request->get('id');
            $comment = PostComments::find($id);
            $post_id = $comment->post_id;
            $this->comment_ids[] = $id;
            $get_comments = PostComments::where('id', $id)->with('replies')->first();
            if (!$get_comments->replies->isEmpty()) {
                $this->get_reply_ids($get_comments->replies);
            }
            PostComments::destroy($this->comment_ids);
            $data['post'] = Posts::with(['comments' => function ($q) {
                $q->with(['users', 'replies' => function ($qq) {
                    $qq->with('users');
                }])->latest();
                $q->where('parent_id', 0);
            }])->with(['likes' => function ($q) {
                $q->with('users')->latest();
            }])->with('users')
                ->withCount(['comments', 'likes'])
                ->find($post_id);

            $data['comments'] = $data['post']->comments;
            return Response::json(View::make('posts.render_post_comment', $data)->render());
        }
    }

    function get_reply_ids($replies)
    {
        foreach ($replies as $reply) {
            $this->comment_ids[] = @$reply->id;
            if (!$reply->replies->isEmpty()) {
                $this->get_reply_ids($reply->replies);
            }
        }
        return $this->comment_ids;
    }
}