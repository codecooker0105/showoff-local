<table class="table table-striped">
    <thead>
    <tr>
        <th width="3%">#</th>
        <th>Ads</th>
        <th>Start</th>
        <th>End</th>
        <th class="text-center">Impression</th>
        <th class="text-center">Clicks</th>
        <th class="text-center">Status</th>
        <th width="5%" class="no-wrap text-center">Actions</th>
    </tr>
    </thead>
    <tbody>
    @php
        $row_count = ($ads_list->currentpage()-1)* $ads_list->perpage() + 1;
        $statusarr = array('1' => 'Active', '2' => 'Block');
        $statusarr_class = array('1' => 'success', '2' => 'warning');
    @endphp
    @forelse($ads_list as $ads)
        <tr>
            <td>{{$row_count++}}</td>
            <td><a href="{{url('admin/ads/details/'.$ads->id)}}">{{$ads->title}}</a></td>
            <td>{{date('d/m/Y - h:i A', strtotime($ads->start_time))}}</td>
            <td>{{date('d/m/Y - h:i A', strtotime($ads->end_time))}}</td>
            <td class="text-center">2335</td>
            <td class="text-center">150</td>
            <td class="text-center"><span class="badge badge-{{@$statusarr_class[@$ads->status]}}">{{@$statusarr[@$ads->status]}}</span></td>
            <td class="no-wrap text-center">
                <a href="{{url('admin/ads/details/'.$ads->id)}}" class="btn btn-xs btn-outline-primary"><i
                            class="la la-list"></i> Details</a>
                @if($ads->status ==1)
                    <a href="javascript:" class="btn btn-xs btn-outline-warning" id="{{$ads->id}}"
                       onclick="statusFunction(this.id)"><i class="la la-ban"></i> Block</a>
                @else
                    <a href="javascript:" class="btn btn-xs btn-outline-success" id="{{$ads->id}}"
                       onclick="statusFunction(this.id)"><i class="la la-check-circle-o"></i>
                        Activate</a>
                @endif
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