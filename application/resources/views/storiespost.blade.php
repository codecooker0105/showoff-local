<div class="table-responsive">
    <table class="table table-striped">
        <thead>
        <tr>
            <th width="3%">#</th>
            <th>Thumb</th>
            <th>User</th>
            <th>Posts</th>
            <th>Type</th>
            <th>Date & Time</th>
            <th class="text-center">Comments</th>
            <th class="text-center">Likes</th>
            <th class="text-center">Status</th>
            <th width="1%" class="no-wrap text-center">Actions</th>
        </tr>
        </thead>
        <tbody>
        <?php $row_number = ($post_list->currentpage()-1)* $post_list->perpage() + 1;
        $post_type = array('1' => 'Photo', '2' => 'Video', '3'=> 'Live');
        $post_type_class = array('1' => 'info', '2' => 'primary', '3'=> 'danger');
        $statusarr = array('1' => 'Active', '2' => 'Block');
        $statusarr_class = array('1' => 'success', '2' => 'warning');?>
        @forelse($post_list as $post)
            <tr>
                <td>{{@$row_number++}}</td>
                <td>
                    <div class="post-thumb-img position-relative">
                        @if(@$post->type == 1)
                            <img src="{{@$post->reference_url}}" alt="post image">
                        @if(count(@$post->images))
                            <span style="position: absolute; display: flex;justify-content: center;align-items: center;color: white;
                             width: 100%; height: 100%; left: 0; top: 0; background-color: rgba(0, 0, 0, .6)">
                                +{{count(@$post->images)}}
                            </span>
                        @endif
                        @elseif(@$post->type == 2)
                            <img src="{{@$post->thumbnail_url}}" alt="post image">
                        @else
                            <img src="{{@$post->thumbnail_url}}" alt="post image">
                        @endif
                    </div>
                </td>
                <td>{{@$post->users->name}}</td>
                <td>{{str_limit(@$post->post_text,20)}}</td>
                <td><span class="badge badge-{{@$post_type_class[@$post->type]}}">{{@$post_type[@$post->type]}}</span></td>
                <td>{{date('d.m.Y-h:i A', strtotime(@$post->created_at))}}</td>
                <td class="text-center">{{@$post->comments_count}}</td>
                <td class="text-center">{{@$post->likes_count}}</td>
                <td class="text-center"><span class="badge badge-{{@$statusarr_class[@$post->status]}}">{{@$statusarr[@$post->status]}}</span></td>
                <td class="no-wrap text-center no-wrap">
                    <a href="{{url('admin/posts/details/'.$post->id)}}" class="btn btn-xs btn-outline-info"><i class="la la-list"></i> Details</a>
                    @if($post->status ==1)
                        <a href="javascript:" class="btn btn-xs btn-outline-warning" id="{{$post->id}}" onclick="blockMessage(this.id)" data-toggle="modal" data-target="#blockedReason"><i class="la la-ban"></i> Block</a>
                    @else
                        <a href="javascript:" class="btn btn-xs btn-outline-success" id="{{$post->id}}"
                           onclick="postActiveFunction(this.id)"><i class="la la-check-circle-o"></i>
                            Activate</a>
                    @endif
                    <a href="javascript:" class="btn btn-xs btn-outline-danger" id="{{$post->id}}" onclick="archiveFunction(this.id)"><i class="la la-trash-o"></i> Delete</a>
                </td>
            </tr>
        @empty
            <tr>
                <td colspan="10" style="text-align: center"> No Post</td>
            </tr>
        @endforelse
        {{--<tr>
            <td>2</td>
            <td>
                <div class="post-thumb-img">
                    <span class="play-btn"></span>
                    <img src="https://images.pexels.com/photos/1684187/pexels-photo-1684187.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                         alt="">
                </div>
            </td>
            <td>Kevin Richardson</td>
            <td>Population on cut any build conduct, goddesses, threw much a read the it has and nonsense, line understood.</td>
            <td><span class="badge badge-primary">video</span></td>
            <td>21.01.2019 - 4:30 pm</td>
            <td class="text-center">5</td>
            <td class="text-center">10</td>
            <td class="text-center"><span class="badge badge-success">Active</span></td>
            <td class="text-center no-wrap">
                <a href="{{url('posts/details-10')}}" class="btn btn-xs btn-outline-info"><i class="la la-list"></i> Details</a>
                <button type="button" class="btn btn-xs btn-outline-warning" data-toggle="modal" data-target="#blockedReason"><i class="la la-ban"></i> Block</button>
                <a href="#" class="btn btn-xs btn-outline-danger"><i class="la la-trash-o"></i> Delete</a>
            </td>
        </tr>

        <tr>
            <td>3</td>
            <td>
                <div class="post-thumb-img">
                    <img src="https://images.pexels.com/photos/1449795/pexels-photo-1449795.jpeg?cs=srgb&dl=audience-band-celebration-1449795.jpg&fm=jpg"
                         alt="">
                </div>
            </td>
            <td>Bobby Grant</td>
            <td>Population on cut any build conduct, goddesses, threw much a read the it has and nonsense, line understood.</td>
            <td><span class="badge badge-info">Photo</span></td>
            <td>21.01.2019 - 4:30 pm</td>
            <td class="text-center">5</td>
            <td class="text-center">10</td>
            <td class="text-center"><span class="badge badge-success">Active</span></td>
            <td class="text-center no-wrap">
                <a href="{{url('posts/details-12')}}" class="btn btn-xs btn-outline-info"><i class="la la-list"></i> Details</a>
                <button type="button" class="btn btn-xs btn-outline-warning" data-toggle="modal" data-target="#blockedReason"><i class="la la-ban"></i> Block</button>
                <a href="#" class="btn btn-xs btn-outline-danger"><i class="la la-trash-o"></i> Delete</a>
            </td>
        </tr>

        <tr>
            <td>4</td>
            <td>
                <div class="post-thumb-img">
                    <img src="https://images.pexels.com/photos/1154189/pexels-photo-1154189.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                         alt="">
                </div>
            </td>
            <td>Kevin Richardson</td>
            <td>Population on cut any build conduct, goddesses, threw much a read the it has and nonsense, line understood.</td>
            <td><span class="badge badge-info">Photo</span></td>
            <td>21.01.2019 - 4:30 pm</td>
            <td class="text-center">5</td>
            <td class="text-center">10</td>
            <td class="text-center"><span class="badge badge-warning">Blocked</span></td>
            <td class="text-center no-wrap">
                <a href="{{url('posts/details-11')}}" class="btn btn-xs btn-outline-info"><i class="la la-list"></i> Details</a>
                <a href="#" class="btn btn-xs btn-outline-success"><i class="la la-check-circle"></i> Activate</a>
                <a href="#" class="btn btn-xs btn-outline-danger"><i class="la la-trash-o"></i> Delete</a>
            </td>
        </tr>

        <tr>
            <td>5</td>
            <td>
                <div class="post-thumb-img">
                    <span class="play-btn"></span>
                    <img src="https://images.pexels.com/photos/1047442/pexels-photo-1047442.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                         alt="">
                </div>
            </td>
            <td>Bobby Grant</td>
            <td>Population on cut any build conduct, goddesses, threw much a read the it has and nonsense, line understood.</td>
            <td><span class="badge badge-danger">live</span></td>
            <td>21.01.2019 - 4:30 pm</td>
            <td class="text-center">5</td>
            <td class="text-center">10</td>
            <td class="text-center"><span class="badge badge-success">Active</span></td>
            <td class="text-center no-wrap">
                <a href="{{url('posts/details-10')}}" class="btn btn-xs btn-outline-info"><i class="la la-list"></i> Details</a>
                <button type="button" class="btn btn-xs btn-outline-warning" data-toggle="modal" data-target="#blockedReason"><i class="la la-ban"></i> Block</button>
                <a href="#" class="btn btn-xs btn-outline-danger"><i class="la la-trash-o"></i> Delete</a>
            </td>
        </tr>--}}
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
