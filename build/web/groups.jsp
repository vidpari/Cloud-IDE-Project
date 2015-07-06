<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="DatabaseClass.GroupTable"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="includeCss.html" %>
        <script>
            function GetSharedFiles(grpId,i)
            {
                var xmlHttp=new XMLHttpRequest();
                
                xmlHttp.open("GET", "GetSharedFiles.do?gId="+grpId, true);
                xmlHttp.send();
            
                xmlHttp.onreadystatechange=function()
                {
                    if(xmlHttp.readyState==4 && xmlHttp.status==200)
                    {
                        document.getElementById("SharedFiles"+i).innerHTML=xmlHttp.responseText;
                    }
                };
            }
            /*function GetSelectedFile(grpId)
            {
                var xmlHttp=new XMLHttpRequest();
               
                xmlHttp.open("GET", "GetSelectedFile.do?gId="+grpId, true);
                xmlHttp.send();
            
                xmlHttp.onreadystatechange=function()
                {
                    if(xmlHttp.readyState==4 && xmlHttp.status==200)
                    {
                        document.getElementById("faq").innerHTML=xmlHttp.responseText;
                    }
                };
            }*/
        </script>
    </head>
    <body>
        <%@include file="developerHeader.jsp" %>
        <%--
            ArrayList<GroupTable> grpList = new ArrayList<>();
            grpList = (ArrayList<GroupTable>)request.getAttribute("grpList");
            if(request.getAttribute("msg")!=null){
            String msg = request.getAttribute("msg").toString();
            if(msg != null)
                out.print(msg);}
        --%>
            ${msg}
        <div class="row">
        <div class="panel panel-primary" style="margin-left: 10%; width: 80%">
                            <div class="panel-heading">
                                <h3 class="panel-title">My Groups: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${grpList.size()}</h3>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Click On Group Name For Its Information
                        </div>
                        <!-- .panel-heading -->
                        <div class="panel-body">
                            <div class="panel-group" id="accordion">
                                <%----
                                    if(grpList != null)
                                    {
                                        String id = null;
                                        for(int i=0; i<grpList.size(); i++)
                                        {
                                            GroupTable gt = new GroupTable();
                                            gt = grpList.get(i);
                                            id = "collapse"+i;
                                --%>
                                <%!
                                    int i=0;
                                    String id;
                                %>
                                <c:forEach items="${grpList}" var="gtdata" varStatus="im">
                                    <%id="collapse"+i;%>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 id="parent1" class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#<%=id%>" aria-expanded="false" class="collapsed" style="text-decoration: none">${gtdata.grp_name}</a>
                                        </h4>
                                    </div>
                                    <div id="parent">
                                        <div id="<%=id%>" class="panel-collapse collapse" aria-expanded="false">
                                            <%i++;%>
                                            <div class="panel-body">
                                                <b>Created at : </b>${gtdata.dateTime}<br/>
                                                <b>Created By: </b><%--
                                                if((gt.getGrpAdmin_Email()).equals(se.getAttribute("email").toString())){
                                                    out.print("You");}
                                                else{
                                                    out.print(gt.getGrpMemList().get(0));
                                                }--%>
                                                <c:choose>
                                                    <c:when test="${gtdata.grpAdmin_Email == email}">You</c:when>
                                                    <c:otherwise>${gtdata.grpMemList[0]}</c:otherwise>
                                                </c:choose>
                                                <br/>
                                                <b>Participants:&nbsp;&nbsp;&nbsp;&nbsp;${gtdata.grpMemList.size()}</b><br/>
                                                <%--
                                                    for(int j=0; j<gt.getGrpMemList().size(); j++)
                                                    {
                                                        out.print(gt.getGrpMemList().get(j)+"<br/>");
                                                    }
                                                    if((gt.getGrpAdmin_Email()).equals(se.getAttribute("email").toString()))
                                                    {
                                                        out.print("<br/><a class='btn btn-primary' href='DeleteGroup.do?id="+gt.getGrp_Id()+"&memId=null&task=delete'>Delete Group</a>");
                                                        out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class='btn btn-primary' href='CreateGroup.jsp?id="+gt.getGrp_Id()+"&grpName="+gt.getGrp_name()+"'>Add Participant</a>");
                                                        out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class='btn btn-primary' href='#'>View Group</a>");
                                                    }
                                                    else
                                                    {
                                                        out.print("<br/><a class='btn btn-primary' href='DeleteGroup.do?id="+gt.getGrp_Id()+"&memId="+gt.getThisMemId()+"&task=exit'>Exit Group</a>");
                                                        out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class='btn btn-primary' href='#'>View Group</a>");
                                                    }
                                                --%>
                                                <c:forEach items="${gtdata.grpMemList}" var="grpMemData">
                                                    ${grpMemData}<br/>
                                                </c:forEach>
                                                <c:choose>
                                                    <c:when test="${gtdata.grpAdmin_Email == email}">
                                                        <br/><a class='btn btn-primary' href='DeleteGroup.do?id=${gtdata.grp_Id}&memId=null&task=delete'>Delete Group</a>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class='btn btn-primary' href='CreateGroup.jsp?id=${gtdata.grp_Id}&grpName=${gtdata.grp_name}'>Add Participant</a>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<li class="dropdown" style="display: inline">
                                                    <a class='btn btn-primary dropdown-toggle' data-toggle="dropdown" aria-expanded="false" onclick="GetSharedFiles('${gtdata.grp_Id}',<%=i%>)">Shared Files <b class="caret"></b></a>
                                                    <ul class="dropdown-menu" id="SharedFiles<%=i%>"></ul></li>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <br/><a class='btn btn-primary' href='DeleteGroup.do?id=${gtdata.grp_Id}&memId=${gtdata.thisMemId}&task=exit'>Exit Group</a>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<li class="dropdown" style="display: inline"><a class='btn btn-primary dropdown-toggle' data-toggle="dropdown" aria-expanded="false" onclick="GetSharedFiles('${gtdata.grp_Id}',<%=i%>)">Shared Files <b class="caret"></b></a>
                                                            <ul class="dropdown-menu" id="SharedFiles<%=i%>"></ul></li>
                                                    </c:otherwise>
                                                </c:choose>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                </c:forEach>
                                <%--
                                        }
                                    }
                                --%>
                            </div>
                            <a class="btn btn-primary btn-lg btn-block" href="CreateGroup.jsp" style="width: 50%; margin-left: 25%">New Group</a>
                        </div>
                        <!-- .panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                                </div>
                            </div>
                        </div>
        </div>
            
        <%@include file="footer.html" %>
    </body>
</html>