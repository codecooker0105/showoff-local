<div class="table-responsive">
    <table class="table table-striped">
        <thead>
        <tr>
            <th width="3%">#</th>
            <th>Category Name</th>
            <th>Total Posts</th>
            <th>Date & Time</th>
            <th width="1%" class="no-wrap text-center">Actions</th>
        </tr>
        </thead>
        <tbody>
        <?php $row_number = ($categoryList->currentpage() - 1) * $categoryList->perpage() + 1; ?>
        @forelse($categoryList as $category)
            <tr id="TableRow_{{$category->id}}">
                <td>{{@$row_number++}}</td>
                <td>{{@$category->name}}</td>
                <td>{{@$category->posts_count}}</td>
                <td>{{date('d.m.Y-h:i A', strtotime(@$category->created_at))}}</td>
                <td class="no-wrap text-center no-wrap">
                    <a href="{{url('admin/category/'.$category->id . '/edit')}}" class="btn btn-xs btn-outline-info"><i class="la la-edit"></i> Edit</a>
                    <a href="javascript:" class="btn btn-xs btn-outline-danger" id="{{$category->id}}" onclick="archiveFunction(this.id)"><i class="la la-trash-o"></i> Delete</a>
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
                {!! @$categoryList->render( "pagination::bootstrap-4") !!}
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
