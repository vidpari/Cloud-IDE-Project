<%@page import="mypkg.javaClass.SignupClass"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <%@include file = "includeCss.html" %>
</head>
<body>
    <%@include file = "adminHeader.html" %>
        
    <div class="headline-bg pricing-headline-bg">
    </div><!--//headline-bg-->
    
    <section class="story-section section section-on-bg">
	<h2 class="title container text-center">My Partners, My People</h2>
	<div class="story-container container text-center">
            <div class="story-container-inner">
                    
                <%
                    /* String btn_remove = request.getParameter("btn_remove");
                    if(btn_remove != null)
                    {
                        String msg = request.getAttribute("msg").toString();
                        out.print("<div class='alert alert-success'>");
                        out.print(msg+"</div>");
                    }*/
                %>
                    
                <%@include file = "InnerTable.jsp" %>
                
                <div class="team row">
				<h3 class="title">Meet the team</h3>
				<div class="member col-md-4 col-sm-6 col-xs-12">
					<div class="member-inner">
						<!--figure class="profile"> <img class="img-responsive"
							src="images/Member-1.jpg" alt="" /> <figcaption
							class="info"--> 
                                                <span class="name" style="color: white">Malti Devnani</span>
						<br />
						<span class="job-title" style="color: white">Founder</span> <!--/figcaption> </figure>
						<!--//profile-->
						<div class="social">
							<ul class="social-list list-inline">
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							</ul>
							<!--//social-list-->
						</div>
						<!--//social-->
					</div>
					<!--//member-inner-->
				</div>
				<!--//member-->
				<div class="member col-md-4 col-sm-6 col-xs-12">
					<div class="member-inner">
						<!--figure class="profile"> <img class="img-responsive"
							src="assets/images/team/member-2.png" alt="" /> <figcaption
							class="info"-->
						<span class="name" style="color: white">Rahul Khunt</span>
						<br />
						<span class="job-title" style="color: white">Founder</span><!--/figcaption> </figure>
						<!--//profile-->
						<div class="social">
							<ul class="social-list list-inline">
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							</ul>
							<!--//social-list-->
						</div>
						<!--//social-->
					</div>
					<!--//member-inner-->
				</div>
				<!--//member-->
				<div class="member col-md-4 col-sm-6 col-xs-12">
					<div class="member-inner">
						<!--figure class="profile"> <img class="img-responsive"
							src="images/Member-3.JPG" alt="" /> <figcaption
							class="info"-->
						<span class="name" style="color: white">Vidhi Makwana</span>
						<br />
						<span class="job-title" style="color: white">Founder</span><!--/figure>
						<!--//profile-->
						<div class="social">
							<ul class="social-list list-inline">
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
							</ul>
							<!--//social-list-->
						</div>
						<!--//social-->
					</div>
					<!--//member-inner-->
				</div>
				<!--//member-->
			</div>
			<!--//team-->
		</div>
		<!--//story-container-->
	</div>
	<!--//container--> </section>
        
        
        <%@include file = "footer.html" %>
    </body>
</html>
