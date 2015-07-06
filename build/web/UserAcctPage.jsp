<%@page import="DatabaseClass.UserTable"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="DatabaseClass.UserPackage"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="mypkg.javaClass.SignupClass"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="includeCss.html"%>
    </head>
    <body>
        <header id="header" class="header">
		<div class="container">
			<h1 class="logo">
				<a href="UserAcctPage.jsp"><span class="text">Krazzie Coding</span></a>
			</h1>
			<!--//logo-->
                        <%
                            HttpSession se = request.getSession();
                            UserTable ut=null;
                            if(se.getAttribute("ut")!=null){
                            ut=(UserTable)se.getAttribute("ut");}
                        %>
			<nav class="main-nav navbar-right" role="navigation">
				<div class="navbar-header">
					<button class="navbar-toggle" type="button" data-toggle="collapse"
						data-target="#navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<!--//nav-toggle-->
				</div>
				<!--//navbar-header-->
				<div id="navbar-collapse" class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li class="active nav-item"><a href="UserAcctPage.jsp">Home</a></li>
                                                <c:choose>
                                                <c:when test="${flag eq 1}" ><li class="nav-item"><a href="GetProjects.do?id=home">Editor Page</a></li></c:when>
                                                <c:otherwise ><li class="nav-item"><a href="UserAcctPage.jsp">Editor Page</a></li></c:otherwise>
                                                </c:choose>
                                                <li class="nav-item"><a href="pricing.jsp">Pricing</a></li>
                                                
						<!--li class="nav-item"><a href="features.jsp">Features</a></li-->
						
						<li class="nav-item dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" data-hover="dropdown" data-delay="0"
							data-close-others="false" href="#">Pages <i
								class="fa fa-angle-down"></i></a>
							<ul class="dropdown-menu">
                                                                <li><a href="feedback.jsp">Feedback</a></li>
                                                                <li><a href="about.jsp">About Us</a></li>
                                                                <li><a href="contact.jsp">Contact</a></li>
							</ul></li>
						<!--//dropdown-->
						<li class="nav-item nav-item-cta last dropdown">
                                                    <a class="btn btn-cta btn-cta-secondary dropdown-toggle" href="#" data-toggle="dropdown" aria-expanded="false">
                                                        <%=ut.getFullName()%> <i class="fa fa-angle-down"></i>
                                                    </a>
                                                    <ul class="dropdown-menu">
							<li><a href="index.jsp">Logout</a></li>
                                                    </ul>
                                                </li>
					</ul>
					<!--//nav-->
				</div>
				<!--//navabr-collapse-->
			</nav>
			<!--//main-nav-->
		</div>
		<!--//container-->
	</header>
	<!--//header-->
        <div class="headline-bg about-headline-bg" style="height: 85px"></div>
        <!--//headline-bg-->
        
        ${message}
        
        <div class="panel panel-success" style="margin-top: 15px">
            <div class="panel-heading">
                <h3 class="panel-title">My Package Information</h3>
            </div>
            <div class="panel-body">
                <b>Name: </b>${ut.fullName}
                <br/><b>Email Id: </b>${email}
                <br/><b>Contact Number: </b>${ut.contact}
                <br/><b>Date & Time Of Joining:  </b>${ut.dateTime}
            </div>
        </div>
        <div class="panel panel-success">
            <div class="panel-heading">
                <h3 class="panel-title">My Account Information</h3>
            </div>
            <div class="panel-body">
                <%
                    UserPackage up = (UserPackage)se.getAttribute("up");
                    String pkgId = up.getPkgId();
                    String firstDate = up.getFirstDate();
                    String lastDate = up.getLastDate();
                    int diff = up.getDiff();
                %>
                <br/><b>Current Package: </b>
                <% if(pkgId.equals("1"))
                {
                    out.print("Free Package");
                }
                else if(pkgId.equals("2"))
                {
                    out.print("Paid Popular Package");
                }
                else if(pkgId.equals("3"))
                {
                    out.print("Paid Business Package");
                }
                
                %>
                <br/><b>Package Start Date: </b><%=firstDate%>
                <br/><b>Package Ending Date: </b><%=lastDate%>
                <br/><b>Days Left: <%=diff%></b>
            </div>
        </div>
                <%@include file="footer.html" %>
    </body>
</html>
