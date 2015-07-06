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
			<div class="about">
				<!-- ******BLOG LIST****** -->
				<div class="blog container">
					<div class="row">
						<div id="blog-mansonry" class="blog-list">
                                                    <article class="post col-md-4 col-sm-6 col-xs-12" style="width: 800px; margin: 0px 50px;">
								<div class="post-inner">

									<div class="content">
										<h3 class="post-title">
											<a href="blog-single.html">Navigate These To Manage Everything</a>
										</h3>
										<div class="post-entry">
											<p>
												<a class="btn btn-cta btn-cta-secondary" href="ManageUsers.jsp"
													style="margin: 30px 0 15px 0;">Manage Users</a>
											</p>
											<p>
												<a class="btn btn-cta btn-cta-secondary" href="GetQuestions.do?loginBy=admin"
													style="margin: 30px 0 15px 0;">Manage Group Discussion</a>
											</p>
											<p>
												<a class="btn btn-cta btn-cta-secondary" href="getFeedbacks.do"
													style="margin: 30px 0 15px 0;">View Feedbacks</a>
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
                </div>
	</section>
	<!--//story-video-->

	<%@include file="footer.html"%>
</body>
</html>

