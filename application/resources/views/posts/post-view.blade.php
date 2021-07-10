<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <meta property="og:title" content=" {{@$post->post_text}}"/>
    @if(@$post->type == 1)
        <meta
                property="og:image"
                content="{{asset($post->reference_url)}}"
        />
    @else
        <meta
                property="og:image"
                content="{{@asset($post->thumbnail_url)}}"
        />
@endif

<!--Please make title dynamic-->
    <title> {{@$post->post_text}}</title>

    <link rel="stylesheet" href="{{asset('')}}/css/line-awesome.min.css"/>
    <link rel="stylesheet" href="{{asset('')}}/css/owl.carousel.min.css"/>

    <style>
        @import url("https://fonts.googleapis.com/css?family=Poppins:400,400i,700,700i&display=swap");

        * {
            margin: 0;
            padding: 0;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
        }

        html,
        body {
            height: 100%;
            width: 100%;
        }

        body {
            color: #eed4ee;
            background-color: #151227;
            line-height: 1.48;
            font-size: 15px;
            font-family: "Poppins", sans-serif;
            letter-spacing: 0.01rem;
        }

        a {
            color: #ac2caa;
        }

        iframe,
        video {
            width: 100%;
            height: 100%;
        }

        #wrap {
            padding: 0 20px;
            min-height: 100%;
            width: 100%;
        }

        .text-muted {
            color: #eed4ee;
            opacity: 0.6;
        }

        .header {
            text-align: center;
            padding: 20px;
        }

        .post-container {
            width: 100%;
            max-width: 767px;
            padding: 20px;
            margin: 0 auto;
            background-color: #1a1631;
            border-radius: 10px;
        }

        .post-header {
            display: flex;
            align-items: center;
            margin-bottom: 15px;
        }

        .post-header .user-avatar {
            width: 70px;
            height: 70px;
            background-color: #141127;
            background-position: center center;
            background-size: cover;
            border-radius: 50%;
        }

        .post-header .user-avatar img {
            visibility: hidden;
            max-width: 100%;
            height: auto;
        }

        .post-header .user-metas {
            width: calc(100% - 70px);
            padding-left: 15px;
        }

        .post-header .meta-title {
            font-size: 1.15rem;
            font-weight: normal;
            margin-bottom: 8px;
        }

        .post-header .meta-title .user-name {
            font-weight: bold;
        }

        .post-header .user-metas a {
            text-decoration: none;
            font-weight: bold;
        }

        .post-header .user-metas p {
            opacity: 0.6;
            margin-bottom: 0;
        }

        .post-description {
            margin-bottom: 15px;
        }

        .post-thumb img {
            max-width: 100%;
            height: auto;
        }

        .post-meta {
            margin-top: 10px;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .ratio-16-9 {
            position: relative;
            display: block;
        }

        .ratio-16-9::before {
            content: "";
            display: block;
            padding-bottom: 56.5%;
        }

        .ratio-inner {
            position: absolute;
            top: 0;
            left: 0;
            height: 100%;
            width: 100%;
        }

        #img-carousel {
            position: relative;
        }

        #img-carousel img {
            max-width: 100%;
            height: auto;
        }

        #img-carousel .owl-prev,
        #img-carousel .owl-next {
            position: absolute;
            top: 50%;
            font-size: 3rem;
            transform: translateY(-50%);
        }

        #img-carousel .owl-prev:focus,
        #img-carousel .owl-next:focus {
            outline: none;
        }

        #img-carousel .owl-prev {
            left: 20px;
        }

        #img-carousel .owl-next {
            right: 20px;
        }

        #img-carousel .owl-dots {
            position: absolute;
            bottom: 30px;
            left: 0;
            text-align: center;
            width: 100%;
        }

        #img-carousel .owl-dot {
            width: 10px;
            height: 10px;
            border-radius: 50%;
            background-color: rgba(255, 255, 255, 0.6);
            display: inline-block;
            margin: 0 5px;
        }

        #img-carousel .owl-dot.active {
            background-color: #ac2caa;
        }

        .comment-list {
            margin-top: 20px;
        }

        .comment-list .comment-title {
            font-size: 1rem;
            margin-bottom: 15px;
            font-weight: normal;
            text-transform: uppercase;
            letter-spacing: 0.02rem;
        }

        .comment {
            display: flex;
        }

        .comment:not(:last-child) {
            padding-bottom: 15px;
            border-bottom: 1px solid rgba(255, 255, 255, 0.1);
            margin-bottom: 15px;
        }

        .comment .comment-avatar {
            height: 40px;
            width: 40px;
            background-color: #f8f8f8;
            border-radius: 50%;
            background-position: center center;
            background-size: cover;
        }

        .comment .comment-info {
            width: calc(100% - 50px);
            padding-left: 15px;
        }

        .comment .comment-text {
            margin-bottom: 2px;
        }

        .comment .user-name {
            font-weight: bold;
        }

        .comment .comment-date {
            margin-bottom: 0;
            font-size: 0.8rem;
            text-transform: lowercase;
            opacity: 0.8;
        }

        .footer {
            padding: 20px;
            text-align: center;
            margin-top: 15px;
        }
    </style>
</head>

<body>
<div id="wrap">
    <div class="header">
        <img src="{{asset('')}}/img/logo.svg" alt="Party Pwe"/>
    </div>

    <div class="post-container">
        <div class="post-header">
            <div
                    class="user-avatar"
                    style="background-image: url('{{@$post->users->imageurl}}')"
            >
                <img
                        src="{{@$post->users->imageurl}}"
                        alt="John Doe"
                />
            </div>
            <div class="user-metas">
                <h4 class="meta-title">
                    <span class="user-name">{{@$post->users->username}}</span> --
                    <i>{{@$post->feel}}</i> <span class="text-muted">with</span>
                    @if(count($post->tags))
                        <small>with</small>
                        @php $len = count(@$post->tags); @endphp
                        @forelse($post->tags as $key=>$tag)

                            <a href="javascript://">{{@$tag->users->name ? @$tag->users->name : @$tag->users->email}}</a> @if($len-1 != $key), @endif
                        @empty
                        @endforelse
                    @endif
                </h4>
                <p><i class="la la-map-marker"></i> {{@$post->location}} &nbsp; <i class="la la-calendar"></i> {{date('Y-m-d - h:i A', strtotime(@$post->created_at))}}</p>
            </div>
        </div>

        <div class="post-description">
            {{@$post->post_text}}
        </div>

        <!-- <div class="post-thumb">
              <img
                src="https://images.pexels.com/photos/2034851/pexels-photo-2034851.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                alt="Post title"
              />
            </div> -->

        <!-- <div class="ratio-16-9">
              <div class="ratio-inner">
                <video
                  controls=""
                  poster="http://tsbsoft.com/party-pwe//assets/video/video.png"
                >
                  <source
                    src="http://tsbsoft.com/party-pwe//assets/video/video.mp4"
                    type="video/mp4"
                  />
                  Your browser does not support the video tag.
                </video>
              </div>
            </div> -->

        @if(@$post->type == 1)
            <div id="img-carousel" class="owl-carousel">
                <img
                        src="{{$post->reference_url}}"
                        alt=""
                />
                @forelse($post->images as $image)
                    <img
                            src="{{asset($image->reference_url)}}"
                            alt=""
                    />
                @empty
                @endforelse

            </div>
        @else

            <div class="ratio-16-9">
                <div class="ratio-inner">
                    <video
                            controls=""
                            poster="{{@$post->reference_url ? $post->reference_url : $post->opentok_s3}}"
                    >
                        <source
                                src="{{@$post->reference_url ? $post->reference_url : $post->opentok_s3}}"
                                type="video/mp4"
                        />
                        Your browser does not support the video tag.
                    </video>
                </div>
            </div>

        @endif

        <div class="post-meta">
            <div><span class="la la-heart"></span> Likes({{@$post->likes_count}})</div>
            <div><span class="la la-comments"></span> Comments({{@$post->comments_count}})</div>
        </div>

        <div class="comment-list">
            <h4 class="comment-title">Comments ({{@$post->comments_count}})</h4>
            {{--@include('posts.commentsDisplay')--}}
        </div>
    </div>
</div>

<footer class="footer">
    &copy; 2019 Party Pwe. All right reserved.
</footer>

<!-- Javascript -->
<script src="{{asset('')}}/js/jquery-3.4.1.min.js"></script>
<script src="{{asset('')}}/js/owl.carousel.min.js"></script>
<script>
    $(function () {
        "use strict";
        let imgCarousel = $("#img-carousel");
        if (imgCarousel.length > 0) {
            imgCarousel.owlCarousel({
                loop: true,
                margin: 0,
                nav: true,
                items: 1,
                autoHeight: true
            });
        }
    });
</script>
</body>
</html>
