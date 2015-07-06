<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="includeCss.html"%>
</head>
<body>
    <%@include file="adminHeader.html"%>
    <div class="headline-bg about-headline-bg"></div>
    <!--//headline-bg-->

    <!-- ******Video Section****** -->
    <section class="story-section section section-on-bg">
	<h2 class="title container text-center">Our story, our value</h2>
	<div class="story-container-inner">
            <!-- ******BLOG LIST****** -->
            <div class="blog container">
		<div class="row">
                    <div id="blog-mansonry" class="blog-list">
			<article class="post col-md-4 col-sm-6 col-xs-12">
                            <div class="post-inner" style="height: 375px; padding: 0px 50px">
                                <div class="content">
                                    <h3 class="post-title">Manage Admin</h3>
                                    <div class="post-entry">
                                        <p>
                                            <a class="btn btn-cta btn-cta-secondary" href="addAdmin.jsp" style="margin: 30px 0 15px 0;">Add an Admin</a>
                                        </p>
                                        <p>
                                            <a class="btn btn-cta btn-cta-secondary" href="ViewTable.do?id=ViewA" style="margin: 30px 0 15px 0;">View All Admins</a>
                                        </p>
                                        <p>
                                            <a class="btn btn-cta btn-cta-secondary" href="ViewTable.do?id=RemoveA" style="margin: 30px 0 15px 0;">Remove an Admin</a>
                                        </p>
                                    </div>
                                </div>
				<!--//content-->
                            </div>
                            <!--//post-inner-->
			</article>
			<!--//post-->

			<article class="post col-md-4 col-sm-6 col-xs-12">
                            <div class="post-inner"  style="height: 375px; padding: 0px 50px">
                                <div class="content">
                                    <h3 class="post-title">Manage Developer</h3>
                                    <div class="post-entry">
					<p>
                                            <a class="btn btn-cta btn-cta-secondary" href="ViewTable.do?id=ViewD" style="margin: 30px 0 15px 0;">View All Developers</a>
					</p>
					<p>
                                            <a class="btn btn-cta btn-cta-secondary" href="ViewTable.do?id=RemoveD" style="margin: 30px 0 15px 0;">Remove a Developer</a>
					</p>
                                    </div>
                                </div>
				<!--//content-->
                            </div>
                            <!--//post-inner-->
			</article>
			<!--//post-->
                    </div>
                    <!--//blog-list-->
                </div>
                <!--//about-->
            </div>
            <!--//container-->
	</div>
    </section>
    <!--//story-video-->
    <%@include file="footer.html"%>
</body>
</html>

