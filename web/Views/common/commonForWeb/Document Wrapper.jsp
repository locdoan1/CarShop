<%-- 
    Document   : Document Wrapper
    Created on : Mar 1, 2024, 1:03:48 AM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<header id="navbar-spy" class="header header-1">
    <div class="top-bar">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-5">
                    <ul class="list-inline top-contact">
                        <li><span>Phone :</span>0987654321</li>
                        <li><span>Email :</span>abc@gmail.com</li>
                    </ul>
                </div>

                <form method="POST" action="login?action=logout">
                    <div class="col-xs-12 col-sm-6 col-md-7">
                        <ul class="list-inline pull-right top-links">
                            <li>
                                <c:choose>
                                    <c:when test="${not empty sessionScope.userCheck2}">
                                        <a>Hello ${sessionScope.userCheck2.username}</a>
                                    </c:when>
                                </c:choose>
                                <input type="submit" value="Logout" style="margin-left: 142px;background-color: red; color: white" />
                            </li>
                        </ul>
                    </div>
                </form>



            </div>
            <!-- .row end -->
        </div>
        <!-- .container end -->
    </div>
    <!-- .top-bar end -->
    <nav id="primary-menu" class="navbar navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#header-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="logo" href="home">
                    <img src="${pageContext.request.contextPath}/images/logo/logo-light.png " alt="Autoshop">
                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse pull-right" id="header-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-left">


                    <!-- li end -->
                    <li>
                        <a href="about">about</a>
                    </li>


                    <!-- li end -->

                    <li class="has-dropdown pull-left">
                        <a href="contact" class="dropdown-toggle">contact</a>

                    </li>
                    <!-- li end -->
                    <li class="has-dropdown pull-left">
                        <a href="payment" class="dropdown-toggle">Cart</a>

                    </li>
                </ul>

                <!-- Mod-->
                <div class="module module-search pull-left">
                    <div class="search-icon">
                        <i class="fa fa-search"></i>
                        <span class="title">search</span>
                    </div>
                    <div class="search-box">
                        <form class="search-form" action="home">
                            <div class="input-group">
                                <input type="hidden" name="search" value="searchbyname">
                                <input type="text" name="keyword" class="form-control" placeholder="Type Your Search Words">
                                <span class="input-group-btn">
                                    <button class="btn" type="submit"><i class="fa fa-search"></i></button>
                                </span>
                            </div>
                            <!-- /input-group -->
                        </form>
                    </div>
                </div>
                <!-- .module-search-->
                <!-- .module-cart -->
                
                <!-- .module-cart end -->

            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
</header>