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
                    <a href="GetProjects.do?id=home">
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
	<section class="login-section access-section section">
            <div class="container">
                <%
                    String grpId="",grpName = "";
                    if(request.getParameter("grpName")!= null)
                    {
                        grpName = request.getParameter("grpName");
                        grpId = request.getParameter("id");
                    }
                %>
		<div class="row">
                    <div class="form-box col-md-8 col-sm-12 col-xs-12 col-md-offset-2 col-sm-offset-0 xs-offset-0">
			<div class="form-box-inner">
                            <h2 class="title text-center">Create group in to Krazzie Coding</h2>
                            <div class="row">
				<div class="form-container col-md-5 col-sm-12 col-xs-12">
				<!-- form started-->
                                    <form class="login-form" method="post" action="CreateGroup.do?id=<%=grpId%>">
					<p>
					<%
                                            String btn = request.getParameter("btn_Create");
                                            if(btn != null)
                                            {
						String msg = request.getAttribute("msg").toString();
						if (msg != null)
                                                {
                                                    out.print("<div class='alert alert-danger'>");
                                                    out.println(msg + "</div>");
                                                }
                                            }
                                        %>
					</p>
					<div class="form-group users">
                                            <label class="sr-only">Group Name</label> 
                                            <input type="text" name="grp_name" class="form-control" placeholder="Group Name" value="<%=grpName%>" required>
					</div>
					<!--//form-group-->
                                        Add Members: <div class="form-group email">
                                                <label class="sr-only" for="login-email">Email</label>
                                                <input type="email" class="form-control login-email" name="email1" required placeholder="Member-1 Email">
                                            </div><br/>
                                            <div class="form-group email">
                                                <label class="sr-only" for="login-email">Email</label>
                                                <input type="email" class="form-control login-email" name="email2" placeholder="Member-2 Email">
                                            </div><br/>
                                            <div class="form-group email">
                                                <label class="sr-only" for="login-email">Email</label>
                                                <input type="email" class="form-control login-email" name="email3" placeholder="Member-3 Email">
                                            </div><br/>
                                            <div class="form-group email">
                                                <label class="sr-only" for="login-email">Email</label>
                                                <input type="email" class="form-control login-email" name="email4" placeholder="Member-4 Email">
                                            </div><br/>
                                            <div class="form-group email">
                                                <label class="sr-only" for="login-email">Email</label>
                                                <input type="email" class="form-control login-email" name="email5" placeholder="Member-5 Email">
                                            </div><br/>
                                            <div class="form-group email">
                                                <label class="sr-only" for="login-email">Email</label>
                                                <input type="email" class="form-control login-email" name="email6" placeholder="Member-6 Email">
                                            </div><!--a href="#">Add More Members</a--><br/><br/>
                                            <button type="submit" class="btn btn-block btn-cta-primary" name="btn_Create">Create Group</button>
                                    </form>
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
            </div>
        </section>
	<!--//contact-section-->
    </div>
    <!--//upper-wrapper-->
    <%@ include file="footer.html"%>
</body>
</html>