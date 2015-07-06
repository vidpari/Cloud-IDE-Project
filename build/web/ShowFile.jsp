<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="includeCss.html" %>
    </head>
    <body>
        <%@include file="developerHeader.jsp" %>
        <div class="panel panel-default" style="border: #497cb1 solid thin; margin: 3%">
            <div class="panel-heading">
                <i class="fa fa-bar-chart-o fa-fw"></i> <b>${fileName}</b>
                <div style="display: inline;float: right">Shared by: <b>${sharedByName}</b> in Group: <b>${grpName}</b> at <b>${dateTime}</b></div>
            </div>
            <div class="panel-body">
                <div style="border: #ccc solid thin; margin-bottom: 15px">
                    <textarea contenteditable="false" disabled style="width:1120px; height: 500px; overflow-y: scroll; " >
<%
                        ArrayList<String> content= null;
                        if(request.getAttribute("fileContent")!=null)
                        {
                            content = (ArrayList<String>)request.getAttribute("fileContent");
                            for(int i = 0; i<content.size();i++)
                            {   
                                String line = content.get(i);
                                out.print(line+"\n");
                            }
                        }
                    %>
                    </textarea>
                </div>
            </div>
            <!-- /.panel-body -->
        </div>
        <%@include file="footer.html"%>
    </body>
</html>
