@extends('layouts.app')

@section('styles')

@endsection

@section('content')
    <div class="m-grid__item m-grid__item--fluid m-wrapper">

        <!-- BEGIN: Subheader -->
        <div class="m-subheader ">
            <div class="d-flex align-items-center">
                <div class="mr-auto">
                    <h3 class="m-subheader__title ">Post Details</h3>
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
                        <div class="col-md-8 mx-auto">
                            <div class="post-details">
                                <div class="post-header">
                                    <div class="user-avatar" style="background-image: url('https://uinames.com/api/photos/female/5.jpg')"></div>
                                    <div class="u-p-info">
                                        <h4 class="user-name">Jacob Beck</h4>
                                        <p class="post-meta-info">19/01/2019 4:30pm</p>
                                        <a href="#" class="remove-btn">Delete</a>
                                    </div>
                                </div>
                                <div class="post-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo nemo, tempore. Doloribus mollitia natus quasi quos rerum similique tenetur, ullam.</p>
                                    <div class="thumb-container">
                                        <img src="https://images.pexels.com/photos/341858/pexels-photo-341858.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260"
                                             alt="">
                                    </div>
                                </div>

                                <div class="post-footer">
                                    <a href="#commentList" class="meta-links active"><i class="la la-comments-o"></i> Comments (3)</a>
                                    <a href="#likedBy" class="meta-links"><i class="la la-heart-o"></i> Likes (5)</a>
                                </div>

                                <div class="interactions">
                                    <div id="commentList" class="interaction-list active">
                                        <table class="table table-striped">
                                            <thead>
                                            <tr>
                                                <th>User</th>
                                                <th>Comment</th>
                                                <th>Date & Time</th>
                                                <th width="2%" class="text-center"></th>
                                            </tr>
                                            </thead>
                                            <tbody>

                                            <tr>
                                                <td>John Doe</td>
                                                <td>Population on cut any build conduct</td>
                                                <td>19.01.2019 - 4:30 pm</td>
                                                <td class="text-center">
                                                    <a class="dropdown-item text-muted" href="#" title="Delete"><i class="la la-trash-o"></i></a>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>

                                    <div id="likedBy" class="interaction-list">
                                        <table class="table table-striped contentMiddle">
                                            <thead>
                                            <tr>
                                                <th width="40">Image</th>
                                                <th>Name</th>
                                                <th>Date & Time</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td><img src="https://uinames.com/api/photos/male/11.jpg" alt="" width="40"></td>
                                                <td><a href="{{url('users/details-12')}}">Richard Myers</a></td>
                                                <td>19/01/2019</td>
                                            </tr>
                                            <tr>
                                                <td><img src="https://uinames.com/api/photos/male/9.jpg" alt="" width="40"></td>
                                                <td><a href="{{url('users/details-12')}}">Ronald Hill</a></td>
                                                <td>19/01/2019</td>
                                            </tr>
                                            <tr>
                                                <td><img src="https://uinames.com/api/photos/male/2.jpg" alt="" width="40"></td>
                                                <td><a href="{{url('users/details-12')}}">Gloria Knight</a></td>
                                                <td>19/01/2019</td>
                                            </tr>
                                            <tr>
                                                <td><img src="https://uinames.com/api/photos/female/14.jpg" alt="" width="40"></td>
                                                <td><a href="{{url('users/details-12')}}">Tammy Rivera</a></td>
                                                <td>19/01/2019</td>
                                            </tr>
                                            <tr>
                                                <td><img src="https://uinames.com/api/photos/male/5.jpg" alt="" width="40"></td>
                                                <td><a href="{{url('users/details-12')}}">Mark Scott</a></td>
                                                <td>19/01/2019</td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
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