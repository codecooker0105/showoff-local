<table class="table table-striped contentMiddle">
    <thead>
    <tr>
        <th width="3%">#</th>
        <th>Name</th>
        <th>Owner Name</th>
        <th>Email</th>
        <th>Phone No</th>
        <th class="text-center">Status</th>
        <th class="text-center">Ads</th>
        <th width="5%" class="text-center">Actions</th>
    </tr>
    </thead>
    <tbody>
    <?php $i = ($users_list->currentpage()-1)* $users_list->perpage() + 1;
    $statusarr = array('1' => 'Active', '2' => 'Block');
    $statusarr_class = array('1' => 'success', '2' => 'warning');?>
    @forelse($users_list as $user)
        <tr>
            <td>{{$i++}}</td>
            <td><a href="{{url('admin/merchants/details/'.$user->id)}}">{{@$user->name}}</a></td>
            <td>{{@$user->owner_name}}</td>
            <td>{{@$user->email}}</td>
            <td>{{@$user->phone}}</td>
            <td class="text-center"><span class="badge badge-{{@$statusarr_class[@$user->status]}}">{{@$statusarr[@$user->status]}}</span></td>
            <td class="text-center">{{$user->ads()->count()}}</td>
            <td class="no-wrap text-center">
                <a class="btn btn-xs btn-outline-primary" href="{{url('admin/merchants/details/'.$user->id)}}"><i class="la la-list-alt"></i> Details</a>
                <a class="btn btn-xs btn-outline-info" href="{{url('admin/merchants/edit/'.$user->id)}}"><i class="la la-edit"></i> Edit</a>
                @if($user->status ==1)
                    <a href="javascript:" class="btn btn-xs btn-outline-warning" id="{{$user->id}}"
                       onclick="merchantstatusFunction(this.id)"><i class="la la-ban"></i> Block</a>
                @else
                    <a href="javascript:" class="btn btn-xs btn-outline-success" id="{{$user->id}}"
                       onclick="merchantstatusFunction(this.id)"><i class="la la-check-circle-o"></i>
                        Activate</a>
                @endif
                <a href="javascript:" class="btn btn-xs btn-outline-danger user-delete" id="{{$user->id}}" onclick="archiveFunction(this.id)"><i class="la la-trash-o"></i> Delete</a>
            </td>


        </tr>
    @empty
        <tr>
            <td colspan="9" style="text-align: center"><h6>No merchant Available</h6></td>
        </tr>
    @endforelse
    </tbody>
</table>
<div class="mt-3">
    <div class="d-flex">
        <div class="mr-auto"></div>
        <div class="">
            <nav aria-label="">
                {!! @$users_list->render( "pagination::bootstrap-4") !!}
            </nav>
        </div>
    </div>
</div>