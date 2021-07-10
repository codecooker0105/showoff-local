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
                    <h3 class="m-subheader__title ">Dashboard</h3>
                </div>
                <div></div>
            </div>
        </div>
        <!-- END: Subheader -->

        <div class="m-content">

            Dashboard Content Goes Here

        </div>
    </div>

@endsection

@section('scripts')

@endsection--}}

@extends('layouts.app')

@section('styles')

@endsection

@section('filter-nav')
    <div class="filter-nav" id="filterNav">
        <div class="d-flex">
            <div>
                <form class="form-inline">
                    <div class="mr-2">
                        <div class="btn-group btn-group-sm btn-group-toggle" data-toggle="buttons">
                            <label class="btn btn-info active">
                                <input class="filterBy" type="radio" name="filter_on" id="filterAll"  value="all" autocomplete="off" checked> All
                            </label>
                            <label class="btn btn-info">
                                <input class="filterBy" type="radio" name="filter_on" id="filterWeek" value="week" autocomplete="off"> This Week
                            </label>
                            <label class="btn btn-info">
                                <input class="filterBy" type="radio" name="filter_on" id="filterMonth" value="lastmonth" autocomplete="off"> Last Month
                            </label>
                            <label class="btn btn-info">
                                <input class="filterBy" type="radio" name="filter_on" id="filterYear" value="year" autocomplete="off"> This Year
                            </label>
                            <input type="text" class="btn btn-info mr-2" name="custom_range" id="dateRanger" readonly placeholder="Custom date range">
                        </div>
                    </div>

                    <button type="submit" class="btn btn-sm btn-primary">Filter</button>
                </form>
            </div>
        </div>
    </div>
@endsection

@section('content')

    <div class="m-grid__item m-grid__item--fluid m-wrapper">
        <div class="m-content dashboard">
            <div class="row">
                <div class="col-md-12">
                    <div class="m-portlet m-portlet--full-height ">
                        <div class="m-portlet__head">
                            <div class="m-portlet__head-caption">
                                <div class="m-portlet__head-title">
                                    <h3 class="m-portlet__head-text">
                                    <span>Total Posts  <strong class="text-success">{{@$total_post}}</strong>.
                                    Photo posts <strong class="text-info">{{@$total_photo_post}}</strong> ::
                                    Video Posts <strong class="text-primary">{{@$total_video_post}}</strong> ::
                                    Live Posts <strong class="text-primary">{{@$total_live_post}}</strong>
                                    </span>
                                    </h3>
                                </div>
                            </div>
                            <div class="m-portlet__head-tools">

                            </div>
                        </div>
                        <div class="m-portlet__body">
                            <canvas id="requestVsResolved" style="width: 100%" height="350"></canvas>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="m-portlet">
                        <div class="m-portlet__body  m-portlet__body--no-padding">
                            <div class="row m-row--no-padding m-row--col-separator-xl">
                                <div class="col-xl-6">
                                    <div class="m-widget1">
                                        <div class="m-widget1__item dynamiclink">
                                            <a href="#?tab_id=all">
                                                <div class="row m-row--no-padding align-items-center">
                                                    <div class="col">
                                                        <h3 class="m-widget1__title">Registered Users</h3>
                                                        <span class="m-widget1__desc">Successfully registered to this application</span>
                                                    </div>
                                                    <div class="col m--align-right">
                                                        <span class="m-widget1__number text-primary">{{@$registered_user_count}}</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>

                                        <div class="m-widget1__item dynamiclink">
                                            <a href="#?tab_id=1">
                                                <div class="row m-row--no-padding align-items-center">
                                                    <div class="col">
                                                        <h3 class="m-widget1__title">Active Users</h3>
                                                        <span class="m-widget1__desc">Users who are using this platform regularly</span>
                                                    </div>
                                                    <div class="col m--align-right">
                                                        <span class="m-widget1__number text-primary">{{@$active_user_count}}</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>

                                        <div class="m-widget1__item dynamiclink">
                                            <a href="#?tab_id=4">
                                                <div class="row m-row--no-padding align-items-center">
                                                    <div class="col">
                                                        <h3 class="m-widget1__title">Inactive users</h3>
                                                        <span class="m-widget1__desc">Users who are not using this application regularly</span>
                                                    </div>
                                                    <div class="col m--align-right">
                                                        <span class="m-widget1__number  text-primary">{{@$inactive_user_count}}</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>

                                        <div class="m-widget1__item dynamiclink">
                                            <a href="#?tab_id=transacting">
                                                <div class="row m-row--no-padding align-items-center">
                                                    <div class="col">
                                                        <h3 class="m-widget1__title">Blocked Users</h3>
                                                        <span class="m-widget1__desc">Users who are blocked by admin</span>
                                                    </div>
                                                    <div class="col m--align-right">
                                                        <span class="m-widget1__number  text-primary">{{@$blocked_user_count}}</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>

                                        {{--
                                        <div class="m-widget1__item dynamiclink">
                                            <a href="#?tab_id=non-transacting">
                                                <div class="row m-row--no-padding align-items-center">
                                                    <div class="col">
                                                        <h3 class="m-widget1__title">Users outside the Country</h3>
                                                        <span class="m-widget1__desc">Registered/activce user from abroad</span>
                                                    </div>
                                                    <div class="col m--align-right">
                                                        <span class="m-widget1__number  text-primary yellow">2,25,295</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>--}}
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="m-widget14">
                                        <div class="m-widget14__header">
                                            <h3 class="m-widget14__title">
                                                User Statistics
                                            </h3>
                                        </div>
                                        <div class="align-items-center">
                                            <canvas id="userStatistics" style="width: 100%" height="250"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

          {{--  <div class="row">
                <div class="col-md-12">
                    <div class="m-portlet m-portlet--full-height ">
                        <div class="m-portlet__head">
                            <div class="m-portlet__head-caption">
                                <div class="m-portlet__head-title">
                                    <h3 class="m-portlet__head-text">
                                        <span>Visitor Traffic</span>
                                    </h3>
                                </div>
                            </div>
                            <div class="m-portlet__head-tools">

                            </div>
                        </div>
                        <div class="m-portlet__body">
                            <canvas id="earningChart" style="width: 100%" height="350"></canvas>
                        </div>
                    </div>
                </div>
            </div>--}}

            <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                    <div class="m-portlet m-portlet--border-bottom-brand"
                         style="margin-bottom: 30px; height: calc(100% - 30px)">
                        <div class="m-portlet__head">
                            <div class="m-portlet__head-caption">
                                <div class="m-portlet__head-title">
                                    <h3 class="m-portlet__head-text">
                                        <span>Top Ads</span>
                                    </h3>
                                </div>
                            </div>
                            <div class="m-portlet__head-tools">
                            </div>
                        </div>

                        <div class="m-portlet__body">
                            <div id="topServicesStatistic" style="width: 100%; height: 400px"></div>
                        </div>
                    </div>
                </div>

                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                    <div class="m-portlet  m-portlet--border-bottom-brand">
                        <div class="m-portlet__head">
                            <div class="m-portlet__head-caption">
                                <div class="m-portlet__head-title">
                                    <h3 class="m-portlet__head-text">
                                        Top Users
                                        <span></span>
                                    </h3>
                                </div>
                            </div>
                            <div class="m-portlet__head-tools">

                            </div>
                        </div>

                        <div class="m-portlet__body m--full-height">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <td width="25%">Name</td>
                                    <td width="25%" class="text-center">Follower</td>
                                    <td width="25%" class="text-center">Following</td>
                                    <td width="25%" class="text-right">Posts</td>
                                </tr>
                                </thead>
                            </table>
                            <div class="m-scrollable" data-scrollable="true" data-height="400" data-scrollbar-shown="true">
                                <table class="table table-striped">
                                    <tbody>

                                    @forelse($top_users as $top_user)
                                    <tr>
                                        <td width="25%"><a href="{{url('users/details-12')}}">{{$top_user->name ? $top_user->name : $top_user->email}}s</a></td>
                                        <td width="25%" class="text-center">{{$top_user->follow_count}}</td>
                                        <td width="25%" class="text-center">{{$top_user->following_count}}</td>
                                        <td width="25%" class="text-right">{{$top_user->posts_count}}</td>
                                    </tr>
                                    @empty
                                    @endforelse
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <div class="m-portlet m-portlet--border-bottom-brand ">
                        <div class="m-portlet__head">
                            <div class="m-portlet__head-caption">
                                <div class="m-portlet__head-title">
                                    <h3 class="m-portlet__head-text">
                                        <span>Top Merchants</span>
                                    </h3>
                                </div>
                            </div>
                            <div class="m-portlet__head-tools">

                            </div>
                        </div>

                        <div class="m-portlet__body">
                            <canvas id="topPerforming" height="300" style="width: 100%"></canvas>
                        </div>
                    </div>
                </div>
            </div>


        </div>
    </div>
@endsection

@section('scripts')
    <!--begin::Page Vendors -->
    <script src="{{asset('/')}}assets/vendors/custom/fullcalendar/fullcalendar.bundle.js" type="text/javascript"></script>
    {{--<script src="{{asset('/')}}js/Chart.min.js" type="text/javascript"></script>--}}

    <script src="//www.amcharts.com/lib/3/amcharts.js" type="text/javascript"></script>
    <script src="//www.amcharts.com/lib/3/serial.js" type="text/javascript"></script>
    <script src="//www.amcharts.com/lib/3/radar.js" type="text/javascript"></script>
    <script src="//www.amcharts.com/lib/3/pie.js" type="text/javascript"></script>
    <script src="//www.amcharts.com/lib/3/plugins/tools/polarScatter/polarScatter.min.js" type="text/javascript"></script>
    <script src="//www.amcharts.com/lib/3/plugins/animate/animate.min.js" type="text/javascript"></script>
    <script src="//www.amcharts.com/lib/3/plugins/export/export.min.js" type="text/javascript"></script>
    <script src="//www.amcharts.com/lib/3/themes/light.js" type="text/javascript"></script>

    <script>
        $(function () {
            'use strict';
            $('#dateRanger').daterangepicker({
                opens: 'right',
                autoUpdateInput: false,
            }, function(start, end, label) {
                console.log("A new date selection was made: " + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD'));
            });

            $('#dateRanger').on('apply.daterangepicker', function(ev, picker) {
                $(this).val(picker.startDate.format('YYYY-MM-DD') + ' to ' + picker.endDate.format('YYYY-MM-DD'));
                $("#dateRangePickerValue").val(picker.startDate.format('YYYY-MM-DD') + ',' + picker.endDate.format('YYYY-MM-DD'));
                $(this).addClass('active');
                $('.filterBy').prop('checked', false).closest('label').removeClass('active');
            });

            /*Chart Js*/
            let label = [], requestedServices = [420, 500, 521, 452, 356, 452,362, 421, 333, 505, 425, 456, 352, 521, 452, 475, 368, 459, 420, 460, 438, 450, 444, 364, 450, 420, 421, 365, 458, 333, 442], resolvedServices = [];
            for(let j = 1; j <= 31; j++) {
                requestedServices.push(getRndInteger(500, 550));
                resolvedServices.push(getRndInteger(200, 550));
            }

            /*Chart Js*/
            let monthly_post_photo = [], monthly_post_video = [];

            @forelse($chart_photo_vs_video as $key=>$value)

            label.push('{{$key}}');


            monthly_post_photo.push({{$value['monthly_post_photo']}});
            monthly_post_video.push({{$value['monthly_post_video']}});
                    @empty
                    @endforelse


            if ($('#requestVsResolved').length > 0) {
                let requestVsResolved = document.getElementById("requestVsResolved");
                let requestResolved = new Chart(requestVsResolved, {
                    type: 'line',
                    scaleOverride : true,
                    scaleSteps : 10,
                    scaleStepWidth : 50,
                    scaleStartValue : 0,
                    data: {
                        labels: label,
                        datasets: [{
                            yAxisID: 'A',
                            label: 'Photos',
                            //lineTension: .3,
                            data: monthly_post_photo,
                            backgroundColor: 'rgba(54, 163, 247, 0)',
                            borderColor: 'rgba(54, 163, 247, .8)',
                            pointRadius: 0,
                            pointHoverRadius: 3,
                            borderWidth: 3
                        },
                            {
                                yAxisID: 'B',
                                label: 'Videos',
                                //lineTension: .3,
                                data: monthly_post_video,
                                backgroundColor: 'rgba(172, 44, 170, .6)',
                                borderColor: 'rgba(172, 44, 170, 1)',
                                pointRadius: 0,
                                pointHoverRadius: 3,
                                borderWidth: 1
                            }]
                    },
                    options: {
                        responsive: false,
                        bezierCurve: false,
                        layout: {
                            padding: {
                                left: 10,
                                right: 0,
                                top: 0,
                                bottom: 0
                            }
                        },
                        legend: {
                            display: true,
                            position: 'top',
                            labels: {
                                fontColor: "#0747A6",
                            }
                        },
                        title: {
                            display: false,
                            text: 'Photo vs Video'
                        },
                        tooltips: {
                            mode: 'index',
                            intersect: false,
                        },
                        hover: {
                            mode: 'nearest',
                            intersect: true
                        },
                        scales: {
                            xAxes: [{
                                display: true,
                                scaleLabel: {
                                    display: true,
                                    labelString: 'Date'
                                }
                            }],
                            yAxes: [{
                                id: 'A',
                                position: 'left',
                                display: true,
                                scaleLabel: {
                                    display: true,
                                    labelString: 'Photos'
                                },
                                ticks: {
                                    beginAtZero: true,
                                    userCallback: function (label, index, labels) {
                                        if (Math.floor(label) === label) {
                                            return label;
                                        }
                                    },
                                }
                            }, {
                                id: 'B',
                                position: 'right',
                                display: true,
                                stacked: false,
                                scaleLabel: {
                                    display: true,
                                    labelString: 'Videos'
                                },
                                ticks: {
                                    beginAtZero: true,
                                    userCallback: function (label, index, labels) {
                                        if (Math.floor(label) === label) {
                                            return label;
                                        }

                                    },
                                }
                            }]
                        }
                    }
                });
            }

            if ($('#earningChart').length > 0) {
                let earningChart = document.getElementById("earningChart");
                let earningChartClass = new Chart(earningChart, {
                    type: 'line',
                    scaleOverride : true,
                    scaleSteps : 10,
                    scaleStepWidth : 50,
                    scaleStartValue : 0,
                    data: {
                        labels: label,
                        datasets: [{
                            label: 'Visitors',
                            //lineTension: .3,
                            data: resolvedServices,
                            backgroundColor: 'rgba(172, 44, 170, .6)',
                            borderColor: 'rgba(172, 44, 170, 1)',
                            pointRadius: 0,
                            pointHoverRadius: 3,
                            borderWidth: 1
                        }]
                    },
                    options: {
                        responsive: false,
                        bezierCurve: false,
                        layout: {
                            padding: {
                                left: 10,
                                right: 0,
                                top: 0,
                                bottom: 0
                            }
                        },
                        legend: {
                            display: false,
                            position: 'top',
                            labels: {
                                fontColor: "#0747A6",
                            }
                        },
                        title: {
                            display: false,
                            text: 'Earning'
                        },
                        tooltips: {
                            mode: 'index',
                            intersect: false,
                        },
                        hover: {
                            mode: 'nearest',
                            intersect: true
                        },
                        scales: {
                            xAxes: [{
                                display: true,
                                scaleLabel: {
                                    display: true,
                                    labelString: 'Date'
                                }
                            }],
                            yAxes: [{
                                id: 'A',
                                position: 'left',
                                display: true,
                                scaleLabel: {
                                    display: true,
                                    labelString: 'Visitors'
                                },
                                ticks: {
                                    beginAtZero: true,
                                    userCallback: function (label, index, labels) {
                                        if (Math.floor(label) === label) {
                                            return label;
                                        }
                                    },
                                }
                            }, {
                                id: 'B',
                                position: 'right',
                                display: false,
                                stacked: false,
                                scaleLabel: {
                                    display: true,
                                    labelString: 'Resolved Services'
                                },
                                ticks: {
                                    beginAtZero: true,
                                    userCallback: function (label, index, labels) {
                                        if (Math.floor(label) === label) {
                                            return label;
                                        }

                                    },
                                }
                            }]

                        }
                    }
                });
            }

            if ($('#userStatistics').length > 0) {
                let userStatisticsElement = document.getElementById("userStatistics");
                let userStatistics = new Chart(userStatisticsElement, {
                    type: 'bar',
                    data: {
                        labels: ['Register', 'Active', 'Inactive', 'Blocked', /*'Outside the Country'*/],
                        datasets: [{
                            yAxisID: 'A',
                            label: 'Users',
                            //lineTension: .3,
                            data: ["{{@$registered_user_count}}", "{{@$active_user_count}}", "{{@$inactive_user_count}}", "{{@$blocked_user_count}}"],
                            backgroundColor: ['#75A613', '#AC2CAA', '#F4516C', '#FFB822', '#34BFA3'],
                            borderColor: ['#75A613', '#AC2CAA', '#F4516C', '#FFB822', '#34BFA3'],
                            pointRadius: 0,
                            pointHoverRadius: 3,
                            borderWidth: 1
                        }]
                    },
                    options: {
                        responsive: false,
                        bezierCurve: false,
                        layout: {
                            padding: {
                                left: 10,
                                right: 0,
                                top: 0,
                                bottom: 0
                            }
                        },
                        legend: {
                            display: false,
                            position: 'top',
                            labels: {
                                fontColor: "#0747A6",
                            }
                        },
                        title: {
                            display: false,
                            text: 'User Type'
                        },
                        tooltips: {
                            mode: 'index',
                            intersect: false,
                        },
                        hover: {
                            mode: 'nearest',
                            intersect: true
                        },
                        scales: {
                            xAxes: [{
                                display: true,
                                scaleLabel: {
                                    display: true,
                                    labelString: 'Users Type'
                                }
                            }],
                            yAxes: [{
                                id: 'A',
                                position: 'left',
                                display: true,
                                scaleLabel: {
                                    display: true,
                                    labelString: 'Users'
                                },
                                ticks: {
                                    beginAtZero: true,
                                    userCallback: function (label, index, labels) {
                                        if (Math.floor(label) === label) {
                                            return label;
                                        }
                                    },
                                }
                            },]

                        }
                    }
                });
            }

            if ($('#orderStatistics').length > 0) {
                let orderStatisticsElement = document.getElementById("orderStatistics");
                let orderStatistics = new Chart(orderStatisticsElement, {
                    type: 'bar',
                    data: {
                        labels: ['Pending', 'Assigned', 'Active', 'Completed', 'Cancelled'],
                        datasets: [{
                            yAxisID: 'A',
                            label: 'Users',
                            //lineTension: .3,
                            data: [348765, 275703, 73062, 123470, 225295],
                            backgroundColor: ['#75A613', '#FFB822', '#6F42C1', '#34BFA3', '#F4516C'],
                            borderColor: ['#75A613', '#FFB822', '#6F42C1', '#34BFA3', '#F4516C'],
                            pointRadius: 0,
                            pointHoverRadius: 3,
                            borderWidth: 1
                        }]
                    },
                    options: {
                        responsive: false,
                        bezierCurve: false,
                        layout: {
                            padding: {
                                left: 10,
                                right: 0,
                                top: 0,
                                bottom: 0
                            }
                        },
                        legend: {
                            display: false,
                            position: 'top',
                            labels: {
                                fontColor: "#0747A6",
                            }
                        },
                        title: {
                            display: false,
                            text: 'User Type'
                        },
                        tooltips: {
                            mode: 'index',
                            intersect: false,
                        },
                        hover: {
                            mode: 'nearest',
                            intersect: true
                        },
                        scales: {
                            xAxes: [{
                                display: true,
                                scaleLabel: {
                                    display: true,
                                    labelString: 'Users Type'
                                }
                            }],
                            yAxes: [{
                                id: 'A',
                                position: 'left',
                                display: true,
                                scaleLabel: {
                                    display: true,
                                    labelString: 'Users'
                                },
                                ticks: {
                                    beginAtZero: true,
                                    userCallback: function (label, index, labels) {
                                        if (Math.floor(label) === label) {
                                            return label;
                                        }
                                    },
                                }
                            },]

                        }
                    }
                });
            }

            if ($('#topPerforming').length > 0) {
                let serviceResolved=[], cartLabel=[];
                for(let j = 1; j <= 12; j++) {
                    cartLabel.push('Jan-' + j);
                    serviceResolved.push(getRndInteger(5, 10));
                }
                console.log(serviceResolved);

                let standardResolvedTime = document.getElementById("topPerforming");
                let requestByMission = new Chart(standardResolvedTime, {
                    type: 'line',
                    data: {
                        labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                        datasets: [{
                            label: 'ABC Inc',
                            data: serviceResolved,
                            backgroundColor: 'rgba(7, 71, 166, .2)',
                            borderColor: 'rgba(7, 71, 166, .8)',
                            pointRadius: 0,
                            pointHoverRadius: 3,
                            borderWidth: 1
                        },{
                            label: 'PQR Inc',
                            data: [5, 7, 9, 6, 9, 6, 5, 5, 8, 8, 5, 9],
                            backgroundColor: 'rgba(156, 39, 176, .2)',
                            borderColor: 'rgba(156, 39, 176, .8)',
                            pointRadius: 0,
                            pointHoverRadius: 3,
                            borderWidth: 1
                        },{
                            label: 'Ebay.com)',
                            data: [8, 9, 7, 5, 6, 6, 8, 9, 6, 9, 8, 9],
                            backgroundColor: 'rgba(33, 150, 243, .2)',
                            borderColor: 'rgba(33, 150, 243, .8)',
                            pointRadius: 0,
                            pointHoverRadius: 3,
                            borderWidth: 1
                        },{
                            label: 'Aliexpress',
                            data: [7, 6, 6, 6, 5, 9, 9, 7, 5, 7, 8, 7],
                            backgroundColor: 'rgba(0, 150, 136, .2)',
                            borderColor: 'rgba(7, 71, 166, .8)',
                            pointRadius: 0,
                            pointHoverRadius: 3,
                            borderWidth: 1
                        },{
                            label: 'XYZ Inc',
                            data: [9, 8, 7, 8, 6, 5, 7, 5, 6, 5, 8, 5],
                            backgroundColor: 'rgba(76, 175, 80, .2)',
                            borderColor: 'rgba(76, 175, 80, .8)',
                            pointRadius: 0,
                            pointHoverRadius: 3,
                            borderWidth: 1
                        },{
                            label: 'Amazon',
                            data: [8, 8, 6, 7, 9, 5, 6, 8, 5, 6, 7, 6],
                            backgroundColor: 'rgba(255, 193, 7, .2)',
                            borderColor: 'rgba(255, 193, 7, .8)',
                            pointRadius: 0,
                            pointHoverRadius: 3,
                            borderWidth: 1
                        }]
                    },
                    options: {
                        responsive: false,
                        bezierCurve: false,
                        layout: {
                            padding: {
                                left: 10,
                                right: 0,
                                top: 0,
                                bottom: 0
                            }
                        },
                        legend: {
                            display: true,
                            position: 'top',
                            labels: {
                                fontColor: "#0747A6",
                            }
                        },
                        title: {
                            display: false,
                            text: 'Standard Resolve Time'
                        },
                        tooltips: {
                            mode: 'index',
                            intersect: false,
                        },
                        hover: {
                            mode: 'nearest',
                            intersect: true
                        },
                        scales: {
                            xAxes: [{
                                display: true,
                                scaleLabel: {
                                    display: true,
                                    labelString: 'Month'
                                }
                            }],
                            yAxes: [{
                                position: 'left',
                                display: true,
                                scaleLabel: {
                                    display: true,
                                    labelString: 'Ads'
                                },
                                ticks: {
                                    beginAtZero: true,
                                    userCallback: function (label, index, labels) {
                                        if (Math.floor(label) === label) {
                                            return label;
                                        }
                                    },
                                }
                            }]

                        }
                    }
                });
            }

            if ($('#siteVisitors').length > 0) {
                let siteVisitorsElement = document.getElementById("siteVisitors");
                let siteVisitors = new Chart(siteVisitorsElement, {
                    type: 'line',
                    data: {
                        labels: label,
                        datasets: [{
                            label: 'Standard Time',
                            data: requestedServices,
                            backgroundColor: 'rgba(7, 71, 166, .6)',
                            borderColor: 'rgba(7, 71, 166, .8)',
                            pointRadius: 0,
                            pointHoverRadius: 3,
                            borderWidth: 1
                        }]
                    },
                    options: {
                        responsive: false,
                        bezierCurve: false,
                        layout: {
                            padding: {
                                left: 10,
                                right: 0,
                                top: 0,
                                bottom: 0
                            }
                        },
                        legend: {
                            display: false,
                            position: 'top',
                            labels: {
                                fontColor: "#0747A6",
                            }
                        },
                        title: {
                            display: false,
                            text: 'Standard Resolve Time'
                        },
                        tooltips: {
                            mode: 'index',
                            intersect: false,
                        },
                        hover: {
                            mode: 'nearest',
                            intersect: true
                        },
                        scales: {
                            xAxes: [{
                                display: true,
                                scaleLabel: {
                                    display: true,
                                    labelString: 'Date'
                                }
                            }],
                            yAxes: [{
                                id: 'A',
                                position: 'left',
                                display: true,
                                scaleLabel: {
                                    display: true,
                                    labelString: 'Visitors'
                                },
                                ticks: {
                                    beginAtZero: true,
                                    userCallback: function (label, index, labels) {
                                        if (Math.floor(label) === label) {
                                            return label;
                                        }
                                    },
                                }
                            }]

                        }
                    }
                });
            }

            if ($('#srt').length > 0) {
                let resolvedTime=[], cartLabel=[];
                for(let j = 1; j <= 31; j++) {
                    cartLabel.push('Jan-' + j);
                    resolvedTime.push(getRndInteger(3, 8));
                }

                let standardResolvedTime = document.getElementById("srt");
                let requestByMission = new Chart(standardResolvedTime, {
                    type: 'line',
                    data: {
                        labels: label,
                        datasets: [{
                            label: 'Standard Time',
                            data: [6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6],
                            backgroundColor: 'rgba(76, 175, 80, 0)',
                            borderColor: '#4CAF50',
                            pointRadius: 0,
                            pointHoverRadius: 3,
                            borderWidth: 2
                        },{
                            label: 'Brazil (Brasilia)',
                            data: resolvedTime,
                            backgroundColor: 'rgba(7, 71, 166, .3)',
                            borderColor: 'rgba(7, 71, 166, .8)',
                            pointRadius: 0,
                            pointHoverRadius: 3,
                            borderWidth: 1
                        },{
                            label: 'Canada (Ottawa)',
                            data: [3, 3, 5, 4, 5, 3, 7, 4, 3, 3, 7, 4, 7, 3, 3, 6, 6, 7, 5, 6, 3, 5, 3, 7, 5, 3, 7, 3, 6, 4, 4],
                            backgroundColor: 'rgba(156, 39, 176, .3)',
                            borderColor: 'rgba(156, 39, 176, .8)',
                            pointRadius: 0,
                            pointHoverRadius: 3,
                            borderWidth: 1
                        },{
                            label: 'Mexico (Mexico)',
                            data: [4, 5, 6, 6, 4, 7, 7, 4, 5, 3, 5, 3, 4, 7, 4, 5, 5, 4, 4, 3, 5, 6, 6, 6, 3, 3, 5, 7, 4, 5, 7],
                            backgroundColor: 'rgba(33, 150, 243, .3)',
                            borderColor: 'rgba(33, 150, 243, .8)',
                            pointRadius: 0,
                            pointHoverRadius: 3,
                            borderWidth: 1
                        },{
                            label: 'USA (Washington)',
                            data: [7, 6, 3, 7, 7, 5, 7, 4, 5, 4, 5, 5, 4, 7, 4, 6, 3, 3, 3, 3, 7, 6, 5, 3, 5, 6, 3, 5, 3, 6, 3],
                            backgroundColor: 'rgba(0, 150, 136, .3)',
                            borderColor: 'rgba(7, 71, 166, .8)',
                            pointRadius: 0,
                            pointHoverRadius: 3,
                            borderWidth: 1
                        },{
                            label: 'Bhutan (Thimphu)',
                            data: [5, 4, 3, 6, 7, 5, 5, 3, 3, 5, 7, 5, 4, 4, 6, 5, 5, 6, 4, 3, 3, 6, 6, 6, 5, 5, 7, 7, 4, 4, 7],
                            backgroundColor: 'rgba(76, 175, 80, .3)',
                            borderColor: 'rgba(76, 175, 80, .8)',
                            pointRadius: 0,
                            pointHoverRadius: 3,
                            borderWidth: 1
                        },{
                            label: 'India (Kolkata)',
                            data: [3, 6, 4, 7, 6, 4, 3, 5, 7, 5, 5, 4, 3, 4, 6, 6, 7, 3, 5, 3, 4, 4, 4, 5, 6, 4, 5, 6, 7, 5, 7],
                            backgroundColor: 'rgba(255, 193, 7, .3)',
                            borderColor: 'rgba(255, 193, 7, .8)',
                            pointRadius: 0,
                            pointHoverRadius: 3,
                            borderWidth: 1
                        }]
                    },
                    options: {
                        responsive: false,
                        bezierCurve: false,
                        layout: {
                            padding: {
                                left: 10,
                                right: 0,
                                top: 0,
                                bottom: 0
                            }
                        },
                        legend: {
                            display: true,
                            position: 'top',
                            labels: {
                                fontColor: "#0747A6",
                            }
                        },
                        title: {
                            display: false,
                            text: 'Standard Resolve Time'
                        },
                        tooltips: {
                            mode: 'index',
                            intersect: false,
                        },
                        hover: {
                            mode: 'nearest',
                            intersect: true
                        },
                        scales: {
                            xAxes: [{
                                display: true,
                                scaleLabel: {
                                    display: true,
                                    labelString: 'Date'
                                }
                            }],
                            yAxes: [{
                                position: 'left',
                                display: true,
                                scaleLabel: {
                                    display: true,
                                    labelString: 'Requests'
                                },
                                ticks: {
                                    beginAtZero: true,
                                    userCallback: function (label, index, labels) {
                                        if (Math.floor(label) === label) {
                                            return label;
                                        }
                                    },
                                }
                            }]

                        }
                    }
                });
            }

            if ($('#metVsBreached').length > 0) {
                let met = [], breached = [];
                for (let i = 1; i <=31; i++) {
                    met.push(Math.floor(Math.random() * 100));
                    breached.push(Math.floor(Math.random() * 100));
                }
                let metVsBreached = document.getElementById("metVsBreached");
                let metBreached = new Chart(metVsBreached, {
                    type: 'bar',
                    data: {
                        labels: label,
                        datasets: [
                            {
                                label: "Met",
                                data: met,
                                backgroundColor: 'rgba(7, 71, 166, .8)',
                                borderColor: 'rgba(7, 71, 166, 1)',
                                borderWidth: []
                            },
                            {
                                label: "Breached",
                                data: breached,
                                backgroundColor: 'rgba(216, 76, 93, .8)',
                                borderColor: 'rgba(216, 76, 93, .8)',
                                borderWidth: []
                            }
                        ]
                    },
                    options: {
                        responsive: true,
                        layout: {
                            padding: {
                                left: 10,
                                right: 0,
                                top: 0,
                                bottom: 0
                            }
                        },
                        legend: {
                            display: true,
                            position: 'top',
                            labels: {
                                fontColor: "#0747A6",
                            }
                        },
                        title: {
                            display: false,
                            text: 'Met vs Breached'
                        },
                        tooltips: {
                            mode: 'index',
                            intersect: false,
                        },
                        hover: {
                            mode: 'nearest',
                            intersect: true
                        },
                        scales: {
                            xAxes: [{
                                display: true,
                                scaleLabel: {
                                    display: true,
                                    labelString: 'Date'
                                }
                            }],
                            yAxes: [{
                                display: true,
                                scaleLabel: {
                                    display: true,
                                    labelString: 'Value'
                                }
                            }]
                        }
                    }
                });
            }

            /*New chart*/
            AmCharts.addInitHandler(function(pieChart) {
                if (pieChart.legend === undefined || pieChart.legend.truncateLabels === undefined)
                    return;

                // init fields
                var titleField = pieChart.titleField;
                var legendTitleField = pieChart.titleField+"Legend";

                // iterate through the data and create truncated label properties
                for(var i = 0; i < pieChart.dataProvider.length; i++) {
                    var label = pieChart.dataProvider[i][pieChart.titleField];
                    if (label.length > pieChart.legend.truncateLabels)
                        label = label.substr(0, pieChart.legend.truncateLabels-1)+'...'
                    pieChart.dataProvider[i][legendTitleField] = label;
                }

                // replace pieChart.titleField to show our own truncated field
                pieChart.titleField = legendTitleField;

                // make the balloonText use full title instead
                pieChart.balloonText = pieChart.balloonText.replace(/\[\[title\]\]/, "[["+titleField+"]]");

            }, ["pie"]);

            /**
             * Create the chart
             */
            var pieChart = AmCharts.makeChart("topServicesStatistic", {
                "type": "pie",
                "theme": "light",
                "labelsEnabled": false,
                "legend": {
                    "markerType": "circle",
                    "position": "right",
                    "marginRight": 80,
                    "autoMargins": false,
                    "truncateLabels": 25 // custom parameter
                },
                "dataProvider": [{
                    "label": "CrowdSurge",
                    "value": '12140',
                    "color": "#75A613",
                    "textColor": "#575962",
                }, {
                    "label": "Deal Extreme",
                    "value": '10115',
                    "color": "#F4516C",
                    "textColor": "#575962"
                }, {
                    "label": "Focal Price",
                    "value": '9003',
                    "color": "#FFB822",
                    "textColor": "#575962"
                }, {
                    "label": "Gameplanet",
                    "value": '7230',
                    "color": "#34BFA3",
                    "textColor": "#575962"
                }],
                "valueField": "value",
                "titleField": "label",
                "labelColorField": "textColor",
                "colorField": "color",
                "balloonText": "[[title]]<br><span style='font-size:14px'><b>[[value]]</b> ([[percents]]%)</span>"
            });

            function getRndInteger(min, max) {
                return Math.floor(Math.random() * (max - min)) + min;
            }
        })
    </script>
@endsection
