<div class="table-responsive">
    <?php //dd($users_list);?>
    <table class="table table-striped contentMiddle">
        <thead>
        <tr>
            <th width="3%">#</th>
            <th width="40">Image</th>
            <th>Name</th>
            <th>Email</th>
            <th>Joined Date</th>
            <th class="text-center">Followers</th>
            <th class="text-center">Following</th>
            <th class="text-center">Posts</th>
            <th class="text-center">Status</th>
            <th width="1%" class="text-center no-wrap">Actions</th>
        </tr>
        </thead>
        <tbody>
        <?php
        $statusarr_class = array('1' => 'success', '2' => 'warning');
        $statusarr = array('1' => 'Active', '2' => 'Block');
        $row_count = ($users_list->currentpage() - 1) * $users_list->perpage() + 1;
        ?>
        @forelse($users_list as $user)
            <tr id="TableRow_{{$user->id}}">
                <td>{{$row_count++}}</td>
                <td><img src="{{@$user->image_url}}" alt="" width="40"></td>
                <td><a href="{{url('admin/users/details/'.$user->id)}}">{{@$user->username}}</a></td>
                <td>{{@$user->email}}</td>
                <td>{{date('d/m/Y', strtotime($user->created_at))}}</td>
                <td class="text-center">{{@$user->follow_count}}</td>
                <td class="text-center">{{@$user->following_count}}</td>
                <td class="text-center">{{@$user->posts_count}}</td>
                <td class="text-center" id="bb_status_{{$user->id}}">
                    <span class="badge badge-{{@$statusarr_class[@$user->status]}}">{{@$statusarr[@$user->status]}}</span>
                </td>

                <td class="text-center no-wrap">
                    <a href="{{url('admin/users/details/'.$user->id)}}" class="btn btn-xs btn-outline-primary"><i class="la la-list"></i> Details</a>
                    <a href="{{url('admin/users/edit/'.$user->id)}}" class="btn btn-xs btn-outline-info"><i class="la la-edit"></i> Edit</a>
                    <span id="block_unblock_{{@$user->id}}">
                    @if($user->status == 1)
                            <a href="javascript:" class="btn btn-xs btn-outline-warning" id="{{$user->id}}"
                               onclick="statusFunction(this.id, {{$user->status}})"><i class="la la-ban"></i> Block</a>
                        @else
                            <a href="javascript:" class="btn btn-xs btn-outline-success" id="{{$user->id}}"
                               onclick="statusFunction(this.id, {{$user->status}})"><i class="la la-check-circle-o"></i>
                            Activate</a>
                        @endif
                    </span>
                    <a href="javascript:" class="btn btn-xs btn-outline-danger user-delete" id="{{$user->id}}" onclick="archiveFunction(this.id)"><i class="la la-trash-o"></i> Delete</a>
                </td>
            </tr>
        @empty
            <tr>
                <td colspan="9" style="text-align: center"><h6>No user Available</h6></td>
            </tr>
        @endforelse
        </tbody>
    </table>
</div>

<div class="mt-3">
    <div class="d-flex">
        <div class="mr-auto"></div>
        {{ $users_list->render( "pagination::bootstrap-4") }}
    </div>
</div>