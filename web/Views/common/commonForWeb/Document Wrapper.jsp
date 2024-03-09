<%-- 
    Document   : Document Wrapper
    Created on : Mar 1, 2024, 1:03:48 AM
    Author     : Admin
--%>

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
					<div class="col-xs-12 col-sm-6 col-md-7">
						<ul class="list-inline pull-right top-links">
							<li>
								<a href="#">Login</a>
								
								<a href="#">Register</a>
							</li>
							
							
							
							
						</ul>
					</div>
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
						<li class="has-dropdown">
							<a href="#" data-toggle="dropdown" class="dropdown-toggle">pages</a>
							<ul class="dropdown-menu">
								
								<li>
									<a href="login.html">login</a>
								</li>
								<li>
									<a href="register.html">register</a>
								</li>
							</ul>
						</li>
						
						<!-- li end -->
						
						<li class="has-dropdown pull-left">
							<a href="contact" class="dropdown-toggle">contact</a>
							
						</li>
						<!-- li end -->
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
					<div class="module module-cart pull-left">
						<div class="cart-icon">
							<i class="fa fa-shopping-cart"></i>
							<span class="title">shop cart</span>
							<span class="cart-label">2</span>
						</div>
						<div class="cart-box">
							<div class="cart-overview">
								<ul class="list-unstyled">
									<li>
										<img class="img-responsive" src="${pageContext.request.contextPath}/images/shop/thumb/1.jpg" alt="product"/>
										<div class="product-meta">
											<h5 class="product-title">Belt Car Engine</h5>
											<p class="product-price">Price: $68.00 </p>
											<p class="product-quantity">Quantity: 2</p>
										</div>
										<a class="cancel" href="#">cancel</a>
									</li>
									<li>
										<img class="img-responsive" src="${pageContext.request.contextPath}/images/shop/thumb/2.jpg" alt="product"/>
										<div class="product-meta">
											<h5 class="product-title">OIL FILTER</h5>
											<p class="product-price">Price: $180.00 </p>
											<p class="product-quantity">Quantity: 1</p>
										</div>
										<a class="cancel" href="#">cancel</a>
									</li>
								</ul>
							</div>
							<div class="cart-total">
								<div class="total-desc">
									<h5>CART SUBTOTAL :</h5>
								</div>
								<div class="total-price">
									<h5>$316.00</h5>
								</div>
							</div>
							<div class="clearfix">
							</div>
							<div class="cart-control">
								<a class="btn btn-primary btn-block" href="#">view cart</a>
								<a class="btn btn-secondary btn-block" href="#">check out</a>
							</div>
						</div>
					</div>
					<!-- .module-cart end -->
					
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>
	</header>