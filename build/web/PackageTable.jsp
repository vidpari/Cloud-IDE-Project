<%-- 
    Document   : PackageTable
    Created on : 16 Feb, 2015, 11:03:42 PM
    Author     : Vidhi
--%>

<%@page import="DatabaseClass.PkgTable"%>
<%@page import="DatabaseClass.UserTable"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="about">
	<table class="table table-bordered table-hover table-striped">
            <%
                        //HttpSession se = request.getSession();
                        ArrayList<PkgTable> rlist = (ArrayList<PkgTable>)request.getAttribute("rList");
                        ArrayList<PkgTable> clist = (ArrayList<PkgTable>)request.getAttribute("cList");
                        String id = request.getParameter("id").toString();
                        out.print("<tr>");
                        for (int j = 1; j < clist.size(); j++) 
                        {
                            out.print("<th>" + clist.get(j) + "</th>");
                        }
                        switch(id) 
                        {
                            case "RemoveA":
                            case "RemoveD":
                            case "RemoveP":
                                out.print("<th>Remove</th>");
                                break;
                            case "UpdateP":
                                out.print("<th>Update</th>");
                                break;
                        }
                        out.print("</tr>");
                        for (int j = 0; j < (rlist.size()); j++) 
                        {
                            out.print("<tr>");
                            PkgTable ut = new PkgTable();
                            ut = rlist.get(j);
                            for(int k=2; k<clist.size()+1; k++)
                            {
                                out.print("<td>"+ut.getter(k)+"</td>");
                            }
                            switch (id) 
                            {
                                case "RemoveA":
                                case "RemoveD":
                                case "RemoveP":
                                    out.print("<td><a class='btn btn-cta btn-cta-secondary' href='Remove.do?userId="+ut.getter(1)+"&id="+id+"'>Remove</a></td>");
                                    break;
                                case "UpdateP":
                                    out.print("<td><a class='btn btn-cta btn-cta-secondary' href='Remove.do?userId="+ut.getter(1)+"&id="+id+"'>Update</a></td>");
                                    break;
                            }
                        }
                    out.println("</tr>");
            %>
	</table>
    </div>
    <!--//about-->
    </body>
</html>
