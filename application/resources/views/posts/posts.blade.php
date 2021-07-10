@extends('layouts.app')

@section('styles')

@endsection

@section('content')

    <div class="m-grid__item m-grid__item--fluid m-wrapper">

        <!-- BEGIN: Subheader -->
        <div class="m-subheader ">
            <div class="d-flex align-items-center">
                <div class="mr-auto">
                    <h3 class="m-subheader__title ">Posts</h3>
                    <ul class="m-subheader__breadcrumbs m-nav m-nav--inline">
                        <li class="m-nav__item m-nav__item--home">
                            <a href="#" class="m-nav__link m-nav__link--icon">
                                <i class="m-nav__link-icon la la-home"></i>
                            </a>
                        </li>
                        <li class="m-nav__separator">-</li>
                        <li class="m-nav__item">
                            <a href="" class="m-nav__link">
                                <span class="m-nav__link-text">Posts</span>
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
                            <form class="form-inline">
                                <div class="form-group mb-2">
                                    <label>Filter by: </label>
                                </div>
                                <div class="form-group mx-sm-3 mb-2">
                                    <label for="userType" class="sr-only">Post Type</label>
                                    <select name="post_type" id="userType"
                                            class="form-control form-control-sm">
                                        {{--<option disabled selected>{{ app('request')->post_type == 1 ? 'Photo' : (app('request')->post_type == 2 ? 'Video' : (app('request')->post_type == 3 ? 'Live' : 'All'))}}</option>--}}
                                        <option value="">All</option>
                                        <option value="1">Photo</option>
                                        <option value="2">Video</option>
                                        <option value="3">Live</option>
                                    </select>
                                </div>
                                <div class="form-group mb-2">
                                    <label>Sorter by: </label>
                                </div>
                                <div class="form-group mx-sm-3 mb-2">
                                    <select id="sorting" name="post_sorter_by"
                                            class="form-control form-control-sm">
                                        <option selected value="{{ app('request')->post_sorter_by == "like" ? 'like' : (app('request')->post_sorter_by == "comment" ? 'comment' :
                                            (app('request')->post_sorter_by == "most_recent" ? 'most_recent' : (app('request')->post_sorter_by == "old_post" ? 'old_post' : 'all')))}}">
                                            {{ app('request')->post_sorter_by == "like" ? 'Like' : (app('request')->post_sorter_by == "comment" ? 'Comment' :
                                            (app('request')->post_sorter_by == "most_recent" ? 'Most Recent' : (app('request')->post_sorter_by == "old_post" ? 'Old Post' : 'All')))}}
                                        </option>
                                        <option value="like">Like</option>
                                        <option value="comment">Comment</option>
                                        <option value="most_recent">Most Recent</option>
                                        <option value="old_post">Old Post</option>
                                    </select>
                                </div>
                                <button type="submit" class="btn btn-sm btn-primary mb-2 search-call"><span class="sr-only"></span>
                                    <i class="la la-search"></i></button>
                            </form>
                        </div>
                        <div class="">
                            <div class="form-inline">
                                <div class="form-group mx-sm-3 mb-2">
                                    <label for="inputSearch" class="sr-only">Search Text</label>
                                    <input type="search" name="search" class="form-control form-control-sm"
                                           id="inputSearch" placeholder="Search..." value="{{app('request')->search}}">
                                </div>
                                <button type="submit" class="btn btn-sm btn-primary mb-2 search-call"><span class="sr-only"></span>
                                    <i class="la la-search"></i></button>
                            </div>
                        </div>

                    </div>
                    <div id="refresh">
                        @include('posts.render_post')
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
@endsection

@section('scripts')
    <script type="text/javascript">
        $.ajaxSetup({ headers: { 'csrftoken' : '{{ csrf_token() }}' } });
    </script>

    <script type="text/javascript">

        let page = 1;

        function blockMessage(id) {
            var id1 = id;
            $("#post_id").val(id1);
        }

        function postBlockFunction() {
            $('#blockedReason').modal('hide');
            var log_message = $('#reason').val();
            var post_id = $('#post_id').val();
            var type = $("#userType").val();
            var sorting = $("#sorting").val();
            var search = $("#inputSearch").val();
            $.ajax({
                url: "{{URL::to('admin/posts/block-status')}}",
                method: "POST",
                data: {'type': type, 'sorting': sorting, 'search': search, 'post_id': post_id, 'log_message':log_message, _token: '{{csrf_token()}}', 'page': page},
                dataType: "json",
                success: function (data) {
                    // $('#refresh').html('');
                    // $('#refresh').html(data);
                    $('#block_unblock_' + post_id ).html(data);
                    $('#bb_status_' + post_id ).html('<span class="badge badge-warning">Block</span>');
                    swal('Success!', 'Post has been blocked.', 'success');
                }
            });
        }

        function postActiveFunction(id) {
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
                    var type = $("#userType").val();
                    var sorting = $("#sorting").val();
                    var search = $("#inputSearch").val();
                    $.ajax({
                        url: "{{URL::to('admin/posts/active-status')}}",
                        method: "POST",
                        data: {'type': type, 'sorting': sorting, 'search': search, 'id': id, _token: '{{csrf_token()}}', 'page': page},
                        dataType: "json",
                        success: function (data) {
                            $('#block_unblock_' + id ).html(data);
                            $('#bb_status_' + id ).html('<span class="badge badge-success">Active</span>');
                        }
                    });
                    Swal.fire(
                        'Changed!',
                        'Post Status has been active.',
                        'success'
                    )
                }
            })
        }

        function archiveFunction(id) {
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
                    $.ajax({
                        url: "{{URL::to('admin/posts/delete/')}}",
                        method: "POST",
                        data: {'id': id, _token: '{{csrf_token()}}', 'page': '{{app('request')->page}}'},
                        dataType: "json",
                        success: function (data) {
                            $('#TableRow_' + id).remove();
                        }
                    });
                    Swal.fire(
                        'Deleted!',
                        'Post has been deleted.',
                        'success'
                    )
                }
            })
        }

        function filterFunction(value) {
            $.ajax({
                url: "{{URL::to('admin/posts/filter/')}}",
                method: "GET",
                data: {'filter': value, _token: '{{csrf_token()}}', 'page': '{{app('request')->page}}'},
                dataType: "json",
                success: function (data) {
                    $('#refresh').html('');
                    $('#refresh').html(data);
                }
            });
        }

        $(".search-call").on('click', function (e) {
            e.preventDefault();
            var type = $("#userType").val();
            var sorting = $("#sorting").val();
            var search = $("#inputSearch").val();
            $.ajax({
                url: "{{URL::to('admin/posts/')}}",
                method: "GET",
                data: {'type': type, 'sorting': sorting, 'search': search, _token: '{{csrf_token()}}'},
                dataType: "json",
                success: function (data) {
                    $('#refresh').html('');
                    $('#refresh').html(data);
                }
            });
        });

        $(document).on('click', '.pagination a', function (e) {
            e.preventDefault();
            var type = $('#userType').val();
            var sorting = $('#sorting').val();
            var search = $('#inputSearch').val();
             page = $(this).attr('href').split('page=')[1];

            $.ajax({
                url: $(this).attr('href'),
                type: "get",
                dataType: 'json',
                data: {'type': type, 'sorting': sorting, 'search': search, 'page':page, _token: '{{csrf_token()}}'},
                success: function (data) {
                    $("#refresh").html(data);
                }
            });

        });

    </script>
@endsection