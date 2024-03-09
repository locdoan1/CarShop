<%-- 
    Document   : Contact.jsp
    Created on : Mar 1, 2024, 11:30:31 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html dir="ltr" lang="en-US">

<!-- Mirrored from demo.zytheme.com/autoshop/contact-1.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 29 Feb 2024 17:33:46 GMT -->
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
      <script src="${pageContext.request.contextPath}/"assets/js/html5shiv.js"></script>
      <script src="${pageContext.request.contextPath}/"assets/js/respond.min.js"></script>
    <![endif]-->

<!-- Document Title
    ============================================= -->
<title>Autoshop | E-commerce Html5 Template</title>
</head>
<body>
<!-- Document Wrapper
	============================================= -->
<div id="wrapper" class="wrapper clearfix">
	     <jsp:include page="common/commonForWeb/Document Wrapper.jsp"></jsp:include>
	<jsp:include page="common/commonForWeb/Hello.jsp"></jsp:include>
	<!-- Page Title
============================================= -->
	

	
	<!-- ============================================= -->
        <section class="contact" style="margin-top: -80px">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-8 widget-contact pl-0 pr-0 p-none-xs p-none-sm">
					<form id="contact-form" action="https://demo.zytheme.com/autoshop/assets/php/sendmail.php" method="post">
						<div class="col-md-6">
							<input type="text" class="form-control mb-30" name="contact-name" id="name" placeholder="Name :" required/>
						</div>
						<div class="col-md-6">
							<input type="email" class="form-control mb-30" name="contact-email" id="email" placeholder="Email :" required/>
						</div>
						<div class="col-md-12">
							<textarea class="form-control mb-30" name="contact-message" id="message" rows="4" placeholder="Message" required></textarea>
						</div>
						<div class="col-md-12">
							<button type="submit" id="submit-message" class="btn btn-primary btn-block">Send Message</button>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-12 mt-xs">
							<!--Alert Message-->
							<div id="contact-result">
							</div>
						</div>
					</form>
				</div>
				<!-- .col-md-8 end -->
				<div class="col-xs-12 col-sm-12 col-md-4">
					<div class="contct-widget-content">
						<p class="mb-0">Best shop car around the word</p>
						<div class="widget-contact-info mt-md">
							<div class="col-xs-12 col-sm-12 col-md-6 pl-0 mb-30-xs mb-30-sm">
								<h6>Phone :</h6>
								<p><i class="fa fa-phone"></i>0987654321</p>
								<p class="mb-0"><i class="fa fa-fax"></i>0987654321</p>
							</div>
							<!-- .col-md-6 end -->
							<div class="col-xs-12 col-sm-12 col-md-6">
								<h6>Email :</h6>
								<p class="mb-0"><i class="fa fa-envelope"></i>abc@gmail.com</p>
							</div>
							<!-- .col-md-6 end -->
							<div class="col-xs-12 col-sm-12 col-md-12 pl-0 mt-30 mb-30-xs mb-30-sm">
								<h6>Address :</h6>
								<p class="mb-0"><i class="fa fa-map-marker"></i>12 Ly Thuong Kiet , Dong Da , Ha Noi</p>
							</div>
							<!-- .col-md-12 end -->
						</div>
					</div>
				</div>
				<!-- .col-md-4 end -->
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
<script type="text/javascript" src="http://maps.google.com/maps/api/js?key=AIzaSyCiRALrXFl5vovX0hAkccXXBFh7zP8AOW8"></script>
<script type="text/javascript" src="assets/js/plugins/jquery.gmap.min.js"></script>
<script type="text/javascript">
	$('#googleMap').gMap({
		address: "121 King St,Melbourne, Australia",
		zoom: 15,
		markers:[
			{
				address: "Melbourne, Australia",
				maptype:'ROADMAP',
			}
		]
	});
</script>
</body>

<!-- Mirrored from demo.zytheme.com/autoshop/contact-1.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 29 Feb 2024 17:33:46 GMT -->
</html>