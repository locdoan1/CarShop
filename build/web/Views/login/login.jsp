<%-- 
    Document   : login
    Created on : Mar 14, 2024, 10:54:15 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html dir="ltr" lang="en-US">

    <!-- Mirrored from demo.zytheme.com/autoshop/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 29 Feb 2024 17:33:37 GMT -->
    <head>
        <!-- Document Meta
            ============================================= -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!--IE Compatibility Meta-->
        <meta name="author" content="zytheme" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta name="description" content="construction html5 template">
        <link href="${pageContext.request.contextPath}/images/favicon/favicon.ico" rel="icon">Ư

        <!-- Fonts
            ============================================= -->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i%7CRaleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i%7CUbuntu:300,300i,400,400i,500,500i,700,700i' rel='stylesheet' type='text/css'>

        <!-- Stylesheets
            ============================================= -->
        <link href="${pageContext.request.contextPath}/css/external.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/custom.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css"
              integrity="sha512-+L4yy6FRcDGbXJ9mPG8MT/3UCDzwR9gPeyFNMCtInsol++5m3bk2bXWKdZjvybmohrAsn3Ua5x8gfLnbE1YkOg=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
        <!--[if lt IE 9]>
              <script src="assets/js/html5shiv.js"></script>
              <script src="assets/js/respond.min.js"></script>
            <![endif]-->

        <!-- Document Title
            ============================================= -->
        <title>Autoshop</title>
    </head>
    <body>
        <!-- Document Wrapper
                ============================================= -->
        <div id="wrapper" class="wrapper clearfix">
            

                <!-- Page Title
        ============================================= -->
                <section id="page-title" class="page-title">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-6">
                                <h1>
                                    login model </h1>
                            </div>
                            <!-- .col-md-6 end -->
                            <div class="col-xs-12 col-sm-12 col-md-6">
                                <ol class="breadcrumb text-right">
                                    <li>
                                        <a>Home</a>
                                    </li>
                                    <li class="active">login</li>
                                </ol>
                            </div>
                            <!-- .col-md-6 end -->
                        </div>
                        <!-- .row end -->
                    </div>
                    <!-- .container end -->
                </section>
                <!-- #page-title end -->

                <div class="clearfix mb-150"></div>

                <!-- Signin#1 Section
        ============================================= -->
                 <a style="color: red ; margin-top: 40px ;     margin-left: 364px;">
                                ${error}
                            </a> 
                <section id="signIn" class="sign">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12  col-sm-12  col-md-12">
                                <div class="text-center">
                                    <button type="button" class="btn btn-primary text-center" data-toggle="modal" data-target=".login-modal-lg">sign in button</button>
                                </div>
                               
                            <div class="modal model-sign fade login-modal-lg" tabindex="-1" role="dialog">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-body">
                                            <p>Welcome Back</p>
                                            <h6>Login Area</h6>
                                            <form action="login?action=login" method="POST">
                                                <div class="sign-form">
                                                    <form class="mb-0">
                                                        <div class="form-group">
                                                            <input name="username" type="text" class="form-control" id="username" placeholder="UserName" autocapitalize="none" >
                                                        </div>
                                                        <div class="form-group">
                                                            <input name="password" type="password" class="form-control" id="pwd" placeholder="Password" autocapitalize="none">
                                                        </div>
                                                        <div class="checkbox pull-left">
                                                            <label>
                                                                <input type="checkbox">
                                                                Remember me
                                                            </label>
                                                        </div>

                                                        <button type="submit" class="btn btn-primary btn-block">Sign In</button>
                                                    </form>
                                                    <div class="form-links text-center">
                                                        <a href="register">Create New Account</a>
                                                    </div>
                                                </div>
                                            </form>

                                        </div>
                                    </div>
                                    <!-- /.modal-content -->
                                </div>
                            </div>
                        </div>
                        <!-- .col-md-12 end -->
                    </div>
                    <!-- .row end -->
                </div>
                <!-- .container end -->
            </section>
            <!-- #signIn end -->

            <div class="clearfix mb-150"></div>



            <!-- Footer Widget
    ============================================= -->
            <jsp:include page="../common/commonForWeb/Footer.jsp"></jsp:include>
                <!-- .footer-widget end -->

                <!-- Footer Bar
        ============================================= -->
                <div class="footer-bar">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12 col-sm-6 col-md-6">
                                <div class="powered">
                                    <p>Car Shop &copy; All Rights Reserved. With Made With Love By
                                        <a href="http://themeforest.net/user/7oroof/portfolio?ref=7oroof">7oroof.com</a>
                                    </p>
                                    <ul class="list-inline mb-0">
                                        <li>
                                            <a href="#">Privacy Policy</a>
                                        </li>
                                        <li>
                                            <a href="#">Terms of Use</a>
                                        </li>
                                        <li>
                                            <a href="#">Stores</a>
                                        </li>
                                        <li>
                                            <a href="#">About Us</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-6">
                                <div class="payment-methods text-right">
                                    <ul class="list-inline mb-0">
                                        <li><img src="${pageContext.request.contextPath}/images/footer/visa.png" alt="payment"></li>
                                    <li><img src="${pageContext.request.contextPath}/images/footer/mastercard.png" alt="payment"></li>
                                    <li><img src="${pageContext.request.contextPath}/images/footer/american-express.png" alt="payment"></li>
                                    <li><img src="${pageContext.request.contextPath}/images/footer/delta.png" alt="payment"></li>
                                    <li><img src="${pageContext.request.contextPath}/images/footer/cirrus.png" alt="payment"></li>
                                    <li><img src="${pageContext.request.contextPath}/images/footer/paypal.png" alt="payment"></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- .container end -->
            </div>
            <!-- .footer-copyright end -->
        </footer>
    </div>
    <!-- #wrapper end -->

    <!-- Footer Scripts
    ============================================= -->
    <script src="${pageContext.request.contextPath}/js/jquery-2.2.4.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/plugins.js"></script>
    <script src="${pageContext.request.contextPath}/js/functions.js"></script>
</body>

<!-- Mirrored from demo.zytheme.com/autoshop/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 29 Feb 2024 17:33:37 GMT -->
</html>