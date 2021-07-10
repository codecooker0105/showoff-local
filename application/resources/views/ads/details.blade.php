@extends('layouts.app')

@section('styles')

@endsection

@section('content')
    <div class="m-grid__item m-grid__item--fluid m-wrapper">
        <!-- BEGIN: Subheader -->
        <div class="m-subheader ">
            <div class="d-flex align-items-center">
                <div class="mr-auto">
                    <h3 class="m-subheader__title ">Ads Details</h3>
                    <ul class="m-subheader__breadcrumbs m-nav m-nav--inline">
                        <li class="m-nav__item m-nav__item--home">
                            <a href="#" class="m-nav__link m-nav__link--icon">
                                <i class="m-nav__link-icon la la-home"></i>
                            </a>
                        </li>
                        <li class="m-nav__separator">-</li>
                        <li class="m-nav__item">
                            <a href="" class="m-nav__link">
                                <span class="m-nav__link-text">Ads Details</span>
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
                    <div class="row">
                        <div class="col-md-8">
                            <div class="row">
                                <div class="col-md-8">
                                    <table class="table table-striped">
                                        {{--<tr>--}}
                                            {{--<td width="150">Ad Title</td>--}}
                                            {{--<td width="20" class="text-center">:</td>--}}
                                            {{--<td>{{@$ad->title}}</td>--}}
                                        {{--</tr>--}}
                                        <tr>
                                            <td width="150">Company Name</td>
                                            <td width="20" class="text-center">:</td>
                                            <td>{{@$ad->company_name}}</td>
                                        </tr>
                                        <tr>
                                            <td width="150">Start Time</td>
                                            <td width="20" class="text-center">:</td>
                                            <td>{{$ad->start_time ? date('d/m/Y - h:i A', strtotime($ad->start_time)) : ""}}</td>
                                        </tr>
                                        <tr>
                                            <td width="150">End Time</td>
                                            <td width="20" class="text-center">:</td>
                                            <td>{{$ad->end_time ? date('d/m/Y - h:i A', strtotime($ad->end_time)) : ""}}</td>
                                        </tr>
                                        <tr>
                                            <td width="150">Link</td>
                                            <td width="20" class="text-center">:</td>
                                            <td>{{@$ad->link}}</td>
                                        </tr>
                                        <tr>
                                            <td width="150">Description</td>
                                            <td width="20" class="text-center">:</td>
                                            <td>{{@$ad->description}}</td>
                                        </tr>
                                        <tr>
                                            <td width="150">Company Logo</td>
                                            <td width="20" class="text-center">:</td>
                                            <td><img src="{{@$ad->company_logo}}" alt="" class="img-thumbnail"></td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="col-md-4">
                                    <img src="{{@$ad->ads_banner}}" alt="" class="img-thumbnail">
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