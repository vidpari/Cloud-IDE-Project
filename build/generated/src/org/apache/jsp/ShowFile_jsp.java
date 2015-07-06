package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import DatabaseClass.UserTable;

public final class ShowFile_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/includeCss.html");
    _jspx_dependants.add("/developerHeader.jsp");
    _jspx_dependants.add("/footer.html");
  }

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_when_test;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_choose;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_otherwise;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_when_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_choose = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_otherwise = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_when_test.release();
    _jspx_tagPool_c_choose.release();
    _jspx_tagPool_c_otherwise.release();
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        ");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"ISO-8859-1\">\r\n");
      out.write("<title>Krazzie Coding</title>\r\n");
      out.write("<!-- Meta -->\r\n");
      out.write("<meta charset=\"utf-8\">\r\n");
      out.write("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("<meta name=\"description\" content=\"\">\r\n");
      out.write("<meta name=\"author\" content=\"\">\r\n");
      out.write("<link rel=\"shortcut icon\" href=\"images/favicon.ico\">\r\n");
      out.write("<link href='css/stylesheet1.css' rel='stylesheet' type='text/css'>\r\n");
      out.write("<link href='css/stylesheet2.css' rel='stylesheet' type='text/css'>\r\n");
      out.write("<!-- Global CSS -->\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/ss3.css\">\r\n");
      out.write("<!-- Plugins CSS -->\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/ss4.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/ss5.css\">\r\n");
      out.write("<!-- Theme CSS -->\r\n");
      out.write("<link id=\"theme-style\" rel=\"stylesheet\" href=\"css/ss6.css\">\r\n");
      out.write("<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->\r\n");
      out.write("<!--[if lt IE 9]>\r\n");
      out.write("      <script src=\"https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js\"></script>\r\n");
      out.write("      <script src=\"https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js\"></script>\r\n");
      out.write("    <![endif]-->\r\n");
      out.write("<script>\r\n");
      out.write("\t(function(i, s, o, g, r, a, m) {\r\n");
      out.write("\t\ti['GoogleAnalyticsObject'] = r;\r\n");
      out.write("\t\ti[r] = i[r] || function() {\r\n");
      out.write("\t\t\t(i[r].q = i[r].q || []).push(arguments)\r\n");
      out.write("\t\t}, i[r].l = 1 * new Date();\r\n");
      out.write("\t\ta = s.createElement(o), m = s.getElementsByTagName(o)[0];\r\n");
      out.write("\t\ta.async = 1;\r\n");
      out.write("\t\ta.src = g;\r\n");
      out.write("\t\tm.parentNode.insertBefore(a, m)\r\n");
      out.write("\t})(window, document, 'script', '//www.google-analytics.com/analytics.js',\r\n");
      out.write("\t\t\t'ga');\r\n");
      out.write("\r\n");
      out.write("\tga('create', 'UA-24707561-18', 'auto');\r\n");
      out.write("\tga('send', 'pageview');\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!--\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Krazzie Coding</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header id=\"header\" class=\"header\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<h1 class=\"logo\">\n");
      out.write("\t\t\t\t<a href=\"UserAcctPage.jsp\"><span class=\"text\">Krazzie Coding</span></a>\n");
      out.write("\t\t\t</h1>\n");
      out.write("\t\t\t<!--//logo-->\n");
      out.write("                        ");

                            HttpSession se = request.getSession();
                            UserTable ut=null;
                            if(se.getAttribute("ut")!=null){
                            ut=(UserTable)se.getAttribute("ut");}
                        
      out.write("\n");
      out.write("\t\t\t<nav class=\"main-nav navbar-right\" role=\"navigation\">\n");
      out.write("\t\t\t\t<div class=\"navbar-header\">\n");
      out.write("\t\t\t\t\t<button class=\"navbar-toggle\" type=\"button\" data-toggle=\"collapse\"\n");
      out.write("\t\t\t\t\t\tdata-target=\"#navbar-collapse\">\n");
      out.write("\t\t\t\t\t\t<span class=\"sr-only\">Toggle navigation</span> <span\n");
      out.write("\t\t\t\t\t\t\tclass=\"icon-bar\"></span> <span class=\"icon-bar\"></span> <span\n");
      out.write("\t\t\t\t\t\t\tclass=\"icon-bar\"></span>\n");
      out.write("\t\t\t\t\t</button>\n");
      out.write("\t\t\t\t\t<!--//nav-toggle-->\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<!--//navbar-header-->\n");
      out.write("\t\t\t\t<div id=\"navbar-collapse\" class=\"navbar-collapse collapse\">\n");
      out.write("\t\t\t\t\t<ul class=\"nav navbar-nav\">\n");
      out.write("\t\t\t\t\t\t<li class=\"active nav-item\"><a href=\"UserAcctPage.jsp\">Home</a></li>\n");
      out.write("                                                ");
      if (_jspx_meth_c_choose_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                                <li class=\"nav-item\"><a href=\"pricing.jsp\">Pricing</a></li>\n");
      out.write("                                                \n");
      out.write("\t\t\t\t\t\t<!--li class=\"nav-item\"><a href=\"features.jsp\">Features</a></li-->\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t<li class=\"nav-item dropdown\"><a class=\"dropdown-toggle\"\n");
      out.write("\t\t\t\t\t\t\tdata-toggle=\"dropdown\" data-hover=\"dropdown\" data-delay=\"0\"\n");
      out.write("\t\t\t\t\t\t\tdata-close-others=\"false\" href=\"#\">Pages <i\n");
      out.write("\t\t\t\t\t\t\t\tclass=\"fa fa-angle-down\"></i></a>\n");
      out.write("\t\t\t\t\t\t\t<ul class=\"dropdown-menu\">\n");
      out.write("                                                                <li><a href=\"about.jsp\">About Us</a></li>\n");
      out.write("                                                                <li><a href=\"contact.jsp\">Contact</a></li>\n");
      out.write("\t\t\t\t\t\t\t</ul></li>\n");
      out.write("\t\t\t\t\t\t<!--//dropdown-->\n");
      out.write("\t\t\t\t\t\t<li class=\"nav-item nav-item-cta last dropdown\">\n");
      out.write("                                                    <a class=\"btn btn-cta btn-cta-secondary dropdown-toggle\" href=\"#\" data-toggle=\"dropdown\" aria-expanded=\"false\">\n");
      out.write("                                                        ");
      out.print(ut.getFullName());
      out.write(" <i class=\"fa fa-angle-down\"></i>\n");
      out.write("                                                    </a>\n");
      out.write("                                                    <ul class=\"dropdown-menu\">\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"index.jsp\">Logout</a></li>\n");
      out.write("                                                    </ul>\n");
      out.write("                                                </li>\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t<!--//nav-->\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<!--//navabr-collapse-->\n");
      out.write("\t\t\t</nav>\n");
      out.write("\t\t\t<!--//main-nav-->\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<!--//container-->\n");
      out.write("\t</header>\n");
      out.write("\t<!--//header-->\n");
      out.write("        <div class=\"headline-bg about-headline-bg\" style=\"height: 85px\"></div>\n");
      out.write("        <!--//headline-bg-->\n");
      out.write("        <div class=\"navbar navbar-inverse\">\n");
      out.write("                    <div class=\"container\">\n");
      out.write("                        \n");
      out.write("                        <div class=\"navbar-collapse collapse\">\n");
      out.write("                            <ul class=\"nav navbar-nav\">\n");
      out.write("                                <li class=\"dropdown\">\n");
      out.write("                                    <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\">File <b class=\"caret\"></b></a>\n");
      out.write("                                    <ul class=\"dropdown-menu\">\n");
      out.write("                                        <li class=\"dropdown-header\">New Project\n");
      out.write("                                        </li>\n");
      out.write("                                        <li><div><form class=\"navbar-form navbar-left signup-form\" method=\"post\" action=\"NewProject.do?id=project\">\n");
      out.write("                                                    <input type=\"text\" class=\"form-control\" placeholder=\"New Project Name\" name=\"Project_Name\" required>\n");
      out.write("                                                    <button type=\"submit\" class=\"btn btn-sm\">Create</button>\n");
      out.write("                                                </form>\n");
      out.write("                                            </div>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li><a href=\"GetProjects.do?id=newfile\">New File</a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <!--li class=\"divider\"></li>\n");
      out.write("                                        <li><a href=\"#\">Open Project</a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li><a href=\"#\">Open File</a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li class=\"divider\"></li>\n");
      out.write("                                        <li><a href=\"#\">Save</a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li><a href=\"#\">Rename</a>\n");
      out.write("                                        </li-->\n");
      out.write("                                        <li class=\"divider\"></li>\n");
      out.write("                                        <li><a href=\"#\">Delete Project</a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li><a href=\"#\">Delete File</a>\n");
      out.write("                                        </li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </li>\n");
      out.write("                                <!--li class=\"dropdown\">\n");
      out.write("                                    <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\">Edit <b class=\"caret\"></b></a>\n");
      out.write("                                    <ul class=\"dropdown-menu\">\n");
      out.write("                                        <li><a href=\"#\">Undo</a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li><a href=\"#\">Redo</a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li class=\"divider\"></li>\n");
      out.write("                                        <li><a href=\"#\">Cut</a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li><a href=\"#\">Copy</a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li><a href=\"#\">Paste</a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li><a href=\"#\">Select All</a>\n");
      out.write("                                        </li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </li-->\n");
      out.write("                                <li class=\"dropdown\">\n");
      out.write("                                    <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\">Share <b class=\"caret\"></b></a>\n");
      out.write("                                    <ul class=\"dropdown-menu\">\n");
      out.write("                                        <li><a href=\"groups.do?work=share\">In Group</a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li><a href=\"share.jsp?id=ind\">To Individual</a>\n");
      out.write("                                        </li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </li>\n");
      out.write("                                <li class=\"dropdown\">\n");
      out.write("                                    <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\">Groups <b class=\"caret\"></b></a>\n");
      out.write("                                    <ul class=\"dropdown-menu\">\n");
      out.write("                                        <li><a href=\"CreateGroup.jsp\">New Group</a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li><a href=\"groups.do?work=view\">View Groups</a>\n");
      out.write("                                        </li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </li>\n");
      out.write("                                <li><a href=\"GetQuestions.do?loginBy=developer\">Discussion Forum</a>\n");
      out.write("                                </li>\n");
      out.write("                                <li><a href=\"feedback.jsp\">Feedback</a>\n");
      out.write("                                </li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                        <!--/.nav-collapse -->\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("    </body>\n");
      out.write("</html>");
      out.write("\n");
      out.write("        <div class=\"panel panel-default\" style=\"border: #497cb1 solid thin; margin: 3%\">\n");
      out.write("            <div class=\"panel-heading\">\n");
      out.write("                <i class=\"fa fa-bar-chart-o fa-fw\"></i> <b>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${fileName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</b>\n");
      out.write("                <div style=\"display: inline;float: right\">Shared by: <b>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sharedByName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</b> in Group: <b>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${grpName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</b> at <b>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${dateTime}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</b></div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"panel-body\">\n");
      out.write("                <div style=\"border: #ccc solid thin; margin-bottom: 15px\">\n");
      out.write("                    <textarea contenteditable=\"false\" style=\"width:1120px; height: 500px; overflow-y: scroll\" >\n");

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
                    
      out.write("\n");
      out.write("                    </textarea>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!-- /.panel-body -->\n");
      out.write("        </div>\n");
      out.write("        ");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"ISO-8859-1\">\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<!-- ******FOOTER****** -->\r\n");
      out.write("\t<footer class=\"footer\">\r\n");
      out.write("\t\t<div class=\"footer-content\">\r\n");
      out.write("\t\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t\t<div class=\"row\">\r\n");
      out.write("                                    <div class=\"footer-col links col-md-2 col-sm-4 col-xs-12\" style=\"margin-right: 75px\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"footer-col-inner\">\r\n");
      out.write("\t\t\t\t\t\t\t<h3 class=\"title\">About us</h3>\r\n");
      out.write("\t\t\t\t\t\t\t<ul class=\"list-unstyled\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"about.jsp\"><i class=\"fa fa-caret-right\"></i>Who we\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tare</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"contact.jsp\"><i class=\"fa fa-caret-right\"></i>Contact\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tus</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<!--//footer-col-inner-->\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<!--//foooter-col-->\r\n");
      out.write("\t\t\t\t\t<div class=\"footer-col links col-md-2 col-sm-4 col-xs-12\" style=\"margin-right: 75px\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"footer-col-inner\">\r\n");
      out.write("\t\t\t\t\t\t\t<h3 class=\"title\">Product</h3>\r\n");
      out.write("\t\t\t\t\t\t\t<ul class=\"list-unstyled\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"features.jsp\"><i class=\"fa fa-caret-right\"></i>How it\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tworks</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<!--li><a href=\"pricing.jsp\"><i class=\"fa fa-caret-right\"></i>Pricing</a></li-->\r\n");
      out.write("\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<!--//footer-col-inner-->\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<!--//foooter-col-->\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("                                        <div class=\"footer-col contact col-md-6 col-sm-12 col-xs-12\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"footer-col-inner\">\r\n");
      out.write("\t\t\t\t\t\t\t<h3 class=\"title\">Contact us</h3>\r\n");
      out.write("\t\t\t\t\t\t\t<p class=\"adr clearfix\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<i class=\"fa fa-map-marker pull-left\"></i> <span\r\n");
      out.write("\t\t\t\t\t\t\t\t\tclass=\"adr-group pull-left\"> <span\r\n");
      out.write("\t\t\t\t\t\t\t\t\tclass=\"street-address\">Government Engg College</span><br> <span\r\n");
      out.write("\t\t\t\t\t\t\t\t\tclass=\"region\">Sector 28</span><br> <span\r\n");
      out.write("\t\t\t\t\t\t\t\t\tclass=\"postal-code\">Gandhinagar</span><br> <span\r\n");
      out.write("\t\t\t\t\t\t\t\t\tclass=\"country-name\">India</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t</span>\r\n");
      out.write("\t\t\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t\t\t<p class=\"tel\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<i class=\"fa fa-phone\"></i>0800 123 4567\r\n");
      out.write("\t\t\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t\t\t<script>\r\n");
      out.write("\t\t\t\t\t\t\t\t!function(d, s, id) {\r\n");
      out.write("\t\t\t\t\t\t\t\t\tvar js, fjs = d.getElementsByTagName(s)[0], p = /^http:/\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t.test(d.location) ? 'http'\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t: 'https';\r\n");
      out.write("\t\t\t\t\t\t\t\t\tif (!d.getElementById(id)) {\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tjs = d.createElement(s);\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tjs.id = id;\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tjs.src = p\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t+ '://platform.twitter.com/widgets.js';\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tfjs.parentNode.insertBefore(js, fjs);\r\n");
      out.write("\t\t\t\t\t\t\t\t\t}\r\n");
      out.write("\t\t\t\t\t\t\t\t}(document, 'script', 'twitter-wjs');\r\n");
      out.write("\t\t\t\t\t\t\t</script>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<!--//footer-col-inner-->\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("                                        \r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<!--//container-->\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<!--//footer-content-->\r\n");
      out.write("\t\t<div class=\"bottom-bar\">\r\n");
      out.write("\t\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t\t<small class=\"copyright\">Copyright @ 2015 <a\r\n");
      out.write("\t\t\t\t\thref=\"index.jsp\" target=\"_blank\">Krazzie Coding</a></small>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<!--//container-->\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<!--//bottom-bar-->\r\n");
      out.write("\t</footer>\r\n");
      out.write("\t<!--//footer-->\r\n");
      out.write("\r\n");
      out.write("\t<!-- Javascript -->\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/js1.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/js2.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/js3.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/js4.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/js5.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/js6.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/js7.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/js8.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/js9.js\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_choose_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:choose
    org.apache.taglibs.standard.tag.common.core.ChooseTag _jspx_th_c_choose_0 = (org.apache.taglibs.standard.tag.common.core.ChooseTag) _jspx_tagPool_c_choose.get(org.apache.taglibs.standard.tag.common.core.ChooseTag.class);
    _jspx_th_c_choose_0.setPageContext(_jspx_page_context);
    _jspx_th_c_choose_0.setParent(null);
    int _jspx_eval_c_choose_0 = _jspx_th_c_choose_0.doStartTag();
    if (_jspx_eval_c_choose_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                                ");
        if (_jspx_meth_c_when_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_0, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("                                                ");
        if (_jspx_meth_c_otherwise_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_0, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("                                                ");
        int evalDoAfterBody = _jspx_th_c_choose_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_choose_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_0);
      return true;
    }
    _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_0);
    return false;
  }

  private boolean _jspx_meth_c_when_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_choose_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:when
    org.apache.taglibs.standard.tag.rt.core.WhenTag _jspx_th_c_when_0 = (org.apache.taglibs.standard.tag.rt.core.WhenTag) _jspx_tagPool_c_when_test.get(org.apache.taglibs.standard.tag.rt.core.WhenTag.class);
    _jspx_th_c_when_0.setPageContext(_jspx_page_context);
    _jspx_th_c_when_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_0);
    _jspx_th_c_when_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${flag eq 1}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_when_0 = _jspx_th_c_when_0.doStartTag();
    if (_jspx_eval_c_when_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("<li class=\"nav-item\"><a href=\"GetProjects.do?id=home\">Editor Page</a></li>");
        int evalDoAfterBody = _jspx_th_c_when_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_when_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_0);
      return true;
    }
    _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_0);
    return false;
  }

  private boolean _jspx_meth_c_otherwise_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_choose_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:otherwise
    org.apache.taglibs.standard.tag.common.core.OtherwiseTag _jspx_th_c_otherwise_0 = (org.apache.taglibs.standard.tag.common.core.OtherwiseTag) _jspx_tagPool_c_otherwise.get(org.apache.taglibs.standard.tag.common.core.OtherwiseTag.class);
    _jspx_th_c_otherwise_0.setPageContext(_jspx_page_context);
    _jspx_th_c_otherwise_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_0);
    int _jspx_eval_c_otherwise_0 = _jspx_th_c_otherwise_0.doStartTag();
    if (_jspx_eval_c_otherwise_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("<li class=\"nav-item\"><a href=\"UserAcctPage.jsp\">Editor Page</a></li>");
        int evalDoAfterBody = _jspx_th_c_otherwise_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_otherwise_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_otherwise.reuse(_jspx_th_c_otherwise_0);
      return true;
    }
    _jspx_tagPool_c_otherwise.reuse(_jspx_th_c_otherwise_0);
    return false;
  }
}
