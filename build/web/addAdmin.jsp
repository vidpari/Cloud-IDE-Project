<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <%@ include file="includeCss.html"%>
</head>
<body class="signup-page access-page has-full-screen-bg">
    <div class="upper-wrapper">
        <!-- ******HEADER****** -->
	<header class="header">
            <div class="container">
		<h1 class="logo">
                    <a href="AdminHome.jsp">
                        <span class="logo-icon"></span>
                        <span class="text">Krazzie Coding</span>
                    </a>
		</h1>
		<!--//logo-->
            </div>
            <!--//container-->
        </header>
	<!--//header-->

	<!-- ******Login Section****** -->
            <section class="signup-section access-section section">
		<div class="container">
                    <div class="row">
                        <div class="form-box col-md-8 col-sm-12 col-xs-12 col-md-offset-2 col-sm-offset-0 xs-offset-0">
                            <div class="form-box-inner">
				<h2 class="title text-center">Sign up now</h2>
                                <p class="intro text-center">It only takes 3 minutes!</p>
                                <div class="row">
                                    <div class="form-container col-md-5 col-sm-12 col-xs-12">
					<b>
                                            <%
                                                String i = request.getParameter("btn_signup");
                                                if(i!=null)
                                                {
                                                    out.print("<div class=\"alert alert-danger\">");
                                                    String msg = (String)request.getAttribute("msg");
                                                    out.println(msg);
                                                    out.print("<a class=\"btn btn-cta btn-cta-secondary\" href=\"ManageUsers.jsp\">Back to Previous Page</a>");
                                                    out.print("</div>");
                                                }
                                            %>
                                        </b>
                                        <form class="signup-form" method = "post" action="AddAdmin.do">
                                            <div class="form-group email">
						<label class="sr-only" for="signup-email">First Name</label>
                                                <input id="First_Name" name="First_Name" type="text" class="form-control login-email" placeholder="First Name">
                                            </div>
											
                                            <div class="form-group email">
						<label class="sr-only" for="signup-email">Last Name</label>
                                                <input id="Last_Name" type="text" name="Last_Name" class="form-control login-email" placeholder="Last Name">
                                            </div>
							
                                            <div class="form-group email">
						<label class="sr-only" for="signup-email">email</label>
                                                <input id="signup_email" type="email" name="signup_email" class="form-control login-email" placeholder="email">
                                            </div>
                                            <!--//form-group-->
                                            <div class="form-group password">
						<label class="sr-only" for="signup-password">password</label>
                                                <input id="signup_password" type="password" name="password" class="form-control login-password" placeholder="Password">
                                            </div>
                                            <!--//form-group-->
									
                                            <!--//form-group-->
                                            <div class="form-group password">
                                                <label class="sr-only" for="signup-password">password</label>
                                                <input id="signup-password" type="password" name="password" class="form-control login-password" placeholder="Re-enter Password">
                                            </div>
                                            <!--//form-group-->
									
                                            <div class="form-group email">
						<label class="sr-only" for="signup-email">Contact Number</label>
                                                <input id="Contact_No" type="number" name="Contact_No" class="form-control login-email" placeholder="Contact Number">
                                            </div>
									
                                            <button type="submit" class="btn btn-block btn-cta-primary" name="btn_signup">Add</button>
                                            <p class="note">By signing up, you agree to our terms of services and privacy policy.</p>
                                            <p class="lead">Already have an account?
                                                <a class="login-link" id="login-link" href="login.jsp">Log in</a>
                                            </p>
                                        </form>
                                    </div>
                                    <!--//form-container-->
                                </div>
				<!--//social-login-->
                            </div>
                            <!--//row-->
                        </div>
			<!--//form-box-inner-->
                    </div>
                    <!--//form-box-->
		</div>
		<!--//row-->
            </section>
            <!--//login-section-->
    </div>
    <!--//upper-wrapper-->
    <%@ include file="footer.html"%>
</body>
</html>