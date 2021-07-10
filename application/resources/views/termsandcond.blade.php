
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8"/>
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
    <!--RTL version:<link href="http://showofff.xyz/assets/vendors/base/vendors.bundle.rtl.css" rel="stylesheet" type="text/css" />-->


        <link href="{{asset('/')}}assets/demo/default/base/style.bundle.css" rel="stylesheet" type="text/css"/>

        <title>Terms and Conditions</title>
    </head>
    <body style="font-family:Verdana; font-size: 15px">

        <div style="background-color:#f1f1f1;padding:15px;">
            <div class="container">
                <?php echo htmlspecialchars_decode($data->terms_conditions);?>
                <br>
            </div>
        </div>
    </body>
</html>
