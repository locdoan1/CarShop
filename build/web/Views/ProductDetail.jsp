<%-- 
    Document   : ProductDetail.jsp
    Created on : Mar 5, 2024, 9:26:05 AM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html dir="ltr" lang="en-US">

    <!-- Mirrored from demo.zytheme.com/autoshop/shop-single-fullwidth.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 29 Feb 2024 17:33:28 GMT -->
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
        <!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
        <!--[if lt IE 9]>
              <script src="assets/js/html5shiv.js"></script>
              <script src="assets/js/respond.min.js"></script>
            <![endif]-->

        <!-- Document Title
            ============================================= -->
        <title>Autoshop | E-commerce Html5 Template</title>
    </head>
    <body>
        <!-- Document Wrapper
                ============================================= -->
        <div id="wrapper" class="wrapper clearfix">
            <header id="navbar-spy" class="header header-1">

                <!-- .top-bar end -->
                <jsp:include page="common/commonForWeb/Document Wrapper.jsp"></jsp:include>
                </header>

                <!-- Page Title
        ============================================= -->
                <section id="page-title" class="page-title">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-6">
                                <h1>Shop Single Product</h1>
                            </div>
                            <!-- .col-md-6 end -->
                            <div class="col-xs-12 col-sm-12 col-md-6">

                            </div>
                            <!-- .col-md-6 end -->
                        </div>
                        <!-- .row end -->
                    </div>
                    <!-- .container end -->
                </section>
                <!-- #page-title end -->

                <!-- Shop Single right sidebar
        ============================================= -->
                <section id="shopgrid" class="shop shop-single">
                    <div class="container shop-content">

                        <!-- .row end -->
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-5">
                                <div class="prodcut-images">
                                    <div class="product-img-slider">
                                        <img src="${listCarf.image}" alt="product image" style="width: 720px">
                                    
                                </div>
                                <div class="product-img-nav">
                                   
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-7">

                            <div class="product-title text-center-xs">
                                <h3>${listCarf.name}</h3>
                            </div>
                            <!-- .product-title end -->
                            <div class="product-meta mb-30">
                                <div class="product-price pull-left pull-none-xs">
                                    <p><span class="discount"></span>${listCarf.price}</p>
                                </div>
                                <!-- .product-price end -->
                                <div class="product-review text-right text-center-xs">
                                    <span class="product-rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-half-o"></i>
                                        <i class="fa fa-star-o"></i>

                                </div>
                                <!--- .product-review end -->
                            </div>
                            <!-- .product-img end -->

                            <div class="product-desc text-center-xs">
                                <p class="mb-0">${listCarf.description}</p>
                            </div>
                            <!-- .product-desc end -->

                            <hr class="mt-30 mb-30">
                            <div class="product-details text-center-xs">
                                <h5>Other Details :</h5>
                                <ul class="list-unstyled">

                                    <li>Availabiltity : <span>Available</span></li>
                                    <li>Brand : <span>${idp.name_product}</span></li>
                                </ul>
                            </div>
                            <!-- .product-details end -->
                            <form action="payment?action=addtocart" method="POST">
                                <hr class="mt-30 mb-30">
                                <div class="product-action">
                                    <div class="product-quantity pull-left pull-none-xs">
                                        <span class="qua">Quantity:</span>
                                        <span>
                                            <a  onclick="decreaseQuantity()"><i class="fa fa-minus"></i></a>
                                            <input type="text" name="quantity" value="1" id="pro-quant" readonly>
                                            <a onclick="increaseQuantity()"><i class="fa fa-plus"></i></a>
                                        </span>
                                    </div>

                                    <div class="product-cta text-right text-center-xs">

                                        <input type="hidden" name = "idd" value="${listCarf.id}">
                                        <a class="btn btn-primary" href="#" onclick="return this.closest('form').submit();">add to cart</a>



                                    </div>
                                </div>
                            </form>
                            <!-- .product-action end -->
                            <hr class="mt-30 mb-30">
                            <div class="product-share  text-center-xs">
                                <h5 class="share-title">share product: </h5>
                                <a class="share-facebook" href="#"><i class="fa fa-facebook"></i></a>
                                <a class="share-twitter" href="#"><i class="fa fa-twitter"></i></a>
                                <a class="share-google-plus" href="#"><i class="fa fa-google-plus"></i></a>
                                <a class="share-pinterest" href="#"><i class="fa fa-pinterest"></i></a>
                                <a class="share-dribbble" href="#"><i class="fa fa-dribbble"></i></a>
                            </div>
                            <!-- .product-share end -->
                        </div>
                    </div>
                    <!-- .row end -->

                    <!-- .row end -->
                    <!-- Pager -->

                    <!-- .row end -->

                    <!-- .product-related end -->
                </div>
                <!-- .container end -->
            </section>
            <!-- #blog end -->

            <!-- Footer #1
    ============================================= -->
            <jsp:include page="common/commonForWeb/Footer.jsp"></jsp:include>
            </div>
            <!-- #wrapper end -->

            <!-- Footer Scripts
            ============================================= -->
            <script src="${pageContext.request.contextPath}/js/jquery-2.2.4.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/plugins.js"></script>
        <script src="${pageContext.request.contextPath}/js/functions.js"></script>
    </body>
    <script>
                                            function decreaseQuantity() {
                                                var input = document.getElementById('pro-quant');
                                                var value = parseInt(input.value, 10);
                                                if (value > 1) {
                                                    input.value = value - 1;
                                                }
                                            }

                                            function increaseQuantity() {
                                                var input = document.getElementById('pro-quant');
                                                var value = parseInt(input.value, 10);
                                                input.value = value + 1;
                                            }

    </script>

    <!-- Mirrored from demo.zytheme.com/autoshop/shop-single-fullwidth.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 29 Feb 2024 17:33:33 GMT -->
</html>