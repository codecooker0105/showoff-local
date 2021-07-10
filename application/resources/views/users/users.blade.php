@extends('layouts.app')

@section('styles')

@endsection
@section('content')

    <div class="m-grid__item m-grid__item--fluid m-wrapper">

        <!-- BEGIN: Subheader -->
        <div class="m-subheader ">
            <div class="d-flex align-items-center">
                <div class="mr-auto">
                    <h3 class="m-subheader__title ">Users</h3>
                    <ul class="m-subheader__breadcrumbs m-nav m-nav--inline">
                        <li class="m-nav__item m-nav__item--home">
                            <a href="#" class="m-nav__link m-nav__link--icon">
                                <i class="m-nav__link-icon la la-home"></i>
                            </a>
                        </li>
                        <li class="m-nav__separator">-</li>
                        <li class="m-nav__item">
                            <a href="" class="m-nav__link">
                                <span class="m-nav__link-text">Users</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <div>
                    {{----}}
                </div>
            </div>
        </div>
        <!-- END: Subheader -->

        <div class="m-content">

            <div class="m-portlet">
                <div class="m-portlet__body">
                    <div class="d-flex mb-2">
                        <div class="mr-auto">
                            <form class="form-inline" method="get" action="{{url()->current()}}">
                                <div class="form-group mb-2">
                                    <label>Filter by: </label>
                                </div>
                                <div class="form-group mx-sm-2 mb-2">
                                    <label for="userType" class="sr-only">Post Type</label>
                                    <select name="user_type" id="userType" class="form-control form-control-sm">
                                        <option value="">All</option>
                                        <option value="1" {{@$user_type && $user_type == 1 ? 'selected' : ""}}>Active</option>
                                        <option value="2" {{@$user_type && $user_type == 2 ? 'selected' : ""}}>Inactive</option>
                                    </select>
                                </div>

                                <div class="form-group mx-sm-2 mb-2">
                                    <label for="inputSearch" class="sr-only">Search Text</label>
                                    <input type="search" class="form-control form-control-sm" name="user_search" value="{{app('request')->user_search}}" id="inputSearch" placeholder="Search...">
                                </div>
                                <button type="submit" class="btn btn-sm btn-primary mb-2"><span class="sr-only"></span> <i class="la la-search"></i></button>
                            </form>
                        </div>
                    </div>

                    <div id="refresh">
                        @include('users.render_users')
                    </div>
                </div>
            </div>

        </div>
    </div>
    @if (Session::has('message'))
        <script>
            swal('Success!', '{{ Session::get('message') }}', 'success');
        </script>
    @endif
    <script type="text/javascript">
        $.ajaxSetup({ headers: { 'csrftoken' : '{{ csrf_token() }}' } });
    </script>
    <script type="text/javascript">

        function archiveFunction(id) {
            console.log(id);
            Swal.fire({
                title: 'Are you sure?',
                text: "You won't be able to revert this!",
                type: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, delete it!'
            }).then((result) => {
                if (result.value) {
                    console.log(id);
                    $.ajax({
                        url: "{{URL::to('admin/users/delete/')}}",
                        method: "POST",
                        data: {'id': id, _token: '{{csrf_token()}}', 'page': '{{app('request')->page}}'},
                        dataType: "json",
                        success: function (data) {
                            $('#TableRow_' + id).remove();
                        }
                    });
                    Swal.fire(
                        'Deleted!',
                        'User has been deleted.',
                        'success'
                    )
                }
            })
        }

        function statusFunction(id, status) {
            Swal.fire({
                title: 'Are you sure?',
                text: "You won't be able to revert this!",
                type: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, change status!'
            }).then((result) => {
                if (result.value) {
                    $.ajax({
                        url: "{{URL::to('admin/users/change-status')}}",
                        method: "POST",
                        data: {'id': id, _token: '{{csrf_token()}}', 'page': '{{app('request')->page}}'},
                        dataType: "json",
                        success: function (data) {
                            $('#block_unblock_' + id ).html(data);
                            if(status === 2){
                                $('#bb_status_' + id ).html('<span class="badge badge-warning">Block</span>');
                            }else{
                                $('#bb_status_' + id ).html('<span class="badge badge-success">Active</span>');
                            }
                        }
                    });
                    Swal.fire(
                        'Changed!',
                        'User\'s Status has been changed.',
                        'success'
                    )
                }
            })
        }
    </script>
@endsection


@section('scripts')

@endsection