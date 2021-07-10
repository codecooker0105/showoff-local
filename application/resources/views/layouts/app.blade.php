 <!DOCTYPE html>
<html lang="en">
<!-- begin::Head -->
<head>
    <meta charset="utf-8"/>

    <title>{{env('APP_NAME')}}{{--{{ config('app.name') }}--}} | {{@$pageTitle}}</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no">

    <!--begin::Web font -->
    <script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.16/webfont.js"></script>
    <script>
        WebFont.load({
            google: {"families": ["Poppins:300,400,500,600,700", "Roboto:300,400,500,600,700"]},
            active: function () {
                sessionStorage.fonts = true;
            }
        });
    </script>
    <!--end::Web font -->
    <!--end::Page Vendors Styles -->

    <!--begin::Base Styles -->
    <link href="{{asset('/')}}assets/vendors/base/vendors.bundle.css" rel="stylesheet" type="text/css"/>
<!--RTL version:<link href="{{asset('/')}}assets/vendors/base/vendors.bundle.rtl.css" rel="stylesheet" type="text/css" />-->


    <link href="{{asset('/')}}assets/demo/default/base/style.bundle.css" rel="stylesheet" type="text/css"/>

    <link href="{{asset('/')}}css/app.css" rel="stylesheet" type="text/css"/>
<!--RTL version:<link href="{{asset('/')}}assets/assets/demo/default/base/style.bundle.rtl.css" rel="stylesheet" type="text/css" />-->

@yield('styles')

<!--end::Base Styles -->

    <link rel="shortcut icon" href="{{asset('/')}}assets/demo/default/media/img/logo/favicon.ico"/>

    <!--sweet alert-->
    <script src="{{asset('/')}}assets/sweet-alert/sweetalert.min.js" type="text/javascript"></script>

    <script
            src="https://code.jquery.com/jquery-3.3.1.js"
            integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
            crossorigin="anonymous"></script>
</head>
<!-- end::Head -->


<!-- begin::Body -->
<body class="m-page--fluid m--skin- m-content--skin-light2 m-header--fixed m-header--fixed-mobile m-aside-left--enabled m-aside-left--skin-light m-aside-left--fixed m-aside-left--offcanvas m-footer--push m-aside--offcanvas-default">


<!-- begin:: Page -->
<div class="m-grid m-grid--hor m-grid--root m-page">


    <!-- BEGIN: Header -->
@include('layouts.includes.header')
<!-- END: Header -->

    <!-- begin::Body -->
    <div class="m-grid__item m-grid__item--fluid m-grid m-grid--ver-desktop m-grid--desktop m-body">

        <!-- BEGIN: Left Aside -->
    @include('layouts.includes.sidebar')
    <!-- END: Left Aside -->

        @yield('content')

    </div>
    <!-- end:: Body -->

    <!-- begin::Footer -->
@include('layouts.includes.footer')
<!-- end::Footer -->

</div>
<!-- end:: Page -->

<!-- begin::Scroll Top -->
<div id="m_scroll_top" class="m-scroll-top">
    <i class="la la-arrow-up"></i>
</div>
<!-- end::Scroll Top -->

<!--begin::Base Scripts -->
<script src="{{asset('/')}}assets/vendors/base/vendors.bundle.js" type="text/javascript"></script>
<script src="{{asset('/')}}assets/demo/default/base/scripts.bundle.js" type="text/javascript"></script>
<!--end::Base Scripts -->

@yield('scripts')

</body>
<!-- end::Body -->
</html>