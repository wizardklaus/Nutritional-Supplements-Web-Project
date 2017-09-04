<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<!--[if IE 7 ]>    <html lang="en-gb" class="isie ie7 oldie no-js"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en-gb" class="isie ie8 oldie no-js"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en-gb" class="isie ie9 no-js"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en-gb" class="no-js"> <!--<![endif]-->

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">	
    <!--[if lt IE 9]> 
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <![endif]-->
    
	<title>Checkout | TrendSalon HTML Template</title> 
	
	<meta name="description" content="">
	<meta name="author" content="">
    
    <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->    
	<!--[if lte IE 8]>
		<script type="text/javascript" src="http://explorercanvas.googlecode.com/svn/trunk/excanvas.js"></script>
	<![endif]-->
    
    <!-- **Favicon** -->
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
    
     <!-- **CSS - stylesheets** -->
    <link id="default-css" href="${pageContext.request.contextPath}/theme/css/style.css" rel="stylesheet" media="all" />
    <link href="${pageContext.request.contextPath}/theme/css/shortcode.css" rel="stylesheet" type="text/css" />
 
    <!-- **Additional - stylesheets** -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/theme/css/responsive.css" type="text/css" media="all"/>
    <link href="${pageContext.request.contextPath}/theme/css/animations.css" rel="stylesheet" media="all" />
    <link id="skin-css" href="${pageContext.request.contextPath}/theme/skins/red/style.css" rel="stylesheet" media="all" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/theme/css/meanmenu.css" type="text/css" media="all"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/theme/css/pace-theme-loading-bar.css" />
        
    <!-- **Font Awesome** -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/theme/css/font-awesome.min.css">
    
    <!-- **Google - Fonts** -->
    <link href='http://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,500,300,700,900' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=PT+Serif:400,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
    
    <!--[if IE 7]>
    <link rel="stylesheet" href="css/font-awesome-ie7.min.css" />
    <![endif]-->
    
    <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/theme/js/modernizr.custom.js"></script>
    
    <script>
     function form(index){
    	 
    	 var command = document.getElementById("command");
    	 
    	 if(index==1){
 			try{
 				command.value="product_delete";
 			}catch{
 				alert("Error!");
 			}
 		}
 		
 		if(index==2){
 			try{
 				command.value="product_cart";
 			}catch{
 				alert("Error!");
 			}
 		}
 		
 		document.myForm.submit();
     }
    </script>
    
    
</head>

<body>

    <c:choose>
		<c:when test="${userList==null}">
			<jsp:include page="topbar.jsp"/>
		</c:when>
		
		<c:otherwise>
			<jsp:include page="topbar2.jsp"/>
		</c:otherwise>
	</c:choose>
        <div id="main"><!-- Main -->
        	<div class="hr-invisible-small"></div>
        	<section class="fullwidth-background">
        		<!-- <div class="breadcrumb-wrapper">
                    <div class="container">
                        <h4> Checkout </h4>
                        <h6><a href="index.jsp">Home</a> / Checkout</h6>
                    </div>
                </div> -->                
            </section>
            <div class="hr-invisible-very-small"></div>
            <div class="clear"></div>
            <section id="primary" class="content-full-width transparent-bg"><!-- Primary Section -->
            	<div class="container cart">
            		<form name="myForm" action="ProductServlet" method="post">
            		
            		<input type="hidden"  id="command" name="command" value="" />
                   	
            		
                   	<table class="shop_table">
                    	<thead>
                            <tr>
                                <th class="image">Image</th>
                                <th class="item">Product</th>
                                <th class="dt-price">Price</th>
                                <th class="qty">Quantity</th>
                                
                                <th class="remove">Remove</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="image">
                                
                                    <div class="product_image">
                                        <a href="#">
                                        	<img alt="" src="${product.url }" title="">
                                        </a>
                                    </div>
                                </td>
                                <td class="item">
                                    <a href="#">
                                    	<h5>${product.pname }</h5>
                                  	</a>
                                    
                                </td>
                                <td class="price">${product.price }</td>
                                <td class="qty">
                                	<div class="selector-wrapper">
                                        <input class="btn2 btn-default" type="button" data-decrease="#id-6" value="-">
                                        <input id="id-6" class="form-control" type="quantity" step="1" value="1" min="1" title="Qty" name = "a" />
                                        <input class="btn1 btn-default" type="button" data-increase="#id-6" value="+">
                                    </div>
                                </td>
                                
                                <td class="remove"><a class="cart" href="#"><i class="fa fa-times"></i></a></td>
                            </tr>
                          </tbody>
                    </table>
                    <input id="checkout" class="btn" type="button" value="Continue Shopping" name="Continue Shopping" onClick="form(2)">
                    <input id="checkout" class="btn" type="button" value="Buy Now" name="Buy Now" onClick="form(1)">
                    
                    </form>
                    
                    <!-- <div class="clear"></div>
                    <div class="hr-invisible-small"></div>
                    <div class="column dt-sc-one-half first">
                        <h4 class="coupon-title">Enter your coupon code if you have one.</h4>
                        <form class="coupon-form" action="php/send.php" name="enqform" method="post">
                            <p>
                                <input type="text" placeholder="Enter coupon code" name="username">
                                <input type="submit" value="Apply Coupon" name="submit">
                            </p>
                        </form>
                    </div>
                    <div class="column dt-sc-one-half">
                        <div class="shipping-box">
                            <table>
                                <tbody>
                                    <tr class="cart-subtotal">
                                        <th>Subtotal</th>
                                        <td><span class="amount"><i class="fa fa-gbp"></i> 150</span></td>
                                    </tr>
                                    
                                    <tr class="shipping">
                                        <th>Shipping</th>
                                        <td>
                                            <div class="radio-btn">
                                                <label class="radio-btn">
                                                    <input type="radio" checked="" value="male" name="sex">
                                                    <span>Flat Rate: Â£7.00</span>
                                                </label>
                                                <br>
                                                <label class="radio-btn">
                                                    <input type="radio" checked="" value="male" name="sex">
                                                    <span>Free Shipping</span>
                                                </label>
                                                <br>
                                                <label class="radio-btn">
                                                    <a href="#">Calculate Shipping</a>
                                                </label>
                                            </div>
                                        </td>
                                    </tr>
                                    
                                    <tr class="total">
                                        <th>Order Price Total</th>
                                        <td><strong><span class="amount"><i class="fa fa-gbp"></i> 150</span></strong></td>
                                    </tr>
                                </tbody>
                            </table>
                            <a class="dt-sc-button btn-eff1" href="#" data-text="Proceed to Checkout">
                                <span>Proceed to Checkout</span>
                            </a>
                        </div>
                    </div>
                    <div class="clear"></div>
                    <div class="hr-invisible"></div>
                    <h2 class="border-title aligncenter"> Recommended Products </h2>
                    <div class="column dt-sc-one-fourth first">
                    	<div class="product-border">
                        	<div class="product-thumb">
                            	<a href="#">
                                	<img title="" alt="" src="images/product/product-img4.png">
                                </a>
                                <span class="new">New</span>
                            </div>
                            <div class="product-details">
                            	<h4>
                                	<a href="#"> Excepteur sint occaecat cupidatat </a>
                                </h4>
                                <div class="dt-sc-price"> Â£ 200 </div>
                                <div class="hr-invisible-very-very-small"></div>
                                <div class="clear"></div>
                                <a href="#" data-text="Add to Cart" class="dt-sc-button btn-eff3">
                                	<span>Add to Cart</span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="column dt-sc-one-fourth">
                    	<div class="product-border">
                        	<div class="product-thumb">
                            	<a href="#">
                                	<img title="" alt="" src="images/product/product-img3.png">
                                </a>
                                <span class="new">New</span>
                            </div>
                            <div class="product-details">
                            	<h4>
                                	<a href="#"> Excepteur sint occaecat cupidatat </a>
                                </h4>
                                <div class="dt-sc-price"> Â£ 200 </div>
                                <div class="hr-invisible-very-very-small"></div>
                                <div class="clear"></div>
                                <a href="#" data-text="Add to Cart" class="dt-sc-button btn-eff3">
                                	<span>Add to Cart</span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="column dt-sc-one-fourth">
                    	<div class="product-border">
                        	<div class="product-thumb">
                            	<a href="#">
                                	<img title="" alt="" src="images/product/product-img2.png">
                                </a>
                            </div>
                            <div class="product-details">
                            	<h4>
                                	<a href="#"> Excepteur sint occaecat cupidatat </a>
                                </h4>
                                <div class="dt-sc-price"> Â£ 200 </div>
                                <div class="hr-invisible-very-very-small"></div>
                                <div class="clear"></div>
                                <a href="#" data-text="Add to Cart" class="dt-sc-button btn-eff3">
                                	<span>Add to Cart</span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="column dt-sc-one-fourth">
                    	<div class="product-border">
                        	<div class="product-thumb">
                            	<a href="#">
                                	<img title="" alt="" src="images/product/product-img1.png">
                                </a>
                            </div>
                            <div class="product-details">
                            	<h4>
                                	<a href="#"> Excepteur sint occaecat cupidatat </a>
                                </h4>
                                <div class="dt-sc-price"> Â£ 200 </div>
                                <div class="hr-invisible-very-very-small"></div>
                                <div class="clear"></div>
                                <a href="#" data-text="Add to Cart" class="dt-sc-button btn-eff3">
                                	<span>Add to Cart</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>  
                <div class="clear"></div>                 
                <div class="hr-invisible"></div>
            </section>End of Primary Section   
        </div>End of Main -->
        </div>
        </section>
     
	<jsp:include page="footer.jsp"/>
	</div><!-- End of Inner-Wrapper -->
</div><!-- End of Wrapper -->

<!-- **jQuery** -->    
<script src="${pageContext.request.contextPath }/theme/js/jquery-1.11.3.min.js"></script>  
<script type="text/javascript" src="${pageContext.request.contextPath }/theme/js/jquery.sticky.min.js"></script> 
<script src="${pageContext.request.contextPath }/theme/js/jsplugins.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/theme/js/jquery.meanmenu.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/theme/js/custom.js"></script>

</body>
</html>