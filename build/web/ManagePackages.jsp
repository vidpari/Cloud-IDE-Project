<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file = "includeCss.html" %>
    </head>
    <body>
        <%@include file = "adminHeader.html" %>
        
        <div class="headline-bg pricing-headline-bg"></div>
	<!--//headline-bg-->
        
        <section class="story-section section section-on-bg">
            <h2 class="title container text-center">My Packages</h2>
            <div class="story-container container text-center">
		<div class="story-container-inner">
                    <%@include file = "PackageTable.jsp" %>
                    
                    <a class="btn btn-cta btn-cta-secondary" href="Remove.jsp?id=RemoveP" style="margin: 30px;margin-left: 200px;">Remove Package(s)</a>
                    <a class="btn btn-cta btn-cta-secondary" href="Remove.jsp?id=UpdateP" style="margin: 30px;margin-left: 140px;">Update Package(s)</a>
                    <a class="btn btn-cta btn-cta-primary" href="AddPackage.jsp?" style="margin-left: 395px;margin-top: 30px;">Add Package(s)</a>
                    
                </div>
		<!--//story-container-->
            </div>
            <!--//container-->
	</section>
        <%@include file = "footer.html" %>
    </body>
</html>