<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<%@ include file="includeCss.html"%>
</head>
<body>
	<%@ include file="header.html"%>
	<div class="headline-bg contact-headline-bg"></div>
	<!--//headline-bg-->


	<!-- ******Contact Section****** -->
	<section class="contact-section section section-on-bg">
	<div class="container">
		<h2 class="title text-center">Contact Us</h2>
		<p class="intro text-center">We'd love to hear from you. </p>
		<form id="contact-form" class="contact-form" method="post" action="sendFeedback.do">
			<div class="row text-center">
				<div
					class="contact-form-inner col-md-8 col-sm-12 col-xs-12 col-md-offset-2 col-sm-offset-0 xs-offset-0">
					<div class="row">

						<div class="col-md-6 col-sm-6 col-xs-12 form-group">
							<label class="sr-only" for="cname">Your name</label> <input
								type="text" class="form-control" id="cname" name="name"
								placeholder="Your name" minlength="2" required>
						</div>
						<div class="col-md-6 col-sm-6 col-xs-12 form-group">
							<label class="sr-only" for="cemail">Email address</label> <input
								type="email" class="form-control" id="cemail" name="email"
								placeholder="Your email address" required>
						</div>
						<div class="col-md-12 col-sm-12 col-xs-12 form-group">
							<label class="sr-only" for="Comments">Your message</label>
							<textarea class="form-control" id="cmessage" name="message"
								placeholder="Enter your message" rows="12" required></textarea>
						</div>
						<div class="col-md-12 col-sm-12 col-xs-12 form-group">
							<button type="submit"
								class="btn btn-block btn-cta btn-cta-primary">Send
								Message</button>
						</div>
					</div>
					<!--//row-->
				</div>
			</div>
			<!--//row-->
			<div id="form-messages"></div>
		</form>
		<!--//contact-form-->
	</div>
	<!--//container--> </section>
	<!--//contact-section-->

	<!-- ******Other Contact Section****** -->
	<section class="contact-other-section section">
	<div class="container text-center">
		<h2 class="title">Other ways to reach us</h2>
		<p class="intro">You can also get in touch with us using following ways.</p>
		<div class="row">
			<ul
				class="other-info list-unstyled col-md-6 col-sm-10 col-xs-12 col-md-offset-3 col-sm-offset-1 xs-offset-0">
				<li><i class="fa fa-envelope-o"></i>krazziecoding@gmail.com</li>
				<li><i class="fa fa-phone"></i><a href="tel:+0800123456">0800
						123 456</a></li>
                                                <li><i class="fa fa-map-marker"></i>Government Engg College <br /> Sector 28<br />Gandhinagar<br />Gujarat<br>India </li>
			</ul>
		</div>
		<!--//row-->
	</div>
	<!--//container--> </section>
	<!--//contact-other-section-->

	<%@ include file="footer.html"%>

	<!-- contact page specific js starts -->
	<script type="text/javascript" src="js/cjs1.js"></script>
	<script type="text/javascript" src="js/cjs2.js"></script>
	<script type="text/javascript" src="js/cjs3.js"></script>
	<script type="text/javascript" src="js/cjs4.js"></script>
	<script type="text/javascript" src="js/cjs5.js"></script>
	<!-- contact page specific js ends-->
</body>
</html>