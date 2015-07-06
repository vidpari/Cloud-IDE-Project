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
                    <a href="UserAcctPage.jsp">
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
                            <h2 class="title text-center">Leave Your Feedback Here</h2>
                            <p class="intro text-center">Coz It is Important to us..!!</p>
                            <div class="row">
				<div class="form-container col-md-5 col-sm-12 col-xs-12">
                                    <b>
                                        <%
                                            if(request.getAttribute("msg")!=null)
                                            {
                                                String msg = (String)request.getAttribute("msg");
                                                out.print("<div class=\"alert alert-danger\">");
                                                out.println(msg + "</div>");
                                            }
                                        %>
                                        
                                    </b>
                                    <form class="signup-form" method = "post" action="sendFeedback.do">
                                        <div class="form-group">
                                            <label class="sr-only" for="signup-email">Comments</label>
                                            <textarea id="Comments" name="Comments" class="form-control login-email" placeholder="Enter Your Comments here...." style="overflow-y: scroll;height: 250px" required></textarea>
					</div>
					
                                        <button type="submit" class="btn btn-block btn-cta-primary" name="feedback.do">Send Feedback</button>
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