<%-- 
    Document   : Home.jsp
    Created on : Mar 1, 2024, 12:42:14 AM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html dir="ltr" lang="en-US">

    <!-- Mirrored from demo.zytheme.com/autoshop/home-3.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 29 Feb 2024 17:33:28 GMT -->
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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css"
              integrity="sha512-+L4yy6FRcDGbXJ9mPG8MT/3UCDzwR9gPeyFNMCtInsol++5m3bk2bXWKdZjvybmohrAsn3Ua5x8gfLnbE1YkOg=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/custom.css" rel="stylesheet">


        <!-- Document Title
            ============================================= -->
        <title>Autoshop | E-commerce Html5 Template</title>
    </head>
    <body>
        <!-- Document Wrapper !-->

        <div id="wrapper" class="wrapper clearfix">
            <jsp:include page="common/commonForWeb/Document Wrapper.jsp"></jsp:include>

                <!-- Hero -->
            <jsp:include page="common/commonForWeb/Hello.jsp"></jsp:include>
                <!-- Hero end -->

                <!-- Shop product grid right sidebar -->
                <section id="shopgrid" class="shop shop-grid">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12">
                                <div style="display: inline-block">
                                    <!-- .product-num end -->
                                <c:forEach items="${listProduct}" var="listProduct">
                                    <div class="left-menu mb-30" style="margin-left: 80px ;display: inline-block ">
                                        <ul>
                                            <li><a href="home?search=category&categoryid=${listProduct.id_product}">${listProduct.name_product}</a></li>

                                        </ul>
                                    </div>
                                </c:forEach>

                            </div>
                            <!-- .product-options end -->
                        </div>
                        <!-- .col-md-12 end -->
                        <div class="row">
                            <c:forEach items="${listCar_Detail}" var="lidetail" >

                                <!-- Product #1 -->
                                <div class="col-xs-12 col-sm-6 col-md-3 product">
                                    <div class="product-img">
                                        <img  src="${pageContext.request.contextPath}/images/shop/grid/1.jpg" alt="Product"/>
                                        <div class="product-hover">
                                            <div class="product-action">
                                                <a class="btn btn-primary" href="#">Add To Cart</a>
                                                <a class="btn btn-primary" href="cardetail?idz=${lidetail.id}">Item Details</a>
                                            </div>
                                        </div>
                                        <!-- .product-overlay end -->
                                    </div>
                                    <!-- .product-img end -->
                                    <div class="product-bio">

                                        <!-- .product-cat end -->
                                        <div class="prodcut-title">
                                            <h3>
                                                <a href="#">${lidetail.name}</a>
                                            </h3>
                                        </div>
                                        <!-- .product-title end -->
                                        <div class="product-price">
                                            <span class="symbole">$</span><span>${lidetail.price}</span>
                                        </div>
                                        <!-- .product-price end -->

                                    </div>
                                    <!-- .product-bio end -->
                                </div>
                                <!-- .product end -->

                            </c:forEach>
                        </div>
                        <!-- .row end -->
                        <div class="col-xs-12 col-sm-12 col-md-12 text-center">
                            <ul class="pagination">
                            <c:forEach begin="1" end="${pageControl.totalPage}" var="pageNumber">
                                    <li class="active">
                                        <a href="${pageControl.urlPattern}page=${pageNumber}">${pageNumber}</a>
                                    </li>
                                    
                                  
                                </c:forEach>
                                      <li>
                                        <a href="#" aria-label="Next">
                                            <span aria-hidden="true"><i class="fa fa-angle-right"></i></span>
                                        </a>
                                    </li>
                            </ul>
                        </div>
                        <!-- .col-md-12 end -->
                    </div>
                    <!-- .row end -->
                </div>
                <!-- .container end -->
            </section>
            <!-- #shopgrid end -->







            <jsp:include page="common/commonForWeb/Footer.jsp"></jsp:include>
            </div>
            <!-- #wrapper end -->

            <!-- Footer Scripts
            ============================================= -->
            <script src="${pageContext.request.contextPath}/js/jquery-2.2.4.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/plugins.js"></script>
        <script src="${pageContext.request.contextPath}/js/functions.js"></script>
    </body>

    <!-- Mirrored from demo.zytheme.com/autoshop/home-3.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 29 Feb 2024 17:33:28 GMT -->
</html>