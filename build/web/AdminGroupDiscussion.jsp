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
        <%@include file="adminHeader.html" %>
        <div class="headline-bg about-headline-bg" style="height: 85px"></div>
        <!--//headline-bg-->
        
        <div class="chat-panel panel panel-default" style="width: 80%; margin-left: 10%;margin-top: 25px;">
            <div class="panel-heading" style="background-color: #679FCF">
                            <i class="fa fa-comments fa-fw"></i>
                            Discussion Forum
                        </div>
                    <div style="margin-top: 15px"> ${msg}</div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="panel-footer" style="background-color: #6EAB4B">
                            <form class="input-group" method="post" action="AskQuestion.do">
                                <textarea id="btn-input" class="form-control input-sm" name="question" placeholder="Type your question here..."></textarea>
                                <span class="input-group-btn">
                                    <input type="submit" class="btn btn-warning btn-sm" value="Ask" id="btn-chat">
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
                                            <a href="GetAnswers.do?id=<%=qt.getqId()%>&loginBy=admin"><i class="fa fa-comments"></i> &nbsp;<%=qt.getNoAnswers()%></a>

                                            <small class="pull-right text-muted">
                                                <i class="fa fa-clock-o fa-fw"></i> <%=qt.getDateTime()%>
                                            </small>
                                            <a class="btn btn-warning" href="deleteDiscussion.do?id=<%=qt.getqId()%>" style="float: right; margin-right: 8px">
                                                        Delete
                                            </a>
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
