<div class="table-responsive">
    <table class="table table-striped">
        <thead>
        <tr>
            <th width="3%">#</th>
            <th>Thumb</th>
            <th>User</th>
            <th>Posts</th>
            <th>Type</th>
            <th>Category</th>
            <th>Date & Time</th>
            <th class="text-center">Comments</th>
            <th class="text-center">Likes</th>
            <th class="text-center">Tags</th>
            <th class="text-center">Status</th>
            <th width="1%" class="no-wrap text-center">Actions</th>
        </tr>
        </thead>
        <tbody>
        <?php
        $row_number = ($post_list->currentpage() - 1) * $post_list->perpage() + 1;
        $post_type = array('1' => 'Photo', '2' => 'Video', '3' => 'Live');
        $post_type_class = array('1' => 'info', '2' => 'primary', '3' => 'danger');
        $statusarr = array('1' => 'Active', '2' => 'Block');
        $statusarr_class = array('1' => 'success', '2' => 'warning');?>
        @forelse($post_list as $post)
            <tr id="TableRow_{{$post->id}}">
                <td>{{@$row_number++}}</td>
                <td>
                    <div class="post-thumb-img position-relative">
                        @if(@$post->type == 1)
                            <img src="{{asset(@$post->file_path)}}" alt="post image">
                            @if(count(@$post->images))
                                <span style="position: absolute; display: flex;justify-content: center;align-items: center;color: white;
                             width: 100%; height: 100%; left: 0; top: 0; background-color: rgba(0, 0, 0, .6)">
                                +{{count(@$post->images)}}
                            </span>
                            @endif
                        @elseif(@$post->type == 2)
                            <img src="{{asset(@$post->thumbnail_url)}}" alt="post image">
                        @else
                            <img src="{{asset(@$post->thumbnail_url)}}" alt="post image">
                        @endif
                    </div>
                </td>
                <td>{{@$post->users->username}}</td>
                <td>{{str_limit(@$post->post_text,20)}}</td>
                <td><span class="badge badge-{{@$post_type_class[@$post->type]}}">{{@$post_type[@$post->type]}}</span></td>
                <td>{{@$post->category->name}}</td>
                <td>{{date('d.m.Y-h:i A', strtotime(@$post->created_at))}}</td>
                <td class="text-center">{{@$post->comments_count}}</td>
                <td class="text-center">{{@$post->likes_count}}</td>
                <td class="text-center">{{@$post->tags_count}}</td>
                <td class="text-center" id="bb_status_{{$post->id}}">
                    <span class="badge badge-{{@$statusarr_class[@$post->status]}}">
                        {{@$statusarr[@$post->status]}}
                    </span>
                </td>
                <td class="no-wrap text-center no-wrap">
                    <a href="{{url('admin/posts/details/'.$post->id)}}" class="btn btn-xs btn-outline-info"><i class="la la-list"></i> Details</a>
                    <span id="block_unblock_{{@$post->id}}">
                        @if($post->status ==1)
                                <a href="javascript:" class="btn btn-xs btn-outline-warning" id="{{$post->id}}" onclick="blockMessage(this.id)" data-toggle="modal" data-target="#blockedReason"><i class="la la-ban"></i> Block</a>
                        @else
                            <a href="javascript:" class="btn btn-xs btn-outline-success" id="{{$post->id}}"
                               onclick="postActiveFunction(this.id)"><i class="la la-check-circle-o"></i>
                            Activate</a>
                        @endif
                    </span>

                    <a href="javascript:" class="btn btn-xs btn-outline-danger" id="{{$post->id}}" onclick="archiveFunction(this.id)"><i class="la la-trash-o"></i> Delete</a>
                </td>
            </tr>
        @empty
            <tr>
                <td colspan="10" style="text-align: center"> No Post</td>
            </tr>
        @endforelse
        </tbody>
    </table>
</div>
<div class="mt-3">
    <div class="d-flex">
        <div class="mr-auto"></div>
        <div class="">
            <nav aria-label="">
                {!! @$post_list->render( "pagination::bootstrap-4") !!}
            </nav>
        </div>
    </div>
</div>

{{--Log message modal--}}
<div class="modal fade" id="blockedReason" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <form action="#" class="modal-content">
            {{--<div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>--}}
            <div class="modal-body">
                <h5 id="" class="modal-title mb-4">Confirmation</h5>
                <div class="form-group">
                    <label for="reason">Comment</label>
                    <textarea name="blocked_comment" id="reason" rows="3" class="form-control"></textarea>
                    <input type="hidden" name="id" id="post_id">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-sm btn-primary" onclick="postBlockFunction()">Confirm</button>
                <button type="button" class="btn btn-sm btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </form>
    </div>
</div>
