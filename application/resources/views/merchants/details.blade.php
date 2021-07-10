@extends('layouts.app')

@section('styles')

@endsection

@section('content')
    <div class="m-grid__item m-grid__item--fluid m-wrapper">

        <!-- BEGIN: Subheader -->
        <div class="m-subheader ">
            <div class="d-flex align-items-center">
                <div class="mr-auto">
                    <h3 class="m-subheader__title ">Merchant Details</h3>
                    <ul class="m-subheader__breadcrumbs m-nav m-nav--inline">
                        <li class="m-nav__item m-nav__item--home">
                            <a href="{{url('admin/')}}" class="m-nav__link m-nav__link--icon">
                                <i class="m-nav__link-icon la la-home"></i>
                            </a>
                        </li>
                        <li class="m-nav__separator">-</li>
                        <li class="m-nav__item">
                            <a href="" class="m-nav__link">
                                <span class="m-nav__link-text">Merchant Details</span>
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
                {{--<div class="m-portlet__head">
                    <div class="m-portlet__head-caption">
                        <div class="m-portlet__head-title">
                            <span class="m-portlet__head-icon m--hide">
                            <i class="la la-gear"></i>
                            </span>
                            <h3 class="m-portlet__head-text">
                                User List
                            </h3>
                        </div>
                    </div>

                    <div class="m-portlet__head-tools">

                    </div>
                </div>--}}

                <div class="m-portlet__body">
                    <div class="row">
                        <div class="col-md-8 post-details">
                            <div class="row">
                                <div class="col-md-8">
                                    <table class="table table-striped">
                                        <tr>
                                            <td width="150">Name</td>
                                            <td width="20" class="text-center">:</td>
                                            <td>{{$user->name}}</td>
                                        </tr>
                                        <tr>
                                            <td width="150">Owner Name</td>
                                            <td width="20" class="text-center">:</td>
                                            <td>{{$user->owner_name}}</td>
                                        </tr>
                                        <tr>
                                            <td width="150">Email</td>
                                            <td width="20" class="text-center">:</td>
                                            <td>{{$user->email}}</td>
                                        </tr>
                                        <tr>
                                            <td width="150">Phone</td>
                                            <td width="20" class="text-center">:</td>
                                            <td>{{$user->phone}}</td>
                                        </tr>
                                        <tr>
                                            <td width="150">Ads</td>
                                            <td width="20" class="text-center">:</td>
                                            <td>{{$user->ads()->count()}}</td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 mt-3">
                            <h5>Ads List</h5>

                            <div id="refresh">
                                @include('merchants.render_ads')
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('scripts')
    <script>
        $(function () {
            'use strict';
            $(document).on('click', '.meta-links', function (e) {
                e.preventDefault();
                let self = $(this);
                let target = self.attr('href');
                $('.interaction-list').removeClass('active');
                $(target).addClass('active');
                $('.meta-links').removeClass('active');
                self.addClass('active');
            })
        })
    </script>
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
                        url: "{{URL::to('admin/merchants/ads/delete/')}}",
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
                        'Ads has been deleted.',
                        'success'
                    )
                }
            })
        }

        function statusFunction(id) {
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
                        url: "{{URL::to('admin/merchants/ads/change-status')}}",
                        method: "POST",
                        data: {'id': id, _token: '{{csrf_token()}}', 'page': '{{app('request')->page}}'},
                        dataType: "json",
                        success: function (data) {
                            $('#refresh').html('');
                            $('#refresh').html(data);
                        }
                    });
                    Swal.fire(
                        'Changed!',
                        'Ads Status has been changed.',
                        'success'
                    )
                }
            })
        }
    </script>
@endsection