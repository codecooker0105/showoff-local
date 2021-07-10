<div class="post-footer">
    <a href="#commentList" class="meta-links active"><i class="la la-comments-o"></i> Comments ({{@$post->comments_count}})</a>
    <a href="#likedBy" class="meta-links"><i class="la la-heart-o"></i> Likes ({{@$post->likes_count}})</a>
    <a href="#tagUsers" class="meta-links"><i class="la la-tags"></i> Tags ({{@$post->tags_count}})</a>
</div>

<div class="interactions">
    <div id="commentList" class="interaction-list active">
        <div class="comment-list">
            @include('posts.commentsDisplay')
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
                    <td><img src="{{asset(@$like->users->image_url)}}" alt="" width="40"></td>
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
                    <td><img src="{{asset(@$tag->users->image_url)}}" alt="" width="80"></td>
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