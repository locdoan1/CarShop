<%-- 
    Document   : About.jsp
    Created on : Mar 8, 2024, 11:22:45 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html dir="ltr" lang="en-US">

<!-- Mirrored from demo.zytheme.com/autoshop/about.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 29 Feb 2024 17:33:33 GMT -->
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
      <script src="${pageContext.request.contextPath}/js/html5shiv.js"></script>
      <script src="${pageContext.request.contextPath}/js/respond.min.js"></script>
    <![endif]-->

<!-- Document Title
    ============================================= -->
<title>Autoshop </title>
</head>
<body>
<!-- Document Wrapper
	============================================= -->
<div id="wrapper" class="wrapper clearfix">
    <header>
	 <jsp:include page="common/commonForWeb/Document Wrapper.jsp"></jsp:include>
	</header>
	
	<!-- Page Title
============================================= -->
        
        <section id="page-title" class="page-title" style="margin-top: 100px">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-6">
					<h1>about</h1>
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
	
	<!-- Featured #1
============================================= -->
	<section id="featured1" class="featured featured-1">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-6">
					<div class="heading">
						<p class="subheading">History</p>
						<h2>The Company</h2>
					</div>
					<!-- .heading end -->
					<div class="about-accordion">
						<div class="panel-group accordion" id="accordion02" role="tablist" aria-multiselectable="true">
							
							<!-- Panel 01 -->
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingOne">
									<h4 class="panel-title">
										<a class="accordion-toggle" role="button" data-toggle="collapse" data-parent="#accordion02" href="#collapse02-1" aria-expanded="true" aria-controls="collapse02-1">About COMPANY</a>
										<span class="icon"></span>
									</h4>
								</div>
								<div id="collapse02-1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne" aria-expanded="false">
									<div class="panel-body">
										<div class="pull-left pr-30">
											<img src="${pageContext.request.contextPath}/images/shortcode/2.jpg" alt="about">
										</div>
										<div>  Company is a trusted and reliable destination for automotive accessories. With over a decade of experience,
                                                                                    we have built trust by providing high-quality products and professional services. We offer a diverse range 
                                                                                    of automotive accessories, from aesthetic enhancements like alloy wheels, chrome trims, LED lights, to 
                                                                                    utility-enhancing accessories such as floor mats, organizers, and dash cameras. Our products are sourced 
                                                                                    from reputable manufacturers worldwide, ensuring quality and safety standards. Our team of knowledgeable 
                                                                                    staff is committed to assisting customers in selecting the most suitable products for their needs. Visit 
                                                                                    our modern showroom for a comfortable shopping experience and explore our wide range of products. </div>
									</div>
								</div>
							</div>
							
							<!-- Panel 02 -->
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingTwo">
									<h4 class="panel-title">
										<a class="accordion-toggle collapsed" role="button" data-toggle="collapse" data-parent="#accordion02" href="#collapse02-2" aria-expanded="false" aria-controls="collapse02-2"> Our Mission </a>
									</h4>
								</div>
								<div id="collapse02-2" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo" aria-expanded="false">
									<div class="panel-body"> Provide customers with high-quality automotive accessories that enhance both the 
                                                                            aesthetics and functionality of their vehicles. We are committed to sourcing products 
                                                                            from reputable manufacturers worldwide, ensuring that they meet stringent quality and safety
                                                                            standards. Our knowledgeable team is dedicated to assisting customers in finding the perfect 
                                                                            accessories to meet their needs and preferences. We aim to create a comfortable and enjoyable
                                                                            shopping experience for every customer who visits our showroom. Ultimately, we strive to be 
                                                                            the trusted partner that car enthusiasts turn to for all their automotive accessory needs. </div>
								</div>
							</div>
							
							<!-- Panel 03 -->
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingThree">
									<h4 class="panel-title">
										<a class="accordion-toggle collapsed" role="button" data-toggle="collapse" data-parent="#accordion02" href="#collapse02-3" aria-expanded="false" aria-controls="collapse02-3">Our VISION</a>
									</h4>
								</div>
								<div id="collapse02-3" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree" aria-expanded="true">
									<div class="panel-body"> To become the leading provider of automotive accessories globally, 
                                                                            renowned for our commitment to quality, innovation, and customer 
                                                                            satisfaction. We aspire to continuously expand our product range, 
                                                                            offering a comprehensive selection of accessories that cater to diverse
                                                                            customer preferences and vehicle types. </div>
								</div>
							</div>
							
							<!-- Panel 04 -->
							
						</div>
						<!-- .accordion end -->
					</div>
					<!-- .about-accordion end -->
				</div>
				<!-- .col-md-6 end -->
				<div class="col-xs-12 col-sm-12 col-md-6">
					<div class="heading">
						<p class="subheading">We Are Good</p>
						<h2>Our Features</h2>
					</div>
					<!-- .heading end -->
					<div class="row">
						<div class="col-xs-12 col-sm-6 col-md-6">
							<div class="feature-panel">
								<div class="feature-icon">
									<i class="icon icon-Time"></i>
								</div>
								<h4 class="text-uppercase">Always Available</h4>
								<p>Always for customer</p>
							</div>
						</div>
						<!-- .col-md-6 end -->
						<div class="col-xs-12 col-sm-6 col-md-6">
							<div class="feature-panel">
								<div class="feature-icon">
									<i class="icon icon-Shield"></i>
								</div>
								<h4 class="text-uppercase">Qualified Agents</h4>
								<p>Safe, confidential, ensuring customer information</p>
							</div>
						</div>
						<!-- .col-md-6 end -->
						<div class="col-xs-12 col-sm-6 col-md-6">
							<div class="feature-panel mb-0">
								<div class="feature-icon">
									<i class="icon icon-Wallet"></i>
								</div>
								<h4 class="text-uppercase">Fair Prices</h4>
								<p>You can be 100% sure that it will be delivered right on time, within the set budget limits</p>
							</div>
						</div>
						<!-- .col-md-6 end -->
						<div class="col-xs-12 col-sm-6 col-md-6">
							<div class="feature-panel mb-0">
								<div class="feature-icon">
									<i class="icon icon-Star"></i>
								</div>
								<h4 class="text-uppercase">Best Offers</h4>
								<p>Good price, friendly to everyone</p>
							</div>
						</div>
					</div>
				</div>
				<!-- .col-md-6 end -->
			</div>
			<!-- .row end -->
		</div>
		<!-- .container end -->
	</section>

	
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

<!-- Mirrored from demo.zytheme.com/autoshop/about.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 29 Feb 2024 17:33:36 GMT -->
</html>