<%@page import="DatabaseClass.UserTable"%>
<%@page import="java.util.ArrayList"%>
<%@page import="mypkg.javaClass.GetColumnNames"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="mypkg.javaClass.QuerySetter"%>
<%@page import="mypkg.javaClass.SignupClass"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
    <div class="about">
	<table class="table table-bordered table-hover table-striped">
            <%
                        //HttpSession se = request.getSession();
                        ArrayList<UserTable> rlist = (ArrayList<UserTable>)request.getAttribute("rList");
                        ArrayList<UserTable> clist = (ArrayList<UserTable>)request.getAttribute("cList");
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
                            UserTable ut = new UserTable();
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
