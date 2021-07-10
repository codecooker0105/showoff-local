<table class="table table-striped">
    <thead>
    <tr>
        <th width="3%">#</th>
        <th>Company Name</th>
        <th>Company Logo</th>
        {{--<th>Ad Image</th>--}}
        <th>Start</th>
        <th>End</th>
        <th class="text-center">Status</th>
        <th width="5%" class="no-wrap text-center">Actions</th>
    </tr>
    </thead>
    <tbody>
    @php
        $row_count = ($ads_list->currentpage()-1)* $ads_list->perpage() + 1;
        $statusarr = array('1' => 'Active', '2' => 'Block', '3' => 'Expired', '4' => 'Pending');
        $statusarr_class = array('1' => 'success', '2' => 'warning', '3' => 'danger', '4' => 'info');
    @endphp
    @forelse($ads_list as $ads)
        <tr>
            <td>{{$row_count++}}</td>
            <td><a href="{{url('admin/ads/details/'.$ads->id)}}">{{$ads->company_name}}</a></td>
            {{--<td><img src="{{@$ads->ads_banner}}" alt="" class="img-thumbnail" width="120"></td>--}}
            <td><img src="{{@$ads->company_logo}}" alt="" class="img-thumbnail" width="120"></td>
            <td>{{$ads->start_time ? date('d/m/Y - h:i A', strtotime($ads->start_time)) : ""}}</td>
            <td>{{$ads->end_time ? date('d/m/Y - h:i A', strtotime($ads->end_time)) : ""}}</td>
            <td class="text-center"><span class="badge badge-{{@$statusarr_class[@$ads->status]}}">{{@$statusarr[@$ads->status]}}</span></td>
            <td class="no-wrap text-center">
                <a href="{{url('admin/ads/details/'.$ads->id)}}" class="btn btn-xs btn-outline-primary"><i
                            class="la la-list"></i> Details</a>
                <a href="{{url('admin/ads/edit/'.$ads->id)}}" class="btn btn-xs btn-outline-info"><i
                            class="la la-edit"></i> Edit</a>
                <a href="javascript:" class="btn btn-xs btn-outline-danger" id="{{$ads->id}}"
                   onclick="archiveFunction(this.id)"><i class="la la-trash"></i> Delete</a>
            </td>
        </tr>
    @empty
        <tr>
            <td colspan="9" style="text-align: center"><h6>No ads available</h6></td>
        </tr>
    @endforelse
    </tbody>

</table>

<div class="mt-4">
    <div class="d-flex">
        <div class="mr-auto"></div>
        {{ $ads_list->render( "pagination::bootstrap-4") }}
    </div>
</div>