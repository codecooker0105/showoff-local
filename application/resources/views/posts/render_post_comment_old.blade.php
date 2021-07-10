<div class="post-footer">
    <a href="#commentList" class="meta-links active"><i class="la la-comments-o"></i> Comments ({{@$post->comments_count}})</a>
    <a href="#likedBy" class="meta-links"><i class="la la-heart-o"></i> Likes ({{@$post->likes_count}})</a>
    <a href="#tagUsers" class="meta-links"><i class="la la-tags"></i> Tags ({{@$post->tags_count}})</a>
</div>

<div class="interactions">
    <div id="commentList" class="interaction-list active">
        <div class="comment-list">



            <div class="comment-item">
                <div class="avatar">
                    <img width="40" src="http://parallaxlogicit.com/showoff/assets/users_image/260/1586604890b97386bb-dce0-4bb5-9d9b-34b6dbc2aaeb.png" alt="">
                </div>
                <div class="comment-details">
                    <div class="comment-header">
                        <div class="">
                            <h4 class="name">John Doe</h4>
                            <span class="time">12/12/2019</span>
                        </div>
                        <div class="actions">
                            <a href="#" class="action">Delete</a>
                        </div>
                    </div>

                    <div class="comment">
                        <p class="text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis cumque deserunt esse!</p>
                    </div>

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

                                {{--<div class="image">--}}
                                    {{--<img width="40" src="https://images.pexels.com/photos/3324591/pexels-photo-3324591.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="">--}}
                                {{--</div>--}}
                            {{--</div>--}}
                        {{--</div>--}}
                    {{--</div>--}}
                </div>
            </div>

            <div class="comment-item" style="margin-left: 23px !important;">
                <div class="avatar">
                    <img width="40" src="http://parallaxlogicit.com/showoff/assets/users_image/260/1586604890b97386bb-dce0-4bb5-9d9b-34b6dbc2aaeb.png" alt="">
                </div>
                <div class="comment-details">
                    <div class="comment-header">
                        <div class="">
                            <h4 class="name">John Doe</h4>
                            <span class="time">12/12/2019</span>
                        </div>
                        <div class="actions">
                            <a href="#" class="action">Delete</a>
                        </div>
                    </div>
                    <div class="comment">
                        <p class="text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis cumque deserunt esse!</p>
                    </div>
                </div>
            </div>

        </div>


        {{--<table class="table table-striped">
            <thead>
            <tr>
                <th>Image</th>
                <th>Name</th>
                <th>Comment</th>
                <th>Date & Time</th>
                <th width="2%" class="text-center"></th>
            </tr>
            </thead>
            <tbody>
            @forelse($post->comments as $comments)
                <tr>
                    <td><img src="{{@$comments->users->image_url}}" alt="" width="40"></td>
                    <td><a href="{{url('admin/users/details/'.$comments->users->id)}}">{{@$comments->users->username}}</a></td>
                    <td>
                        {{@$comments->comment}}
                        @if(@$comments->comment_file)
                            <br>
                            <img src="{{$comments->comment_file}}" width="40" height="40">
                        @else
                        @endif
                    </td>
                    <td>{{date('Y-m-d - h:i A', strtotime(@$comments->created_at))}}</td>
                    <td class="text-center">
                        <a class="dropdown-item text-muted" href="#" title="Delete" id="{{$comments->id}}" onclick="archiveFunction(this.id)"><i class="la la-trash-o"></i></a>
                    </td>
                </tr>
                --}}{{--@include('posts.render_post_comment', ['comments' => $comments->replies])--}}{{--
            @empty
                <tr>
                    <td colspan="4" style="text-align: center">No Comment</td>
                </tr>
            @endforelse
            </tbody>
        </table>--}}
    </div>

    <div id="likedBy" class="interaction-list">
        <table class="table table-striped contentMiddle">
            <thead>
            <tr>
                <th width="40">Image</th>
                <th>Name</th>
                <th>Date & Time</th>
            </tr>
            </thead>
            <tbody>
            @forelse($post->likes as $like)
                <tr>
                    <td><img src="{{@$like->users->image_url}}" alt="" width="40"></td>
                    <td><a href="{{url('admin/users/details/'.$like->users->id)}}">{{@$like->users->username}}</a></td>
                    <td>{{date('Y-m-d - h:i A', strtotime(@$like->created_at))}}</td>
                </tr>
            @empty
                <tr>
                    <td colspan="4" style="text-align: center">No Like</td>
                </tr>
            @endforelse
            </tbody>
        </table>
    </div>

    <div id="tagUsers" class="interaction-list">
        <table class="table table-striped contentMiddle">
            <thead>
            <tr>
                <th width="80">Image</th>
                <th>Name</th>
            </tr>
            </thead>
            <tbody>
            @forelse($post->tags as $tag)
                <tr>
                    <td><img src="{{@$tag->users->image_url}}" alt="" width="80"></td>
                    <td><a href="{{url('admin/users/details/'.$tag->users->id)}}">{{@$tag->users->username}}</a></td>
                </tr>
            @empty
                <tr>
                    <td colspan="2" style="text-align: center">No Tag</td>
                </tr>
            @endforelse
            </tbody>
        </table>
    </div>
</div>