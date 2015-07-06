<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="DatabaseClass.GroupTable"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="includeCss.html"%>
<script>
    function getProjects()
    {
        var xmlHttp=new XMLHttpRequest();
        xmlHttp.open("GET", "GetProjects.do?id=getProjects", true);
        xmlHttp.send();
            
        xmlHttp.onreadystatechange=function()
        {
            if(xmlHttp.readyState==4 && xmlHttp.status==200)
            {
                document.getElementById("projects").innerHTML=xmlHttp.responseText;
            }
        };        
    }
    
    function getFiles()
    {
        var project=document.getElementById("projects").value;
        if(project=="0")
        {
            document.getElementById("files").innerHTML="<option value=0>Select a File</option>";
        }
        else
        {
            var xmlHttp=new XMLHttpRequest();
            xmlHttp.open("GET", "GetFiles.do?wId="+project+"&id=select", true);
            xmlHttp.send();
                    
            xmlHttp.onreadystatechange=function()
            {
            if(xmlHttp.readyState==4 && xmlHttp.status==200)
                {
                    document.getElementById("files").innerHTML=xmlHttp.responseText;
                }
            }
        }     
    }
</script>
</head>
<body class="login-page access-page has-full-screen-bg">
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
	<section class="login-section access-section section">
            <div class="container">
		<div class="row">
                    <div class="form-box col-md-8 col-sm-12 col-xs-12 col-md-offset-2 col-sm-offset-0 xs-offset-0">
			<div class="form-box-inner">
                            <h2 class="title text-center" style="margin-bottom: 30px">Share through Krazzie Coding</h2>
                            <div class="row">
				<div class="form-container col-md-5 col-sm-12 col-xs-12">
				<!-- form started-->
                                    <form class="login-form" method="post" action="share.do">
					<p>
                                            <c:if test="${requestScope.flag eq 0}">
                                                <div class='alert alert-danger'><strong>Sorry !!! </strong>Something went wrong. Please try Again...</div>
                                            </c:if>
                                            <c:if test="${requestScope.flag eq 1}">
                                                <div class='alert alert-success'><strong>Yeah !!! </strong>Shared Successfully...</div>
                                            </c:if>
                                        <b>Choose a group You Want To Share With: </b><br/><br/>
                                        <c:choose>
                                        <c:when test="${param.id == 'grp'}">
                                            Group: <div class="form-group users">
                                            <select class="form-control" onchange="getProjects()" name='sharedTo'>
                                                <option value='0'>Select group</option>
                                                <c:forEach var="data" items="${grpList}">
                                                <option value="${data.grp_Id}">${data.grp_name}</option>
                                                </c:forEach>
                                            </select></div> <a href="CreateGroup.jsp" style="text-decoration: none">New Group</a><br/><br/>
                                            </c:when>
                                            <c:otherwise>
                                            <div class="form-group email">
                                                <label class="sr-only" for="login-email">File Share</label> 
                                                <input type="email" class="form-control login-email" name='sharedTo' placeholder="Email" onblur="getProjects()">
                                            </div>
                                            </c:otherwise>
                                        </c:choose>
                                        <b>Choose A Project From Your Workspace To Share: </b><br/><br/>
					<div class="form-group folder">
                                            <select id="projects" name="project" class="form-control" onchange="getFiles()">
                                                <option value='0'>Select a Project</option> 
                                            </select>
					</div>
					<!--//form-group-->
                                        <b>Choose A File From Above Project To Share: </b><br/><br/>
                                        <div class="form-group file">
                                            <select id="files" name="file" class="form-control">
                                                <option value='0'>Select a File</option> 
                                            </select>
					</div>
					<!--//form-group-->
                                            <button type="submit" class="btn btn-block btn-cta-primary" name="share">Share</button>
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