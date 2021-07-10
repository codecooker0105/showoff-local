@extends('layouts.app')

@section('styles')
    <style>
        .gallery {
            -webkit-column-count: 3;
            -moz-column-count: 3;
            column-count: 3;
            -webkit-column-width: 33%;
            -moz-column-width: 33%;
            column-width: 33%;
        }

        .gallery .pics {
            -webkit-transition: all 350ms ease;
            transition: all 350ms ease;
        }

        .gallery .animation {
            -webkit-transform: scale(1);
            -ms-transform: scale(1);
            transform: scale(1);
        }

        @media (max-width: 450px) {
            .gallery {
                -webkit-column-count: 1;
                -moz-column-count: 1;
                column-count: 1;
                -webkit-column-width: 100%;
                -moz-column-width: 100%;
                column-width: 100%;
            }
        }

        @media (max-width: 400px) {
            .btn.filter {
                padding-left: 1.1rem;
                padding-right: 1.1rem;
            }
        }
    </style>
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
                                <I CLASS="M-NAV__LINK-ICON LA LA-HOME"></I>
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
                    <div class="row">
                        <div class="col-md-8 mx-auto">
                            <div class="post-details">
                                <div class="post-header">
                                    <div class="user-avatar" style="background-image: url('{{@$post->users->image_url}}')"></div>
                                    <div class="u-p-info">
                                        <h4 class="user-name mb-2">{{@$post->users->username}} <i class="text-danger">{{@$post->feel}}</i>

                                            @if(count($post->tags))
                                                <small>with</small>
                                                @forelse($post->tags as $tag)
                                                    <a href="{{$tag->id}}">{{@$tag->users->username ? @$tag->users->username : @$tag->users->email}}</a>,
                                                @empty
                                                @endforelse
                                            @endif
                                        </h4>
                                        <p class="mb-2">
                                            <small><i class="text-muted la la-map-marker"></i></small>
                                            <span class="text-info">{{@$post->location}}</span></p>
                                        <p class="post-meta-info">{{date('Y-m-d - h:i A', strtotime(@$post->created_at))}}</p>
                                        {{--<a href="{{url('admin/posts/delete-from-detail/'.@$post->id)}}" class="remove-btn" >Delete</a>--}}
                                        <span id="block_unblock_{{@$post->id}}">
                                            @if($post->status ==1)
                                                <a href="javascript:" class="btn btn-outline-warning" id="{{$post->id}}" onclick="blockMessage(this.id)" data-toggle="modal" data-target="#blockedReason"><i class="la la-ban"></i> Block</a>
                                            @else
                                                <a href="javascript:" class="btn btn-outline-success" id="{{$post->id}}"
                                                   onclick="postActiveFunction(this.id)"><i class="la la-check-circle-o"></i>
                                                Activate</a>
                                            @endif
                                        </span>
                                    </div>
                                </div>

                                @if(@$post->status == 2)
                                    <div class="alert alert-warning" role="alert">
                                        <strong>Blocked!</strong> <br>
                                        {{@$post->log_message}}
                                    </div>
                                @endif
                                <div class="post-body">
                                    <p>{{@$post->post_text}}</p>
                                    @if(@$post->type == 1)
                                        <div class="thumb-container">
                                            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                                                <ol class="carousel-indicators">
                                                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                                    @forelse($post->images as $key=>$image)
                                                        <li data-target="#carouselExampleIndicators" data-slide-to="{{$key+1}}"></li>
                                                    @empty
                                                    @endforelse

                                                </ol>
                                                <div class="carousel-inner">
                                                    <div class="carousel-item active">
                                                        <img class="d-block w-100" src="{{asset($post->reference_url)}}" alt="First slide">
                                                    </div>

                                                    @forelse($post->images as $image)
                                                        <div class="carousel-item">
                                                            <img class="d-block w-100" src="{{asset($image->reference_url)}}" alt="First slide">
                                                        </div>
                                                    @empty
                                                    @endforelse
                                                </div>
                                                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                                    <span class="sr-only">Previous</span>
                                                </a>
                                                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                                    <span class="sr-only">Next</span>
                                                </a>
                                            </div>
                                        </div>
                                    @else
                                        <div class="thumb-container">
                                            <div class="video-frame">
                                                <div class="frame-inner">
                                                    <video controls>
                                                        <source src="{{@$post->reference_url ? $post->reference_url : $post->opentok_s3}}" type="video/mp4">
                                                        Your browser does not support the video tag.
                                                    </video>
                                                </div>
                                            </div>
                                        </div>
                                    @endif
                                </div>
                                <div id="refresh">
                                    @include('posts.render_post_comment')
                                </div>
                                <div class="pt-4">
                                    <div id="map" class="mt-3" style="width: 100%; height: 300px;"></div>
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
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB6-RMho2-CFvthyiXR45iOc5zrrDwImRA"></script>
    <script src="{{url('/js/jquery.googlemap.js')}}"></script>
    <script type="text/javascript">
        $.ajaxSetup({headers: {'csrftoken': '{{ csrf_token() }}'}});
    </script>
    <script>
        function blockMessage(id) {
            var id1 = id;
            $("#post_id").val(id1);
        }

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

        function postBlockFunction() {
            $('#blockedReason').modal('hide');
            var log_message = $('#reason').val();
            var post_id = $('#post_id').val();
            $.ajax({
                url: "{{URL::to('admin/posts/block-status')}}",
                method: "POST",
                data: {'post_id': post_id, 'log_message':log_message, _token: '{{csrf_token()}}'},
                dataType: "json",
                success: function (data) {
                    $('#block_unblock_' + post_id ).html(data);
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
                    $.ajax({
                        url: "{{URL::to('admin/posts/active-status')}}",
                        method: "POST",
                        data: {'id': id, _token: '{{csrf_token()}}'},
                        dataType: "json",
                        success: function (data) {
                            $('#block_unblock_' + id ).html(data);
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
                        url: "{{URL::to('admin/post-comment/delete/')}}",
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
                        'Post\'s comment has been deleted.',
                        'success'
                    )
                }
            })
        }
    </script>

    <script>

        // MDB Lightbox Init
        $(function () {
            $("#mdb-lightbox-ui").load("mdb-addons/mdb-lightbox-ui.html");
        });

        $(function () {
            var selectedClass = "";
            $(".filter").click(function () {
                selectedClass = $(this).attr("data-rel");
                $("#gallery").fadeTo(100, 0.1);
                $("#gallery div").not("." + selectedClass).fadeOut().removeClass('animation');
                setTimeout(function () {
                    $("." + selectedClass).fadeIn().addClass('animation');
                    $("#gallery").fadeTo(300, 1);
                }, 300);
            });
        });

        $(function () {

                    @if(@$post->latitude && @$post->longitudes && @$post->latitude!= "null")
            var myLatLng = {lat: {{@$post->latitude}}, lng: {{@$post->longitudes}}};

            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 10
                ,
                center: myLatLng
            });

            var marker = new google.maps.Marker({
                position: myLatLng,
                map: map,
                title: 'Hello World!'
            });
            @endif
        })
    </script>

    {{--Log message modal--}}
    <div class="modal fade" id="blockedReason" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <form action="#" class="modal-content">
                <div class="modal-body">
                    <h5 id="" class="modal-title mb-4">Confirmation</h5>
                    <div class="form-group">
                        <label for="reason">Comment</label>
                        <textarea name="blocked_comment" id="reason" rows="3" class="form-control"></textarea>
                        <input type="hidden" name="id" id="post_id">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-sm btn-primary" onclick="postBlockFunction()">Confirm</button>
                    <button type="button" class="btn btn-sm btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </form>
        </div>
    </div>

@endsection