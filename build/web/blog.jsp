<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<%@ include file="includeCss.html"%>
</head>
<body class="blog-page">
	<div class="wrapper">
		<!-- ******HEADER****** -->
		<header class="header navbar-fixed-top">
		<div class="container">
			<h1 class="logo">
				<a href="blog.jsp">Krazzie Coding <span class="sub">Blog</span></a>
			</h1>
			<!--//logo-->
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
					<li class="nav-item dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" data-hover="dropdown" data-delay="0"
						data-close-others="false" href="#">Categories <i
							class="fa fa-angle-down"></i></a>
						<ul class="dropdown-menu">
							<li><a href="blog-category.jsp">Tech</a></li>
							<li><a href="blog-category.jsp">Apps</a></li>
							<li><a href="blog-category.jsp">News</a></li>
							<li><a href="blog-category.jsp">Community</a></li>
						</ul></li>
					<!--//dropdown-->
					<li class="nav-item dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" data-hover="dropdown" data-delay="0"
						data-close-others="false" href="#">Archives <i
							class="fa fa-angle-down"></i></a>
						<ul class="dropdown-menu">
							<li><a href="blog-archive.jsp">Sep 2014 (5)</a></li>
							<li><a href="blog-archive.jsp">Aug 2014 (6)</a></li>
							<li><a href="blog-archive.jsp">July 2014 (3)</a></li>
							<li><a href="blog-archive.jsp">June 2014 (4)</a></li>
						</ul></li>
					<!--//dropdown-->
					<li class="nav-item nav-item-main-site last"><a
						href="index.jsp"><i class="fa fa-home"></i> Back to main site</a></li>
				</ul>
				<!--//nav-->

				<div class="searchbox-container">
					<form class="searchbox">
						<label class="sr-only" for="search-form">Search</label> <input
							id="search-form" class="form-control searchbox-input"
							placeholder="Search the blog..." type="search" value=""
							name="search-form"> <input class="searchbox-submit"
							type="submit" value="GO"> <i
							class="fa fa-search searchbox-icon"></i>
					</form>
				</div>
				<!--//searchbox-container-->

			</div>
			<!--//navabr-collapse--> </nav>
			<!--//main-nav-->
		</div>
		<!--//container--> </header>
		<!--//header-->

		<section class="featured-blog-posts section">

		<div class="flexslider blog-slider">
			<ul class="slides">
				<li class="slide slide-1">
					<div class="flex-caption container">
						<h3 class="title">
							<a href="#">Ideas are easy, execution is hard</a>
						</h3>
						<div class="meta">16th Oct, 2014</div>
						<a class="more-link" href="blog-single.jsp">Read more &rarr;</a>
					</div> <!--//flex-caption-->
				</li>
				<li class="slide slide-2">
					<div class="flex-caption container">
						<h3 class="title">
							<a href="#">Done is better than perfect</a>
						</h3>
						<div class="meta">23rd Sep, 2014</div>
						<a class="more-link" href="blog-single.jsp">Read more &rarr;</a>
					</div> <!--//flex-caption-->
				</li>
				<li class="slide slide-3">
					<div class="flex-caption container">
						<h3 class="title">
							<a href="#">The value of an idea lies in the using of it</a>
						</h3>
						<div class="meta">18th Aug, 2014</div>
						<a class="more-link" href="blog-single.jsp">Read more &rarr;</a>
					</div> <!--//flex-caption-->
				</li>
				<li class="slide slide-4">
					<div class="flex-caption container">
						<h3 class="title">
							<a href="#">Good design is good business</a>
						</h3>
						<div class="meta">5th Aug, 2014</div>
						<a class="more-link" href="blog-single.jsp">Read more &rarr;</a>
					</div> <!--//flex-caption-->
				</li>
			</ul>
			<!--//slides-->
		</div>
		<!--//flexslider--> </section>
		<!--//featured-blog-posts-->

		<!-- ******BLOG LIST****** -->
		<div class="blog container">
			<div class="row">
				<div id="blog-mansonry" class="blog-list">
					<article class="post col-md-4 col-sm-6 col-xs-12">
					<div class="post-inner">
						<figure class="post-thumb"> <a href="blog-single.jsp"><img
							class="img-responsive" src="post-1.jpg" alt="" /></a> </figure>
						<!--//post-thumb-->
						<div class="content">
							<h3 class="post-title">
								<a href="blog-single.jsp">Ideas are easy, execution is hard</a>
							</h3>
							<div class="post-entry">
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Proin lobortis mattis erat, dictum facilisis magna posuere ac.
									Curabitur consectetur magna mauris, et aliquam lectus ornare
									nec.</p>
								<a class="read-more" href="blog-single.jsp">Read more <i
									class="fa fa-long-arrow-right"></i></a>
							</div>
							<div class="meta">
								<ul class="meta-list list-inline">
									<li class="post-time post_date date updated">16th Oct,
										2014</li>
									<li class="post-author">by <a href="#">James Lee</a></li>
									<li class="post-comments-link"><a
										href="blog-single.jsp#comment-area"><i
											class="fa fa-comments"></i>8</a></li>
								</ul>
								<!--//meta-list-->
							</div>
							<!--meta-->
						</div>
						<!--//content-->
					</div>
					<!--//post-inner--> </article>
					<!--//post-->

					<article class="post col-md-4 col-sm-6 col-xs-12">
					<div class="post-inner">
						<figure class="post-thumb"> <a href="blog-single.jsp"><img
							class="img-responsive" src="post-2.jpg" alt="" /></a> </figure>
						<!--//post-thumb-->
						<div class="content">
							<h3 class="post-title">
								<a href="blog-single.jsp">Done is better than perfect</a>
							</h3>
							<div class="post-entry">
								<p>Aenean interdum ligula sed sollicitudin scelerisque.
									Morbi sed purus erat. Quisque adipiscing, dolor vitae porttitor
									egestas, orci elit feugiat libero, id pellentesque libero nulla
									quis tortor. Nulla sodales erat eu aliquam sollicitudin. Proin
									hendrerit porta lorem, ultricies blandit tortor mollis ut.
									Suspendisse potenti.</p>
								<a class="read-more" href="blog-single.jsp">Read more <i
									class="fa fa-long-arrow-right"></i></a>
							</div>
							<div class="meta">
								<ul class="meta-list list-inline">
									<li class="post-time post_date date updated">23rd Sep,
										2014</li>
									<li class="post-author">by <a href="#">James Lee</a></li>
									<li class="post-comments-link"><a
										href="blog-single.jsp#comment-area"><i
											class="fa fa-comments"></i>3</a></li>
								</ul>
								<!--//meta-list-->
							</div>
							<!--meta-->
						</div>
						<!--//content-->
					</div>
					<!--//post-inner--> </article>
					<!--//post-->

					<article class="post col-md-4 col-sm-6 col-xs-12">
					<div class="post-inner">
						<figure class="post-thumb"> <a href="blog-single.jsp"><img
							class="img-responsive" src="post-3.jpg" alt="" /></a> </figure>
						<!--//post-thumb-->
						<div class="content">
							<h3 class="post-title">
								<a href="blog-single.jsp">The value of an idea lies in the
									using of it</a>
							</h3>
							<div class="post-entry">
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Proin lobortis mattis erat, dictum facilisis magna posuere ac.
									Curabitur consectetur magna mauris, et aliquam lectus ornare
									nec. Cum sociis natoque penatibus et magnis dis parturient
									montes, nascetur ridiculus mus. Mauris quis tellus magna.</p>
								<a class="read-more" href="blog-single.jsp">Read more <i
									class="fa fa-long-arrow-right"></i></a>
							</div>
							<div class="meta">
								<ul class="meta-list list-inline">
									<li class="post-time post_date date updated">18th Aug,
										2014</li>
									<li class="post-author">by <a href="#">Jeremy Green</a></li>
									<li class="post-comments-link"><a
										href="blog-single.jsp#comment-area"><i
											class="fa fa-comments"></i>2</a></li>
								</ul>
								<!--//meta-list-->
							</div>
							<!--meta-->
						</div>
						<!--//content-->
					</div>
					<!--//post-inner--> </article>
					<!--//post-->

					<article class="post col-md-4 col-sm-6 col-xs-12">
					<div class="post-inner">
						<figure class="post-thumb"> <a href="blog-single.jsp"><img
							class="img-responsive" src="post-4.jpg" alt="" /></a> </figure>
						<!--//post-thumb-->
						<div class="content">
							<h3 class="post-title">
								<a href="blog-single.jsp">Good design is good business</a>
							</h3>
							<div class="post-entry">
								<p>Praesent congue eros at vestibulum luctus. Integer
									faucibus eros ac mauris aliquam vehicula. Nulla vel purus quis
									libero viverra aliquet. Praesent consequat varius augue, et
									euismod lorem hendrerit ac. Duis eget lacus nisi. Sed sed erat
									velit.</p>
								<a class="read-more" href="blog-single.jsp">Read more <i
									class="fa fa-long-arrow-right"></i></a>
							</div>
							<div class="meta">
								<ul class="meta-list list-inline">
									<li class="post-time post_date date updated">12th April,
										2014</li>
									<li class="post-author">by <a href="#">James Lee</a></li>
									<li class="post-comments-link"><a
										href="blog-single.jsp#comment-area"><i
											class="fa fa-comments"></i>4</a></li>
								</ul>
								<!--//meta-list-->
							</div>
							<!--meta-->
						</div>
						<!--//content-->
					</div>
					<!--//post-inner--> </article>
					<!--//post-->

					<article class="post col-md-4 col-sm-6 col-xs-12">
					<div class="post-inner">
						<figure class="post-thumb"> <a href="blog-single.jsp"><img
							class="img-responsive" src="post-5-thumb.jpg" alt="" /></a> </figure>
						<!--//post-thumb-->
						<div class="content">
							<h3 class="post-title">
								<a href="blog-single.jsp">Hackathon brainstorming</a>
							</h3>
							<div class="post-entry">
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Proin lobortis mattis erat, dictum facilisis magna posuere ac.
									Curabitur consectetur magna mauris, et aliquam lectus ornare
									nec. Cum sociis natoque penatibus et magnis dis parturient
									montes, nascetur ridiculus mus. Mauris quis tellus magna.</p>
								<a class="read-more" href="blog-single.jsp">Read more <i
									class="fa fa-long-arrow-right"></i></a>
							</div>
							<div class="meta">
								<ul class="meta-list list-inline">
									<li class="post-time post_date date updated">3th April,
										2014</li>
									<li class="post-author">by <a href="#">James Lee</a></li>
									<li class="post-comments-link"><a
										href="blog-single.jsp#comment-area"><i
											class="fa fa-comments"></i>1</a></li>
								</ul>
								<!--//meta-list-->
							</div>
							<!--meta-->
						</div>
						<!--//content-->
					</div>
					<!--//post-inner--> </article>
					<!--//post-->

					<article class="post col-md-4 col-sm-6 col-xs-12">
					<div class="post-inner">
						<figure class="post-thumb"> <a href="blog-single.jsp"><img
							class="img-responsive" src="post-6-thumb.jpg" alt="" /></a> </figure>
						<!--//post-thumb-->
						<div class="content">
							<h3 class="post-title">
								<a href="blog-single.jsp">You can do big things with a small
									team</a>
							</h3>
							<div class="post-entry">
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Proin lobortis mattis erat, dictum facilisis magna posuere ac.
									Curabitur consectetur magna mauris, et aliquam lectus ornare
									nec. Cum sociis natoque penatibus et magnis dis parturient
									montes, nascetur ridiculus mus. Mauris quis tellus magna.</p>
								<a class="read-more" href="blog-single.jsp">Read more <i
									class="fa fa-long-arrow-right"></i></a>
							</div>
							<div class="meta">
								<ul class="meta-list list-inline">
									<li class="post-time post_date date updated">3th April,
										2014</li>
									<li class="post-author">by <a href="#">James Lee</a></li>
									<li class="post-comments-link"><a
										href="blog-single.jsp#comment-area"><i
											class="fa fa-comments"></i>5</a></li>
								</ul>
								<!--//meta-list-->
							</div>
							<!--meta-->
						</div>
						<!--//content-->
					</div>
					<!--//post-inner--> </article>
					<!--//post-->

					<article class="post col-md-4 col-sm-6 col-xs-12">
					<div class="post-inner">
						<figure class="post-thumb"> <a href="blog-single.jsp"><img
							class="img-responsive" src="post-7-thumb.jpg" alt="" /></a> </figure>
						<!--//post-thumb-->
						<div class="content">
							<h3 class="post-title">
								<a href="blog-single.jsp">Nothing works better than just
									improving your product.</a>
							</h3>
							<div class="post-entry">
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Proin lobortis mattis erat, dictum facilisis magna posuere ac.
									Curabitur consectetur magna mauris, et aliquam lectus ornare
									nec. Cum sociis natoque penatibus et magnis dis parturient
									montes, nascetur ridiculus mus. Mauris quis tellus magna.</p>
								<a class="read-more" href="blog-single.jsp">Read more <i
									class="fa fa-long-arrow-right"></i></a>
							</div>
							<div class="meta">
								<ul class="meta-list list-inline">
									<li class="post-time post_date date updated">3th April,
										2014</li>
									<li class="post-author">by <a href="#">Alex Morgan</a></li>
									<li class="post-comments-link"><a
										href="blog-single.jsp#comment-area"><i
											class="fa fa-comments"></i>1</a></li>
								</ul>
								<!--//meta-list-->
							</div>
							<!--meta-->
						</div>
						<!--//content-->
					</div>
					<!--//post-inner--> </article>
					<!--//post-->

					<article class="post col-md-4 col-sm-6 col-xs-12">
					<div class="post-inner">
						<figure class="post-thumb"> <a href="blog-single.jsp"><img
							class="img-responsive" src="post-8-thumb.jpg" alt="" /></a> </figure>
						<!--//post-thumb-->
						<div class="content">
							<h3 class="post-title">
								<a href="blog-single.jsp">Don't try to be original, just try
									to be good</a>
							</h3>
							<div class="post-entry">
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Proin lobortis mattis erat, dictum facilisis magna posuere ac.
									Curabitur consectetur magna mauris, et aliquam lectus ornare
									nec. Cum sociis natoque penatibus et magnis dis parturient
									montes, nascetur ridiculus mus. Mauris quis tellus magna.</p>
								<a class="read-more" href="blog-single.jsp">Read more <i
									class="fa fa-long-arrow-right"></i></a>
							</div>
							<div class="meta">
								<ul class="meta-list list-inline">
									<li class="post-time post_date date updated">3th April,
										2014</li>
									<li class="post-author">by <a href="#">James Lee</a></li>
									<li class="post-comments-link"><a
										href="blog-single.jsp#comment-area"><i
											class="fa fa-comments"></i>28</a></li>
								</ul>
								<!--//meta-list-->
							</div>
							<!--meta-->
						</div>
						<!--//content-->
					</div>
					<!--//post-inner--> </article>
					<!--//post-->

					<article class="post col-md-4 col-sm-6 col-xs-12">
					<div class="post-inner">
						<figure class="post-thumb"> <a href="blog-single.jsp"><img
							class="img-responsive" src="post-9-thumb.jpg" alt="" /></a> </figure>
						<!--//post-thumb-->
						<div class="content">
							<h3 class="post-title">
								<a href="blog-single.jsp">It's not about ideas. It's about
									making ideas happen</a>
							</h3>
							<div class="post-entry">
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Proin lobortis mattis erat, dictum facilisis magna posuere ac.
									Curabitur consectetur magna mauris, et aliquam lectus ornare
									nec. Cum sociis natoque penatibus et magnis dis parturient
									montes, nascetur ridiculus mus. Mauris quis tellus magna.</p>
								<a class="read-more" href="blog-single.jsp">Read more <i
									class="fa fa-long-arrow-right"></i></a>
							</div>
							<div class="meta">
								<ul class="meta-list list-inline">
									<li class="post-time post_date date updated">3th April,
										2014</li>
									<li class="post-author">by <a href="#">Jo Bailey</a></li>
									<li class="post-comments-link"><a
										href="blog-single.jsp#comment-area"><i
											class="fa fa-comments"></i>110</a></li>
								</ul>
								<!--//meta-list-->
							</div>
							<!--meta-->
						</div>
						<!--//content-->
					</div>
					<!--//post-inner--> </article>
					<!--//post-->

				</div>
				<!--//blog-list-->
			</div>
			<!--//row-->
			<div class="pagination-container text-center">
				<ul class="pagination">
					<li class="disabled"><a href="#">&laquo;</a></li>
					<li class="active"><a href="#">1<span class="sr-only">(current)</span></a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#">&raquo;</a></li>
				</ul>
				<!--//pagination-->
			</div>
			<!--//pagination-container-->
		</div>
		<!--//blog-->
	</div>
	<!--//wrapper-->

	<%@include file="footer.html"%>

	<!-- blog page specific js starts -->
	<script type="text/javascript" src="js/bjs1.js"></script>
	<script type="text/javascript" src="js/bjs2.js"></script>
	<script type="text/javascript" src="js/bjs3.js"></script>
	<!-- blog page specific js ends -->

</body>
</html>