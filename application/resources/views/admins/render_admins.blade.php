<div class="table-responsive">
    <table class="table table-striped contentMiddle">
        <thead>
        <tr>
            <th width="3%">#</th>
            <th width="40">Image</th>
            <th>Name</th>
            <th>Email</th>
            <th>Joined Date</th>
            <th width="1%" class="text-center no-wrap">Actions</th>
        </tr>
        </thead>
        <tbody>
        <?php $row_count = ($admins_list->currentpage()-1)* $admins_list->perpage() + 1;?>
        @forelse($admins_list as $admin)
            <tr>
                <td>{{$row_count++}}</td>
                <td><img src="{{@$admin->image_url}}" alt="" width="40"></td>
                <td><a href="{{url('admin/staffs/details/'.$admin->id)}}">{{@$admin->name}}</a></td>
                <td>{{@$admin->email}}</td>
                <td>{{date('d/m/Y', strtotime($admin->created_at))}}</td>
                <td class="text-center no-wrap">
                    <a href="{{url('admin/staffs/details/'.$admin->id)}}" class="btn btn-xs btn-outline-primary"><i class="la la-list"></i> Details</a>
                    <a href="{{url('admin/staffs/edit/'.$admin->id)}}" class="btn btn-xs btn-outline-info"><i class="la la-edit"></i> Edit</a>
                    {{--<a href="#" class="btn btn-xs btn-outline-warning"><i class="la la-ban"></i> Block</a>--}}
                    <a href="javascript:" class="btn btn-xs btn-outline-danger user-delete" id="{{$admin->id}}" onclick="archiveFunction(this.id)"><i class="la la-trash-o"></i> Delete</a>
                </td>
            </tr>
        @empty
            <tr>
                <td colspan="9" style="text-align: center"><h6>No Admin Available</h6></td>
            </tr>
        @endforelse
        </tbody>
    </table>
</div>

<div class="mt-3">
    <div class="d-flex">
        <div class="mr-auto"></div>
        {{ $admins_list->render( "pagination::bootstrap-4") }}
    </div>
</div>