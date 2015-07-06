<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@page import="DatabaseClass.UserTable"%>
<html>
    <head>
        <title>Krazzie Coding</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
        <div class="navbar navbar-inverse">
                    <div class="container">
                        
                        <div class="navbar-collapse collapse">
                            <ul class="nav navbar-nav">
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">File <b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li class="dropdown-header">New Project
                                        </li>
                                        <li><div><form class="navbar-form navbar-left signup-form" method="post" action="NewProject.do?id=project">
                                                    <input type="text" class="form-control" placeholder="New Project Name" name="Project_Name" required>
                                                    <button type="submit" class="btn btn-sm">Create</button>
                                                </form>
                                            </div>
                                        </li>
                                        <li><a href="GetProjects.do?id=newfile">New File</a>
                                        </li>
                                        <!--li class="divider"></li>
                                        <li><a href="#">Open Project</a>
                                        </li>
                                        <li><a href="#">Open File</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li><a href="#">Save</a>
                                        </li>
                                        <li><a href="#">Rename</a>
                                        </li-->
                                        <!--li class="divider"></li>
                                        <li><a href="#">Delete Project</a>
                                        </li>
                                        <li><a href="#">Delete File</a>
                                        </li-->
                                    </ul>
                                </li>
                                <!--li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">Edit <b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Undo</a>
                                        </li>
                                        <li><a href="#">Redo</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li><a href="#">Cut</a>
                                        </li>
                                        <li><a href="#">Copy</a>
                                        </li>
                                        <li><a href="#">Paste</a>
                                        </li>
                                        <li><a href="#">Select All</a>
                                        </li>
                                    </ul>
                                </li-->
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">Share <b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="groups.do?work=share">In Group</a>
                                        </li>
                                        <li><a href="share.jsp?id=ind">To Individual</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">Groups <b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="CreateGroup.jsp">New Group</a>
                                        </li>
                                        <li><a href="groups.do?work=view">View Groups</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="GetQuestions.do?loginBy=developer">Discussion Forum</a>
                                </li>
                                <li><a href="feedback.jsp">Feedback</a>
                                </li>
                            </ul>
                        </div>
                        <!--/.nav-collapse -->
                    </div>
                </div>
    </body>
</html>