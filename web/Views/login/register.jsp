<%-- 
    Document   : register
    Created on : Mar 14, 2024, 11:50:58 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html dir="ltr" lang="en-US">

    <!-- Mirrored from demo.zytheme.com/autoshop/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 29 Feb 2024 17:33:37 GMT -->
    <head>
        <!-- Document Meta
            ============================================= -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!--IE Compatibility Meta-->
        <meta name="author" content="zytheme" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta name="description" content="construction html5 template">
        <link href="${pageContext.request.contextPath}/images/favicon/favicon.ico" rel="icon">

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

        <!-- Document Title
            ============================================= -->
        <title>Autoshop</title>
    </head>
    <body>
        <!-- Document Wrapper
                ============================================= -->
        <div id="wrapper" class="wrapper clearfix">
            <jsp:include page="../common/commonForWeb/Document Wrapper.jsp"></jsp:include>

                <!-- Page Title
        ============================================= -->
                <section id="page-title" class="page-title">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-6">
                                <h1>register model</h1>
                            </div>
                            <!-- .col-md-6 end -->
                            <div class="col-xs-12 col-sm-12 col-md-6">
                                <ol class="breadcrumb text-right">
                                    <li>
                                        <a href="index.html">Home</a>
                                    </li>
                                    <li class="active">register</li>
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

                <!-- Register Section
        ============================================= -->
                <section id="register" class="register">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12  col-sm-12  col-md-12">
                                <div class="text-center">
                                    <button type="button" class="btn btn-primary text-center" data-toggle="modal" data-target=".login-modal-lg">register button</button>
                                </div>
                                <div class="modal model-sign fade login-modal-lg" tabindex="-1" role="dialog">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-body">
                                                <p>Hello</p>
                                                <h6>Register Form</h6>
                                                <div class="register-form">
                                                    <form class="mb-0">
                                                        <div class="form-group">
                                                            <input type="text" class="form-control" id="username" placeholder="UserName">
                                                        </div>
                                                        <div class="form-group">
                                                            <input type="text" class="form-control" id="email" placeholder="Email">
                                                        </div>
                                                        <div class="form-group">
                                                            <input type="password" class="form-control" id="pwd" placeholder="Password">
                                                        </div>
                                                        <div class="form-group">
                                                            <input type="password" class="form-control" id="pwdc" placeholder="Confirm Password">
                                                        </div>
                                                        <div class="checkbox">
                                                            <label>
                                                                <input type="checkbox">
                                                                I Agree To
                                                                <a href="#">The Terms Of Use ?</a>
                                                            </label>
                                                        </div>
                                                        <button type="submit" class="btn btn-primary btn-block mt-30">Register</button>
                                                    </form>
                                                    <div class="form-links text-center">
                                                        <a href="login">Have an account? Login Here</a>
                                                    </div>
                                                </div>
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
                <!-- #register end -->

                <div class="clearfix mb-150"></div>

                <!-- Footer #1
        ============================================= -->
            <jsp:include page="../common/commonForWeb/Footer.jsp"></jsp:include>
            </div>
            <!-- #wrapper end -->

            <!-- Footer Scripts
            ============================================= -->
            <script src="${pageContext.request.contextPath}/js/jquery-2.2.4.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/plugins.js"></script>
        <script src="${pageContext.request.contextPath}/js/functions.js"></script>
    </body>

    <!-- Mirrored from demo.zytheme.com/autoshop/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 29 Feb 2024 17:33:37 GMT -->
</html>