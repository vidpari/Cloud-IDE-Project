<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Krazzie Coding</title>
<%@ include file = "includeCss.html" %>
</head>
<body class="pricing-page">
<%@ include file = "developerHeader.jsp" %>
 <div class="headline-bg pricing-headline-bg">
    </div><!--//headline-bg-->
    
    <!-- ******Pricing Section****** -->
    <section class="pricing section section-on-bg">
        <div class="container">
            <h2 class="title text-center">30 day <span class="highlight">FREE</span> trial with all plans!</h2>
            <p class="intro text-center">Our pricing is simple and you can cancel or change your plan at any time.</p>
             <div class="price-cols row">
                <div class="items-wrapper col-md-10 col-sm-12 col-xs-12 col-md-offset-1 col-sm-offset-0 col-xs-offset-0">
                    <div class="item price-1 col-md-4 col-sm-4 col-xs-12 text-center">
                        <div class="item-inner">
                            <div class="heading">
                            <h3 class="title">Free</h3>
                                <p class="price-figure"><span class="price-figure-inner"><span class="currency">$</span><span class="number">0</span><br /><span class="unit"> per month</span></span></p>
                            </div>
                            <div class="content">
                                <!--ul class="list-unstyled feature-list">
                                    <li><i class="fa fa-check"></i>1 user</li>
                                    <li><i class="fa fa-check"></i>10 GB storage</li>
                                    <li class="disabled"><i class="fa fa-times"></i>Email priority support</li>
                                    <li class="disabled"><i class="fa fa-times"></i>Free update</li>
                                    <li class="disabled"><i class="fa fa-times"></i>24/7 support</li>
                                </ul-->
                                <a class="btn btn-cta btn-cta-primary" href="signup.jsp">Start free trial</a>
   
                            </div><!--//content-->
                        </div><!--//item-inner-->
                    </div><!--//item--> 
                    
                    <div class="item price-2 col-md-4 col-sm-4 col-xs-12 text-center best-buy">
                        <div class="item-inner">
                            <div class="heading">
                            <h3 class="title">Paid</h3>
                                <p class="price-figure"><span class="price-figure-inner"><span class="currency">$</span><span class="number">10</span><br /><span class="unit">per month</span></span></p>
                            </div>
                            <div class="content">
                                <form name="paypalForm" action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post">
                                    <input type="hidden" name="cmd" value="_xclick" />
                                    <input type="hidden" value="10" name="amount"/><br>
                                    <input type="hidden" name="business" value="vidpari-business@gmail.com" />
                                    <input type="hidden" name="item_name" value="Package2" />
                                    <input type="hidden" name="rm" value="2" />
                                    <input type="hidden" name="custom" value="2" />
                                    <input name = "currency_code" value = "USD" type = "hidden">
                                    <input type="image" src="https://www.sandbox.paypal.com/en_US/i/btn/btn_buynowCC_LG.gif" border="0" name="Go For This" alt="PayPal - The safer, easier way to pay online!">
                                    <input type="hidden" name="return" value="http://localhost:8084/pricing.jsp" />
                                    <input type="hidden" name="cancel_return" value="http://localhost:8084/paypalResponseCancel.jsp" />
                                </form>
                                <!--ul class="list-unstyled feature-list">
                                    <li><i class="fa fa-check"></i>10 users</li>
                                    <li><i class="fa fa-check"></i>30 GB storage</li>
                                    <li><i class="fa fa-check"></i>Email priority support</li>
                                    <li><i class="fa fa-check"></i>Free update</li>
                                    <li class="disabled"><i class="fa fa-times"></i>24/7 support</li>
                                    
                                </ul-->
                                <!--a class="btn btn-cta btn-cta-primary" href="signup.jsp">Go For This</a-->
                            </div><!--//content-->
                            <div class="ribbon">
                                <div class="text">Popular</div>
                            </div><!--//ribbon-->
                        </div><!--//item-inner-->
                    </div><!--//item-->  
                    
                    <div class="item price-3 col-md-4 col-sm-4 col-xs-12 text-center">
                        <div class="item-inner">
                            <div class="heading">
                                <h3 class="title">Business</h3>
                                <p class="price-figure"><span class="price-figure-inner"><span class="currency">$</span><span class="number">15</span><br /><span class="unit">2 months</span></span></p>
                            </div>
                            <div class="content">
                                <form name="paypalForm" action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post">
                                    <input type="hidden" name="cmd" value="_xclick" />
                                    <input type="hidden" value="10" name="amount"/><br>
                                    <input type="hidden" name="business" value="vidpari-business@gmail.com" />
                                    <input type="hidden" name="item_name" value="Package2" />
                                    <input type="hidden" name="rm" value="2" />
                                    <input type="hidden" name="custom" value="2" />
                                    <input name = "currency_code" value = "USD" type = "hidden">
                                    <input type="image" src="https://www.sandbox.paypal.com/en_US/i/btn/btn_buynowCC_LG.gif" border="0" name="Go For This" alt="PayPal - The safer, easier way to pay online!">
                                    <input type="hidden" name="return" value="http://localhost:8084/pricing.jsp" />
                                    <input type="hidden" name="cancel_return" value="http://localhost:8084/paypalResponseCancel.jsp" />
                                </form>
                                <!--ul class="list-unstyled feature-list">
                                    <li><i class="fa fa-check"></i>Unlimited user</li>
                                    <li><i class="fa fa-check"></i>100 GB storage</li>
                                    <li><i class="fa fa-check"></i>Email priority support</li>
                                    <li><i class="fa fa-check"></i>Free update</li>
                                    <li><i class="fa fa-check"></i>24/7 support</li>                                  
                                </ul-->
                                <!--a class="btn btn-cta btn-cta-primary" href="signup.jsp">Go For This</a-->
                                
                            </div><!--//content-->
                        </div><!--//item-inner-->
                    </div><!--//item-->
                </div><!--//items-wrapper-->  
            </div><!--//row-->
            <div style="margin-left: 500px">
                <%
                    if((request.getParameter("payment_status")).equals("Completed"))
                            {
                                String amt = request.getParameter("payment_status");
                                String txn_id = request.getParameter("txn_id");
                                RequestDispatcher rd = request.getRequestDispatcher("userPackage.do?amt="+amt+"&txn_id="+txn_id);
                                rd.include(request, response);
                %>
                    <div>Transaction ID:${param.txn_id}</div>
                    <div> Gross Amount:${param.payment_gross}</div>
                    <div>Payment Status:${param.payment_status}</div>
                    <div>Order ID:${param.custom}</div>
                <%
                            }
                %>
            </div>
            <!--a class="btn btn-cta btn-cta-primary" style="margin-left: 500px" href="ViewInnerTable.jsp?id=ViewP">View All Packages</a-->
        </div><!--//container-->
    </section><!--//pricing-->
    
    
    <!-- ******CTA Section****** -->
    <section id="cta-section" class="section cta-section text-center pricing-cta-section">
        <div class="container">
           <h2 class="title">More than <span class="counting">300,000</span> users are using Krazzie Coding</h2>
           <p class="intro">What are you waiting for?</p>
           <p><a class="btn btn-cta btn-cta-primary" href="signup.jsp" target="_blank">Signup To Krazzie Coding Now</a></p>
        </div><!--//container-->
    </section><!--//cta-section-->
    
    <%@include file = "footer.html" %>
</body>
</html>