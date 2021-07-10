@extends('layouts.app')

@section('styles')

@endsection

@section('content')

    <div class="m-grid__item m-grid__item--fluid m-wrapper">

        <!-- BEGIN: Subheader -->
        <div class="m-subheader ">
            <div class="d-flex align-items-center">
                <div class="mr-auto">
                    <h3 class="m-subheader__title ">Feedback</h3>
                    <ul class="m-subheader__breadcrumbs m-nav m-nav--inline">
                        <li class="m-nav__item m-nav__item--home">
                            <a href="#" class="m-nav__link m-nav__link--icon">
                                <i class="m-nav__link-icon la la-home"></i>
                            </a>
                        </li>
                        <li class="m-nav__separator">-</li>
                        <li class="m-nav__item">
                            <a href="" class="m-nav__link">
                                <span class="m-nav__link-text">Feedback</span>
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
                                <div class="form-group mr-sm-3 mb-2">
                                    <label for="inputSearch" class="sr-only">Search Text</label>
                                    <input type="search" class="form-control form-control-sm" id="inputSearch"
                                           name="feedback_search" value="{{app('request')->feedback_search}}"
                                           placeholder="Search...">
                                </div>
                                <button type="submit" class="btn btn-sm btn-primary mb-2"><span class="sr-only"></span>
                                    <i class="la la-search"></i></button>
                            </form>
                        </div>
                        <div class="">
                            {{--<form class="form-inline">
                                <div class="form-group mx-sm-3 mb-2">
                                    <label for="inputSearch" class="sr-only">Search Text</label>
                                    <input type="search" class="form-control form-control-sm" id="inputSearch" placeholder="Search...">
                                </div>
                                <button type="submit" class="btn btn-sm btn-primary mb-2"><span class="sr-only"></span> <i class="la la-search"></i></button>
                            </form>--}}
                        </div>
                    </div>
                    <div id="refresh">
                        @include('feedback.render_feedback')
                    </div>
                </div>
            </div>

        </div>
    </div>

@endsection

@section('scripts')
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
                        url: "{{URL::to('admin/feedbacks/delete/')}}",
                        method: "POST",
                        data: {'id': id, _token: '{{csrf_token()}}', 'page': '{{app('request')->page}}'},
                        dataType: "json",
                        success: function (data) {
                            $('#refresh').html('');
                            $('#refresh').html(data);
                        }
                    });
                    Swal.fire(
                        'Deleted!',
                        'Feedback has been deleted.',
                        'success'
                    )
                }
            })
        }
    </script>
@endsection