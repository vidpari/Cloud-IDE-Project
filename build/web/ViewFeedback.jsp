<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="includeCss.html"%>
    </head>
    <body>
        <%@include file="adminHeader.html"%>
        <div class="headline-bg about-headline-bg" style="height: 85px"></div>
        <!--//headline-bg-->
        
        <div class="panel panel-default" style="margin: 25px;">
                        <div class="panel-heading">
                            <i class="fa fa-clock-o fa-fw"></i> Feedbacks
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body" style="border: #ccc solid medium">
                            <ul class="timeline">
                                <%
                                
                                %>
                                <c:forEach items="${fbList}" var="fbdata">
                                <li style="border: #ccc solid thin; margin-bottom: 15px; padding: 15px;">
                                    <div class="timeline-badge"><i class="fa fa-check"></i>
                                    </div>
                                    <div class="timeline-panel">
                                        <div class="timeline-heading">
                                            <h4 class="timeline-title">${fbdata.login_Email}</h4>
                                            <p><small class="text-muted"><i class="fa fa-clock-o"></i> ${fbdata.dateTime}</small>
                                            </p>
                                        </div>
                                        <div class="timeline-body">
                                            <p>${fbdata.fb_Content}</p>
                                        </div>
                                    </div>
                                </li>
                                </c:forEach> 
                                <%
                                
                                %>
                            </ul>
                        </div>
                        <!-- /.panel-body -->
                    </div>
    </body>
</html>
