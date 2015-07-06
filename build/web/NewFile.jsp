<%@page import="DatabaseClass.WorkSpace"%>
<%@page import="java.util.ArrayList"%>
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
                    <a href="HomePage.jsp">
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
                            <h2 class="title text-center">Create New File Here</h2>
                            <p class="intro text-center"></p>
                            <div class="row">
				<div class="form-container col-md-5 col-sm-12 col-xs-12">
                                    <%
                                        if(request.getAttribute("wList")!=null)
                                        {
                                            ArrayList<WorkSpace> wList = (ArrayList<WorkSpace>)request.getAttribute("wList");
                                    %>
                                    <form class="signup-form" method = "post" action="NewProject.do?id=file">
                                        <div class="form-group folder">
                                            <label class="sr-only">Project Name</label>
                                            <select name="Project_Name" class="form-control" required>
                                                
                                                <%
                                                    for(int i=0;i<wList.size();i++)
                                                    {
                                                        WorkSpace ws = wList.get(i);
                                                %>
                                                <option value="<%=ws.getW_Id()%>"><%=ws.getW_Path()%></option>
                                                <%
                                                    }
                                                %>
                                            </select>
                                        </div>
                                        <div class="form-group folder">
                                            <label class="sr-only">File Type</label>
                                            <select name="File_Type" class="form-control" required>
                                                <option value="html">HTML(.html)</option>
                                                <option value="css">Cascading Style Sheet(.css)</option>
                                                <option value="js">JavaScript(.js)</option>
                                                <option value="php">PHP(.php)</option>
                                            </select>
                                        </div>
                                        <div class="form-group file">
                                            <label class="sr-only">File Name</label>
                                            <input name="File_Name" type="text" class="form-control" placeholder="Type The New File Name" required>
					</div>
                                        <button type="submit" class="btn btn-block btn-cta-primary" name="btn_create">Create File</button>
                                    </form>
                                    <%
                                        }
                                    %>
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