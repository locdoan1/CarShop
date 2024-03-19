<%-- 
    Document   : cart.jsp
    Created on : Mar 17, 2024, 1:16:02 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html dir="ltr" lang="en-US">

    <!-- Mirrored from demo.zytheme.com/autoshop/shop-cart.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 29 Feb 2024 17:33:33 GMT -->
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
                                <h1>shop cart</h1>
                            </div>
                            <!-- .col-md-6 end -->
                            <div class="col-xs-12 col-sm-12 col-md-6">
                                <ol class="breadcrumb text-right">
                                    <li>
                                        <a href="index.html">Home</a>
                                    </li>
                                    <li class="active">shop cart</li>
                                </ol>
                            </div>
                            <!-- .col-md-6 end -->
                        </div>
                        <!-- .row end -->
                    </div>
                    <!-- .container end -->
                </section>
                <!-- #page-title end -->

                <!-- Shop Cart
        ============================================= -->
                <section id="shopcart" class="shop shop-cart">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12  col-sm-12  col-md-12">
                                
                                    <div class="cart-table table-responsive">
                                        <table class="table table-bordered">
                                            <thead>
                                                <tr class="cart-product">
                                                    <th class="cart-product-item">Product</th>
                                                    <th class="cart-product-price">Price</th>
                                                    <th class="cart-product-quantity">Quantity</th>
                                                    <th class="cart-product-total">Total</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${cart.listOrderDetail}" var="c">
                                                <c:forEach items="${listcarr}" var="listcarr">
                                                    <c:if test="${listcarr.id == c.productID}">
                                                        <c:set var="p" value="${listcarr}"></c:set>
                                                    </c:if>
                                                </c:forEach>
                                                <tr class="cart-product">
                                                    <td class="cart-product-item">
                                                        <div class="cart-product-remove">
                                                            <form action="payment?action=delete" method="POST">
                                                                <input type="hidden" name="id" value="${p.id}"/>
                                                                <i class="fa fa-close" onclick="return this.closest('form').submit()"></i>
                                                            </form>
                                                            
                                                        </div>
                                                        <div class="cart-product-img">
                                                            <img src="${p.image}" alt="product" style="width: 71px; height: 71px;"/>
                                                        </div>
                                                        <div class="cart-product-name">
                                                            <h6>${p.name}</h6>
                                                        </div></td>
                                                    <td class="cart-product-price">$ ${p.price}</td>
                                                    <td class="cart-product-quantity">
                                                        <div class="product-quantity">

                                                            <form action="payment" method="POST">
                                                                <input type="hidden" name="action" value="changequantity">
                                                                <input type="hidden" name="id" value="${p.id}">
                                                                <input type="number" name="quantity" value="${c.quantity}" id="pro-quant" onchange="return this.closest('form').submit()" >
                                                            </form>

                                                        </div>
                                                    </td>
                                                    <td class="cart-product-total">$ ${p.price * c.quantity}</td>
                                                </tr>

                                            </c:forEach>			
                                            <tr class="cart-product-action">
                                                <td  colspan="4"><div class="row clearfix">
                                                        <div class="col-xs-12 col-sm-6 col-md-6">

                                                        </div>
                                                        <!-- .col-md-6 end -->
                                                        <form action="payment?action=checkout" method="POST">
                                                        <div class="col-xs-12 col-sm-6 col-md-6 text-right">

                                                            <a class="btn btn-primary" href="#" onclick="return this.closest('form').submit()">Proceed To Checkout</a>
                                                        </div>
                                                            </form>
                                                        <!-- .col-md-6 end -->
                                                    </div></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            
                            <!-- .cart-table end -->
                        </div>
                        <!-- .col-md-12 end -->
                        <div class="col-xs-12  col-sm-12  col-md-6 mb-30-xs mb-30-sm">

                            <!-- .cart-shiping end -->
                        </div>
                        <!-- .col-md-6 end -->
                        <div class="col-xs-12  col-sm-12  col-md-6">
                            <div class="cart-total-amount">
                                <h6>Cart Totals :</h6>
                                <ul class="list-unstyled">
                                    <li>Cart Subtotal :<span id="subtotal" class="pull-right text-right">$ 140.00</span></li>
                                    <li>Shipping :<span class="pull-right text-right">Free Shipping</span></li>
                                    <li>Order Total :<span id="totalCart" class="pull-right text-right">$ 140.00</span></li>
                                </ul>
                            </div>
                            <!-- .cart-total-amount end -->
                        </div>
                        <!-- .col-md-6 end -->
                    </div>
                    <!-- .row end -->
                </div>
                <!-- .container end -->
            </section>
            <!-- #shopcart end -->

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
    <script>

                                                                    window.onload = updateSubTotal();

                                                                    function updateSubTotal() {
                                                                        let totalPriceOfEachProduct = document.querySelectorAll('td.cart-product-total');
                                                                        let totalCart = 0;

                                                                        totalPriceOfEachProduct.forEach(e => {
                                                                            let totalPrice = parseFloat(e.textContent.replace('$', '').trim()); // Remove '$' sign
                                                                            if (!isNaN(totalPrice)) { // Check if it's a valid number
                                                                                totalCart += totalPrice;
                                                                            }
                                                                        });

                                                                        // Update the HTML content
                                                                        document.querySelector('#subtotal').textContent = '$ ' + totalCart.toFixed(2); // Format to two decimal places
                                                                        document.querySelector('#totalCart').textContent = '$ ' + totalCart.toFixed(2); // Format to two decimal places
                                                                    }



    </script>
    <!-- Mirrored from demo.zytheme.com/autoshop/shop-cart.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 29 Feb 2024 17:33:33 GMT -->
</html>

