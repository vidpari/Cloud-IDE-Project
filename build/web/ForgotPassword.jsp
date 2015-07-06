<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<%@ include file="includeCss.html"%>
</head>
<body class="login-page access-page has-full-screen-bg">
	<div class="upper-wrapper">
		<!-- ******HEADER****** -->
		<header class="header">
		<div class="container">
			<h1 class="logo">
				<a href="index.jsp"><span class="logo-icon"></span><span
					class="text">Krazzie Coding</span></a>
			</h1>
			<!--//logo-->

		</div>
		<!--//container--> </header>
		<!--//header-->

		<!-- ******Login Section****** -->
		<section class="login-section access-section section">
		<div class="container">
			<div class="row">
				<div
					class="form-box col-md-8 col-sm-12 col-xs-12 col-md-offset-2 col-sm-offset-0 xs-offset-0">
					<div class="form-box-inner">
						<h2 class="title text-center">Regain your Password</h2>
						<div class="row">
							<div class="form-container col-md-5 col-sm-12 col-xs-12">
								<!-- form started-->
                                                                ${msg}
								<form class="login-form" method="post" action="ForgotPassword.do">
									<p>
                                                                        <c:if test="${msg eq 'Wrong Email or Password...'}">
                                                                        <div class="alert alert-danger"><strong>Oh Snap! </strong>${msg}</div>
                                                                        </c:if>
									
									<div class="form-group email">
										<label class="sr-only" for="login-email">Email</label> <input
											id="login-email" type="email"
											class="form-control login-email" name="email" required
											placeholder="Email">
									</div>
									<!--//form-group-->
									
									<button type="submit" class="btn btn-block btn-cta-primary"
										name="btn_login">Submit</button>
									<p class="lead">
										Don't have a Krazzie Coding account yet? <br /> <a
											class="signup-link" href="signup.jsp">Create your account
											now</a><br />
                                                                                        Already Have an Account? <br/><a href="login.jsp">Login</a>
									</p>
								</form>
							</div>
							<!--//form-container-->

						</div>
						<!--//row-->
					</div>
					<!--//form-box-inner-->
				</div>
				<!--//form-box-->
			</div>
			<!--//row-->
		</div>
		<!--//container--> </section>
		<!--//contact-section-->
	</div>
	<!--//upper-wrapper-->
	<%@ include file="footer.html"%>
</body>
</html>