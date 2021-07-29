<!DOCTYPE html>
<html lang="en" style="overflow-x: hidden">
<head>
    <meta charset="utf-8"/>
    <title>{{env('APP_NAME')}} | {{@$pageTitle}}</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, 
        initial-scale=1, maximum-scale=1, shrink-to-fit=no">
    <script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.16/webfont.js"></script>
    <script>
        WebFont.load({
            google: {"families": ["Montserrat:600,700,800"]},
            active: function () {
                sessionStorage.fonts = true;
            }
        });
    </script>
    <link href="{{asset('/')}}assets/demo/default/base/style.bundle.css" rel="stylesheet" type="text/css"/>
    <link href="{{asset('/')}}css/app.css" rel="stylesheet" type="text/css"/>
    <link rel="shortcut icon" href="{{asset('/')}}assets/demo/default/media/img/logo/favicon.ico"/>
    <script
        src="https://code.jquery.com/jquery-3.3.1.js"
        integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
        crossorigin="anonymous">
    </script>
</head>

<body class="frontpage">

    <div class="front-content container-fluid">
        <div class="header-part">
            <div class="header_title ">
                <div>It's time to</div>
            </div>
            <div class="header_title ">
                <div>Showofff what</div>
            </div>
            <div class="header_title ">
                <div>you've got!</div>
            </div>
            <div class="row app_link">
                <div class="app_store">
                    <a href="https://apps.apple.com/us/app/show-offf/id1514453840">
                    <img src="{{asset('/')}}assets/img/app_store.png" style="margin-right: 15px;"></a>
                    <a href="https://play.google.com/store/apps/details?id=com.brenda.showofff">
                    <img src="{{asset('/')}}assets/img/google_play.png"></a>
                </div>
            </div>
            <div class="row scan_bar">
                <img class="ios_qr_code" src="{{asset('/')}}assets/img/iOS-qr-code.png">
                <img class="android_qr_code" src="{{asset('/')}}assets/img/android-qr-code.png">
            </div>
            <div class="row scan_bar_text">
                <span >Scan the QR Code</span>
            </div>
        </div>
        <div class="middle_part">
            <div class="row">
                <div class="col-6 col-sm-6 col-md-6 mobile_pic">
                    <img src="{{asset('/')}}assets/img/mobile.png">
                </div>
                <div class="col-6 col-sm-6 col-md-6 rectangle_pic">
                    <img src="{{asset('/')}}assets/img/rectangle_1.png">
                    <span class="about_show">About Showofff</span>
                    <span class="show_desc">Showofff, an astounding digital platform to showcase your breathtaking talent to the world. A brand-new platform to discover and create entertaining videos. Our goal is to encourage creativity and enjoyment. We are here to promote and evolve the passion of Singing, Dancing, Acting, Comedy, Poems, Instruments and Concerts. All with the intent of creation with a loaded imagination. Kickstart your journey by uploading short 1 minute videos and reach others on our application.</span>
                </div>
            </div>
        </div>
        <div class="category_list">
            <div class="row category_header">
                <div class="col-md-12  text-center">
                    <span class="category_title"> Our Categories</span>
                </div>
                <div class="col-md-12 text-center">
                    <span class="category_description">Create, view, and share short amusing videos of Singing, Dancing, Acting, Comedy, Poems, Instruments and Concerts. Make short and Entertaining videos to express yourself. Connect with your target audience and expand your reach.</span>
                </div>
            </div>
            <div class="row category_content">
                <div class="sub_cat col-lg-3 col-md-6 col-sm-6 col-6">
                    <div class="category-image">
                        <img src="{{asset('/')}}assets/img/image_1.png">
                    </div>
                    <div class="description">
                        <div class="bar">
                            <img src="{{asset('/')}}assets/img/bar.png">
                        </div>
                        <div class="subcat_title">
                            <span class="cate_title">Singing</span>
                        </div>
                        <div class="subcat_desc">
                            <span class="cate_descrip">I really enjoyed your singing and Karaoke.</span>
                        </div>
                    </div>
                </div>
                <div class="sub_cat col-lg-3 col-md-6 col-sm-6 col-6">
                    <div class="category-image">
                        <img src="{{asset('/')}}assets/img/image_2.png">
                    </div>
                    <div class="description">
                        <div class="bar">
                            <img src="{{asset('/')}}assets/img/bar.png">
                        </div>
                        <div class="subcat_title">
                            <span class="cate_title">Concert</span>
                        </div>
                        <div class="subcat_desc">
                            <span class="cate_descrip">The concert was very fun and exciting.</span>
                        </div>
                    </div>
                </div>
                <div class="sub_cat col-lg-3 col-md-6 col-sm-6 col-6">
                    <div class="category-image">
                        <img src="{{asset('/')}}assets/img/image_3.png">
                    </div>
                    <div class="description">
                        <div class="bar">
                            <img src="{{asset('/')}}assets/img/bar.png">
                        </div>
                        <div class="subcat_title">
                            <span class="cate_title">Dancing</span>
                        </div>
                        <div class="subcat_desc">
                            <span class="cate_descrip">I really enjoyed-your dance steps.</span>
                        </div>
                    </div>
                </div>
                <div class="sub_cat col-lg-3 col-md-6 col-sm-6 col-6">
                    <div class="category-image">
                        <img src="{{asset('/')}}assets/img/image_4.png">
                    </div>
                    <div class="description">
                        <div class="bar">
                            <img src="{{asset('/')}}assets/img/bar.png">
                        </div>
                        <div class="subcat_title">
                            <span class="cate_title">Acting</span>
                        </div>
                        <div class="subcat_desc">
                            <span class="cate_descrip">I really enjoyed seeing you act.</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row category_content">
                <div class="sub_cat col-lg-3 col-md-6 col-sm-6 col-6">
                    <div class="category-image">
                        <img src="{{asset('/')}}assets/img/image_5.png">
                    </div>
                    <div class="description">
                        <div class="bar">
                            <img src="{{asset('/')}}assets/img/bar.png">
                        </div>
                        <div class="subcat_title">
                            <span class="cate_title">Instruments</span>
                        </div>
                        <div class="subcat_desc">
                            <span class="cate_descrip">I love watching you play the guitar.</span>
                        </div>
                    </div>
                </div>
                <div class="sub_cat col-lg-3 col-md-6 col-sm-6 col-6">
                    <div class="category-image">
                        <img src="{{asset('/')}}assets/img/image_6.png">
                    </div>
                    <div class="description">
                        <div class="bar">
                            <img src="{{asset('/')}}assets/img/bar.png">
                        </div>
                        <div class="subcat_title">
                            <span class="cate_title">Comedy</span>
                        </div>
                        <div class="subcat_desc">
                            <span class="cate_descrip">Your comedy show was very funny.</span>
                        </div>
                    </div>
                </div>
                <div class="sub_cat col-lg-3 col-md-6 col-sm-6 col-6">
                    <div class="category-image">
                        <img src="{{asset('/')}}assets/img/image_7.png">
                    </div>
                    <div class="description">
                        <div class="bar">
                            <img src="{{asset('/')}}assets/img/bar.png">
                        </div>
                        <div class="subcat_title">
                            <span class="cate_title">Poems</span>
                        </div>
                        <div class="subcat_desc">
                            <span class="cate_descrip">Your poetry was very inspirational to me.</span>
                        </div>
                    </div>
                </div>
                <div class="sub_cat col-lg-3 col-md-6 col-sm-6 col-6">
                    <div class="category-image">
                        <img src="{{asset('/')}}assets/img/image_8.png">
                    </div>
                    <div class="description">
                        <div class="bar">
                            <img src="{{asset('/')}}assets/img/bar.png">
                        </div>
                        <div class="subcat_title">
                            <span class="cate_title">Dancing</span>
                        </div>
                        <div class="subcat_desc">
                            <span class="cate_descrip">I really enjoyed-your dance steps.</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="cate_footer row text-center">
            <div class="col-md-12">
                <span clss="cooter_copy">&copy; 2021 www.showofff.io. All right reserved.</span>
            </div>
        </div>
    </div>
    <script src="{{asset('/')}}assets/demo/default/base/scripts.bundle.js" 
    type="text/javascript"></script>
</body>
</html>