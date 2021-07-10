@forelse($comments as $comment)
    <div class="comment-item" @if($comment->parent_id != null) @endif>
        <div class="avatar">
            <img width="40" src="{{@$comment->users->image_url}}" alt="">
        </div>
        <div class="comment-details">
            <div class="comment-header">
                <div class="">
                    <h5 class="name"><a href="{{url('admin/users/details/'.$comment->users->id)}}">{{@$comment->users->username}}</a></h5>
                    <span class="time">{{date('Y-m-d h:i A', strtotime(@$comment->created_at))}}</span>
                </div>
                <div class="actions">
                    <a href="javascript:void(0);" id="{{$comment->id}}" onclick="archiveFunction(this.id)" class="action">Delete</a>
                </div>
            </div>

            <div class="comment">
                <p class="text">
                    {{@$comment->comment}}
                </p>
                <div class="image">
                    @if(@$comment->comment_file)
                        <img src="{{$comment->comment_file}}" alt="">
                    @else
                    @endif
                </div>
            </div>

            @include('posts.commentsDisplay', ['comments' => $comment->replies])
        </div>
    </div>
@empty
@endforelse


{{--@forelse($comments as $comment)--}}
{{--<div class="comment-item">--}}
{{--<div class="avatar">--}}
{{--<img width="40" src="http://parallaxlogicit.com/showoff/assets/users_image/260/1586604890b97386bb-dce0-4bb5-9d9b-34b6dbc2aaeb.png" alt="">--}}
{{--</div>--}}
{{--<div class="comment-details">--}}
{{--<div class="comment-header">--}}
{{--<div class="">--}}
{{--<h4 class="name">John Doe</h4>--}}
{{--<span class="time">12/12/2019</span>--}}
{{--</div>--}}
{{--<div class="actions">--}}
{{--<a href="#" class="action">Delete</a>--}}
{{--</div>--}}
{{--</div>--}}

{{--<div class="comment">--}}
{{--<p class="text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis cumque deserunt esse!</p>--}}
{{--</div>--}}

{{--<div class="comment-item" @if($comment->parent_id != null) style="margin-left:40px !important;" @endif>--}}
{{--<div class="avatar">--}}
{{--<img width="40" src="http://parallaxlogicit.com/showoff/assets/users_image/260/1586604890b97386bb-dce0-4bb5-9d9b-34b6dbc2aaeb.png" alt="">--}}
{{--</div>--}}
{{--<div class="comment-details">--}}
{{--<div class="comment-header">--}}
{{--<div class="">--}}
{{--<h4 class="name">John Doe</h4>--}}
{{--<span class="time">12/12/2019</span>--}}
{{--</div>--}}
{{--<div class="actions">--}}
{{--<a href="#" class="action">Delete</a>--}}
{{--</div>--}}
{{--</div>--}}

{{--<div class="comment">--}}
{{--<p class="text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis cumque deserunt esse!</p>--}}

{{--<div class="image">--}}
{{--<img width="40" src="https://images.pexels.com/photos/3324591/pexels-photo-3324591.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="">--}}
{{--</div>--}}
{{--</div>--}}
{{--</div>--}}
{{--</div>--}}
{{--</div>--}}

{{--@include('posts.commentsDisplay', ['comments' => $comment->replies])--}}
{{--</div>--}}
{{--@empty--}}
{{--@endforelse--}}