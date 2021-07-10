<div class="table-responsive">
    <table class="table table-striped">
        <thead>
        <tr>
            <th width="3%">#</th>
            <th>Feedback</th>
            <th>User Name</th>
            <th>Date & Time</th>
            <th width="1%" class="no-wrap text-center">Actions</th>
        </tr>
        </thead>@php
            $row_count = ($feedback_list->currentpage()-1)* $feedback_list->perpage() + 1;

        @endphp
        <tbody>
        <tr>
            @forelse($feedback_list as $feedback)
                <td>{{$row_count++}}</td>
                <td>{{@$feedback->description}}</td>
                <td>
                    <a href="{{url('admin/users/details/'.$feedback->user->id)}}">{{@$feedback->user->name}}</a>
                </td>
                <td>{{date('d/m/Y - h:i A', strtotime($feedback->created_at))}}</td>
                <td class="no-wrap text-center no-wrap">
                    <a href="#" class="btn btn-xs btn-outline-danger"  id="{{$feedback->id}}"
                       onclick="archiveFunction(this.id)"><i class="la la-trash-o"></i>
                        Delete</a>
                </td>
        </tr>
        @empty
            <tr>
                <td colspan="9" style="text-align: center"><h6>No feedback available</h6></td>
            </tr>
        @endforelse
        </tbody>
    </table>
</div>
<div class="mt-3">
    <div class="d-flex">
        <div class="mr-auto"></div>
        <div class="">
            <div class="mr-auto"></div>
            {{ $feedback_list->render( "pagination::bootstrap-4") }}
        </div>
    </div>
</div>