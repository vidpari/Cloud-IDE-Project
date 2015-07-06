<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
                    <a href="index.jsp">
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
                            <h2 class="title text-center">Your Package</h2>
                            <div class="row">
				<div class="form-container col-md-5 col-sm-12 col-xs-12">
                                    <b>
                                        <%
                                            String i = request.getParameter("btn_add");
                                            if(i!=null)
                                            {
                                                String msg = (String)request.getAttribute("msg");
                                                out.print("<div class=\"alert alert-danger\">");
                                                out.println(msg + "</div>");
                                            }
                                        %>
                                    </b>
                                    <form class="signup-form" method = "post" action="Signup.do">
                                        <div class="form-group email">
                                            <label class="sr-only" for="signup-email">Package Price</label>
                                            <input id="First_Name" name="First_Name" type="text" class="form-control login-email" placeholder="Package Price">
					</div>
											
                                        <div class="form-group email">
                                            <label class="sr-only" for="signup-email">Package Time</label> 
                                            <input id="Last_Name" type="number" name="Last_Name" class="form-control login-email" placeholder="Package Time">
                                        </div>
                                        
                                        <div class="form-group email">
                                            <label class="sr-only" for="signup-email">Package Description</label> 
                                            <input id="signup_email" type="text" name="signup_email" class="form-control login-email" placeholder="Package Description">
					</div>
					<!--//form-group-->
                                        
                                        <button type="submit" class="btn btn-block btn-cta-primary" name="btn_add">Add Package</button>
					<p class="lead">Done Adding?
                                            <a class="login-link" id="login-link" href="ManagePackages.jsp"> Back to Manage Packages Page</a>
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
            <!--//container-->
	</section>
	<!--//contact-section-->
    </div>
    <!--//upper-wrapper-->
    <%@ include file="footer.html"%>
</body>
</html>