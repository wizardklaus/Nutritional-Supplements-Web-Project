<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
    
	<title>Cart | TrendSalon HTML Template</title> 
	
	<meta name="description" content="">
	<meta name="author" content="">

    <!-- **Favicon** -->
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
    
     <!-- **CSS - stylesheets** -->
    <link id="default-css" href="${pageContext.request.contextPath}/style.css" rel="stylesheet" media="all" />
    <link href="${pageContext.request.contextPath}/css/shortcode.css" rel="stylesheet" type="text/css" />
 
    <!-- **Additional - stylesheets** -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/responsive.css" type="text/css" media="all"/>
    <link href="${pageContext.request.contextPath}/css/animations.css" rel="stylesheet" media="all" />
    <link id="skin-css" href="${pageContext.request.contextPath}/skins/red/style.css" rel="stylesheet" media="all" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/meanmenu.css" type="text/css" media="all"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/pace-theme-loading-bar.css" />
        
    <!-- **Font Awesome** -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
    
    <!-- **Google - Fonts** -->
    <link href='http://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,500,300,700,900' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=PT+Serif:400,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
    
    <!--[if IE 7]>
    <link rel="stylesheet" href="css/font-awesome-ie7.min.css" />
    <![endif]-->
    
    <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/js/modernizr.custom.js"></script>
    
    <script type="text/javascript">
    
function mySubmit(index){
		
		var command = document.getElementById("command");
		
		var amountValue = document.getElementById("id-6").value;
		var amount = document.getElementById("amount");
		
		if(index==1){
			/* try{
				document.myform.action ="ProductCartAction";

				amount.value=amountValue;
			}catch(error){
				alert("Error!");
			} */
			alert("구매되었습니다!");
			location.href="${pageContext.request.contextPath}/theme/index.jsp"
		}
		
		if(index==2){
			/* try{
				document.myform.action ="ProductCartAction";

				amount.value=amountValue;
			}catch(error){
				alert("Error!");
			} */
			
			//document.myForm.submit();
			alert("장바구니에 담았습니다!");
			location.href="${pageContext.request.contextPath}index.jsp"
		}
	
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
        		<div class="breadcrumb-wrapper">
                    <div class="container">
                    </div>
                </div>                
            </section>
            <div class="hr-invisible-very-small"></div>
            <div class="clear"></div>
            <section id="primary" class="content-full-width transparent-bg"><!-- Primary Section -->
            	<div class="container content">
            	<form name="myForm"  action="ProductServlet" method="post">
               		<input type="hidden"  id="command" name="command" value="" />
                	<div class="column dt-sc-one-half first">
                    	<div class="product-thumb">
                            <a href="shop-cart.html">
                                <img src="${product.url}" alt="" title="">
                            </a>
                        </div>
                    </div>
                    <div class="column dt-sc-one-half">
                    	<div class="product-details">
                        	<h3 class="product-title">
                            	${product.pname}
                            </h3>
                            <input type="hidden" name="pname" value="${product.pname}" />
                            <div class="clear"></div>
                            <div class="star-rating">
                            	<span style="width:80%"></span>
                            </div>
                            <h5>(1 Customer Review)</h5>
                            <div class="dt-sc-price"> 가격 : ${product.price} </div>
                            <span class="product-info"><i class="fa fa-check-circle"></i> In Stock </span>
                            <div class="clear"></div>
                            <div class="hr-invisible-small"></div>
                            <div class="selector-wrapper">
                            	<input class="btn2 btn-default" type="button" data-decrease="#id-6" value="-" />
                                <input id="id-6" class="form-control" type="quantity" name="quantity" step="1" value="1" min="1" title="Qty" />
                                <input class="btn1 btn-default" type="button" data-increase="#id-6" value="+" />
                            </div>
                            <input type="button" value="구매하기" id="jeju-font"  onclick="mySubmit(1)" style="float:left; border:0; margin-left:5%; width:20%;">
	                   <input type="button" value="장바구니 담기" id="jeju-font" onclick="mySubmit(2)" style="float:left; border:0; margin-left:5%; width:20%;">
	                   <input type="button" value="뒤로가기" id="jeju-font" onclick="javascript:history.back()" style="float:left; border:0; margin-left:5%; width:20%;">
                        </div>
                        <div class="clear"></div>
                        <div class="hr-invisible-small"></div>
                        </div>
                        </form>
                        </div>
                <div class="clear"></div>                 
                <div class="hr-invisible"></div>
            </section><!-- End of Primary Section -->   
        </div><!-- End of Main -->
    <jsp:include page="footer.jsp"/>
	</div><!-- End of Inner-Wrapper -->
</div><!-- End of Wrapper -->

<!-- **jQuery** -->    
<script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"></script>  
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.sticky.min.js"></script>    
<script src="${pageContext.request.contextPath}/js/jsplugins.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/jquery.meanmenu.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/custom.js"></script>

</body>
</html>