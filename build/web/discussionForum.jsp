<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="DatabaseClass.QuestionTable"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="includeCss.html" %>
    </head>
    <body>
        <c:choose>
        <c:when test="${none == 'none'}"><%@include file="header.html"%><div class="headline-bg about-headline-bg" style="height: 85px"></div>
        <!--//headline-bg--></c:when>
        <c:otherwise><%@include file="developerHeader.jsp" %></c:otherwise>
        </c:choose>
        
        <div class="chat-panel panel panel-default" style="width: 80%; margin-left: 10%;">
            <div class="panel-heading" style="background-color: #679FCF; margin-top: 25px;">
                            <i class="fa fa-comments fa-fw"></i>
                            Discussion Forum
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="panel-footer" style="background-color: #6EAB4B">
                            <form class="input-group" method="post" action="AskQuestion.do">
                                <textarea id="btn-input" class="form-control input-sm" name="question" placeholder="Type your question here..."></textarea>
                                <span class="input-group-btn">
                                    <c:choose>
                                    <c:when test="${none == 'none'}"><a class="btn btn-warning" href="login.jsp">Login to Ask Your Question</a></c:when>
                                    <c:otherwise><input type="submit" class="btn btn-warning btn-sm" value="Ask" id="btn-chat"></c:otherwise>
                                    </c:choose>
                                </span>
                            </form>
                            </div>
                            <ul class="chat">
                                <%
                                    if(request.getAttribute("qtList")!= null)
                                    {
                                    ArrayList<QuestionTable> qtList = (ArrayList<QuestionTable>)request.getAttribute("qtList");
                                    for(int i=(qtList.size()-1);i>=0;i--)
                                    {
                                        QuestionTable qt = new QuestionTable();
                                        qt = qtList.get(i);
                                %>
                                <li class="left clearfix">
                                    <span class="chat-img pull-left" style="height: 10px; width: 60px">
                                    <%
                                        if(i%2 == 0){
                                    %>
                                        <img src="images1/fff.gif" alt="User Avatar" class="img-circle">
                                    <%
                                        }
                                        else{
                                    %>
                                        <img src="images1/fff1.gif" alt="User Avatar" class="img-circle">
                                    <%
                                        }
                                    %>
                                    </span>
                                    <div class="chat-body clearfix">
                                        <div class="header" style="height: auto">
                                            <strong class="primary-font"><%=qt.getQfullName()%></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <c:choose>
                                            <c:when test="${none == 'none'}"><a href="GetAnswers.do?id=<%=qt.getqId()%>&loginBy=none"><i class="fa fa-comments"></i> &nbsp;<%=qt.getNoAnswers()%></a></c:when>
                                            <c:otherwise><a href="GetAnswers.do?id=<%=qt.getqId()%>&loginBy=developer"><i class="fa fa-comments"></i> &nbsp;<%=qt.getNoAnswers()%></a></c:otherwise>
                                            </c:choose>
                                            

                                            <small class="pull-right text-muted">
                                                <i class="fa fa-clock-o fa-fw"></i> <%=qt.getDateTime()%>
                                            </small>
                                            <p style="margin-left: 60px;overflow-wrap: break-word">
                                                <%=qt.getQuestion()%>
                                            </p>
                                        </div>
                                    </div>
                                </li>
                                <%
                                    }
                                    }
                                %>
                            </ul>
                        </div>
                        <!-- /.panel-body -->
                    </div>
        <%@include file="footer.html" %>
    </body>
</html>
