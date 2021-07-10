{{--
@extends('layouts.app')

@section('styles')

@endsection

@section('content')
    <div class="m-grid__item m-grid__item--fluid m-wrapper">

        <!-- BEGIN: Subheader -->
        <div class="m-subheader ">
            <div class="d-flex align-items-center">
                <div class="mr-auto">
                    <h3 class="m-subheader__title ">User Details</h3>
                    <ul class="m-subheader__breadcrumbs m-nav m-nav--inline">
                        <li class="m-nav__item m-nav__item--home">
                            <a href="#" class="m-nav__link m-nav__link--icon">
                                <i class="m-nav__link-icon la la-home"></i>
                            </a>
                        </li>
                        <li class="m-nav__separator">-</li>
                        <li class="m-nav__item">
                            <a href="" class="m-nav__link">
                                <span class="m-nav__link-text">User Details</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <div>
                    --}}
{{----}}{{--

                </div>
            </div>
        </div>
        <!-- END: Subheader -->

        <div class="m-content">
            <div class="m-portlet">
                --}}
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
                </div>--}}{{--


                <div class="m-portlet__body">
                    <div class="row">
                        <div class="col-md-8 post-details">
                            <div class="row">
                                <div class="col-md-8">
                                    <table class="table table-striped">
                                        <tr>
                                            <td width="150">Name</td>
                                            <td width="22" class="text-center">:</td>
                                            <td>{{@ $user->name}}</td>
                                        </tr>
                                        <tr>
                                            <td width="150">Email</td>
                                            <td width="22" class="text-center">:</td>
                                            <td>{{@ $user->email}}</td>
                                        </tr>
                                        <tr>
                                            <td width="150">Bio</td>
                                            <td width="22" class="text-center">:</td>
                                            <td>{{@ $user->bio}}</td>
                                        </tr>
                                        <tr>
                                            <td width="150">Follower</td>
                                            <td width="22" class="text-center">:</td>
                                            <td>215</td>
                                        </tr>
                                        <tr>
                                            <td width="150">Following</td>
                                            <td width="22" class="text-center">:</td>
                                            <td>215</td>
                                        </tr>
                                        <tr>
                                            <td width="150">Total Posts</td>
                                            <td width="22" class="text-center">:</td>
                                            <td>33</td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="col-md-4">
                                    <img src="{{ asset('/').@$user->image_url}}" alt="" class="img-thumbnail">
                                </div>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <h5>POST LIST</h5>

                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th width="3%">#</th>
                                    <th width="30%">Posts</th>
                                    <th>Type</th>
                                    <th>Date & Time</th>
                                    <th class="text-center">Comments</th>
                                    <th class="text-center">Likes</th>
                                    <th width="5%" class="text-center">Actions</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Population on cut any build conduct, goddesses, threw much a read the it has and nonsense, line understood.</td>
                                    <td><span class="badge badge-info">photo</span></td>
                                    <td>21.01.2019 - 4:30 pm</td>
                                    <td class="text-center">5</td>
                                    <td class="text-center">10</td>
                                    <td class="text-center">
                                    <span class="dropdown">
                                        <a href="#" class="btn m-btn m-btn--hover-brand m-btn--icon m-btn--icon-only m-btn--pill" data-toggle="dropdown" aria-expanded="false">
                                          <i class="la la-ellipsis-h"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right" x-placement="bottom-end">
                                            <a class="dropdown-item" href="{{url('posts/details-12')}}"><i class="la la-list-alt"></i> Details</a>
                                            <a class="dropdown-item" href="#"><i class="la la-trash-o"></i> Delete</a>
                                        </div>
                                    </span>
                                    </td>
                                </tr>

                                <tr>
                                    <td>2</td>
                                    <td>Population on cut any build conduct, goddesses, threw much a read the it has and nonsense, line understood.</td>
                                    <td><span class="badge badge-primary">video</span></td>
                                    <td>21.01.2019 - 4:30 pm</td>
                                    <td class="text-center">5</td>
                                    <td class="text-center">10</td>
                                    <td class="text-center">
                                    <span class="dropdown">
                                        <a href="#" class="btn m-btn m-btn--hover-brand m-btn--icon m-btn--icon-only m-btn--pill" data-toggle="dropdown" aria-expanded="false">
                                          <i class="la la-ellipsis-h"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right" x-placement="bottom-end">
                                            <a class="dropdown-item" href="{{url('posts/details-12')}}"><i class="la la-list-alt"></i> Details</a>
                                            <a class="dropdown-item" href="#"><i class="la la-trash-o"></i> Delete</a>
                                        </div>
                                    </span>
                                    </td>
                                </tr>

                                <tr>
                                    <td>3</td>
                                    <td>Population on cut any build conduct, goddesses, threw much a read the it has and nonsense, line understood.</td>
                                    <td><span class="badge badge-danger">live</span></td>
                                    <td>21.01.2019 - 4:30 pm</td>
                                    <td class="text-center">5</td>
                                    <td class="text-center">10</td>
                                    <td class="text-center">
                                    <span class="dropdown">
                                        <a href="#" class="btn m-btn m-btn--hover-brand m-btn--icon m-btn--icon-only m-btn--pill" data-toggle="dropdown" aria-expanded="false">
                                          <i class="la la-ellipsis-h"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right" x-placement="bottom-end">
                                            <a class="dropdown-item" href="{{url('posts/details-12')}}"><i class="la la-list-alt"></i> Details</a>
                                            <a class="dropdown-item" href="#"><i class="la la-trash-o"></i> Delete</a>
                                        </div>
                                    </span>
                                    </td>
                                </tr>
                                </tbody>
                            </table>

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
@endsection--}}


@extends('layouts.app')

@section('styles')

@endsection

@section('content')
    <div class="m-grid__item m-grid__item--fluid m-wrapper">

        <!-- BEGIN: Subheader -->
        <div class="m-subheader ">
            <div class="d-flex align-items-center">
                <div class="mr-auto">
                    <h3 class="m-subheader__title ">Admin Details</h3>
                    <ul class="m-subheader__breadcrumbs m-nav m-nav--inline">
                        <li class="m-nav__item m-nav__item--home">
                            <a href="#" class="m-nav__link m-nav__link--icon">
                                <i class="m-nav__link-icon la la-home"></i>
                            </a>
                        </li>
                        <li class="m-nav__separator">-</li>
                        <li class="m-nav__item">
                            <a href="" class="m-nav__link">
                                <span class="m-nav__link-text">Admin Details</span>
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
                                            <td>{{@ $admin->name}}</td>
                                        </tr>
                                        <tr>
                                            <td width="150">Email</td>
                                            <td width="20" class="text-center">:</td>
                                            <td>{{@$admin->email}}</td>
                                        </tr>
                                        <tr>
                                            <td width="150">Phone</td>
                                            <td width="20" class="text-center">:</td>
                                            <td>{{@$admin->phone}}</td>
                                        </tr>
                                        <tr>
                                            <td width="150">Gender</td>
                                            <td width="20" class="text-center">:</td>
                                            <td>{{@$admin->gender}}</td>
                                        </tr>
                                        <tr>
                                            <td width="150">Date of Birth</td>
                                            <td width="20" class="text-center">:</td>
                                            <td>{{@$admin->date_of_birth}}</td>
                                        </tr>

                                        {{--<tr>
                                            <td width="150">Address</td>
                                            <td width="22" class="text-center">:</td>
                                            <td>{@ $user->name}} </td>
                                        </tr>--}}
                                        <tr>
                                            <td width="150">Joined Date</td>
                                            <td width="20" class="text-center">:</td>
                                            <td>{{@ date('d/m/Y', strtotime($admin->created_at))}}</td>
                                        </tr>
                                        <tr>
                                            <td width="150">Bio</td>
                                            <td width="20" class="text-center">:</td>
                                            <td>{{@ $admin->bio}}</td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="col-md-4">
                                    <img src="{{@ $admin->image_url}}" alt="" class="img-thumbnail">
                                </div>
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
@endsection