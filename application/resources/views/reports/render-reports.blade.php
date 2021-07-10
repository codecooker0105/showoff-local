<div class="table-responsive">
    <table class="table table-striped">
        <thead>
            <tr>
                <th width="3%">#</th>
                <th>Post</th>
                <th>Post By</th>
                <th>Reported By</th>
                <th>Date & Time</th>
                <th width="1%" class="no-wrap text-center">Actions</th>
            </tr>
        </thead>

        <tbody>
        <?php $row_number = ($reportList->currentpage() - 1) * $reportList->perpage() + 1; ?>
            @forelse($reportList as $report)
                <tr id="TableRow_{{$report->id}}">
                    <td>{{@$row_number++}}</td>
                    <td><a href="{{url('admin/posts/details/'.$report->post->id)}}">{{@$report->post->post_text}}</a></td>
                    <td><a href="{{url('admin/users/details/'.@$report->post->users->id)}}">{{@$report->post->users->username}}</a></td>
                    <td><a href="{{url('admin/users/details/'.@$report->users->id)}}">{{@$report->users->username}}</a></td>
                    <td>{{date('d.m.Y-h:i A', strtotime(@$report->created_at))}}</td>
                    <td class="no-wrap text-center no-wrap">
                        <a href="javascript:" class="btn btn-xs btn-outline-danger" id="{{$report->id}}" onclick="archiveFunction(this.id)"><i class="la la-trash-o"></i> Delete</a>
                    </td>
                </tr>
            @empty
                <tr>
                    <td colspan="10" style="text-align: center"> No Data</td>
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
                {!! @$reportList->render( "pagination::bootstrap-4") !!}
            </nav>
        </div>
    </div>
</div>

{{--Log message modal--}}
<div class="modal fade" id="blockedReason" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <form action="#" class="modal-content">
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
