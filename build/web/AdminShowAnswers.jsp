<%@page import="DatabaseClass.QuestionTable"%>
<%@page import="DatabaseClass.AnswerTable"%>
<%@page import="java.util.ArrayList"%>
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
        
        <div class="chat-panel panel panel-default" style="width: 80%; margin-left: 10%; margin-top: 25px;">
            <div class="panel-heading" style="background-color: #679FCF">
                            <i class="fa fa-comments fa-fw"></i>
                            Discussion Forum
                        </div>
                        <!-- /.panel-heading -->
                        <div style="margin-top: 15px"> ${msg}</div>
                        <div class="panel-body">
                        <%
                            if(request.getAttribute("qt")!= null)
                            {
                                ArrayList<AnswerTable> atList = (ArrayList<AnswerTable>)request.getAttribute("atList");
                                QuestionTable qt = (QuestionTable)request.getAttribute("qt");
                        %>
                        <span class="chat-img pull-left" style="height: 10px; width: 60px">
                            <img src="images1/fff1.gif" alt="User Avatar" class="img-circle">
                        </span>
                            <div class="chat-body clearfix" style="margin-bottom: 15px;">
                                <div class="header" style="height: auto">
                                    <strong class="primary-font"><%=qt.getQfullName()%></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <small class="pull-right text-muted">
                                        <i class="fa fa-clock-o fa-fw"></i> <%=qt.getDateTime()%>
                                    </small>
                                    <p style="margin-left: 60px; alignment-adjust: auto; height: auto">
                                        <%=qt.getQuestion()%>
                                    </p>
                                </div>
                            </div>
                            <div class="panel-footer" style="background-color: #6EAB4B">
                            <form class="input-group" method="post" action="PostAnswer.do?id=<%=qt.getqId()%>">
                                <textarea id="btn-input" class="form-control input-sm" name="answer" placeholder="Type your answer here..."></textarea>
                                <span class="input-group-btn">
                                    <input type="submit" class="btn btn-warning btn-sm" value="Post" id="btn-chat">
                                </span>
                            </form>
                            </div><br/>
                            <ul class="chat">
                                <%
                                    if(atList.size()==0)
                                    {   
                                        out.print("Be The First One to Answer This Question...If You Know The Answer Post It.");
                                    }
                                    for(int i=(atList.size()-1);i>=0;i--)
                                    {
                                        AnswerTable at = new AnswerTable();
                                        at = atList.get(i);
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
                                            <strong class="primary-font"><%=at.getAfullName()%></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <small class="pull-right text-muted">
                                                <i class="fa fa-clock-o fa-fw"></i> <%=at.getDateTime()%>
                                            </small>
                                            <a class="btn btn-warning" href="deleteDiscussion.do?Qid=<%=at.getqId()%>&Aid=<%=at.getaId()%>&queAns=ans" style="float: right; margin-right: 8px">
                                                        Delete
                                            </a>
                                            <p style="margin-left: 60px; alignment-adjust: auto; height: auto">
                                                <%=at.getAnswer()%>
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
        <%@include file="footer.html"%>
    </body>
</html>
