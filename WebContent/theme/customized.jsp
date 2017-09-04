<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<!doctype html>
<!--[if IE 7 ]>    <html lang="en-gb" class="isie ie7 oldie no-js"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en-gb" class="isie ie8 oldie no-js"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en-gb" class="isie ie9 no-js"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en-gb" class="no-js">
<!--<![endif]-->

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<!--[if lt IE 9]> 
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <![endif]-->

<title>Shop | TrendSalon HTML Template</title>

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
<link id="default-css" href="${pageContext.request.contextPath}/style.css" rel="stylesheet" media="all" />
<link href="${pageContext.request.contextPath}/theme/css/shortcode.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/theme/css/button-default.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/theme/css/button-component.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/theme/css/label-checkbox.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/theme/css/font-jeju.css" />


<!-- **Additional - stylesheets** -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/theme/css/responsive.css" type="text/css"
	media="all" />
<link href="${pageContext.request.contextPath}/theme/css/animations.css" rel="stylesheet" media="all" />
<link id="skin-css" href="${pageContext.request.contextPath}/skins/red/style.css" rel="stylesheet"
	media="all" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/theme/css/meanmenu.css" type="text/css"
	media="all" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/theme/css/pace-theme-loading-bar.css" />

<!-- **Font Awesome** -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/theme/css/font-awesome.min.css">

<!-- **Google - Fonts** -->
<link href='http://fonts.googleapis.com/css?family=Raleway'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,500,300,700,900'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=PT+Serif:400,700'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/hanna.css">

<!--[if IE 7]>
    <link rel="stylesheet" href="css/font-awesome-ie7.min.css" />
    <![endif]-->

<script src="${pageContext.request.contextPath}/js/modernizr.custom.js"></script>

<!-- jQuery -->
<script src="${pageContext.request.contextPath}/js/modernizr.custom.js"></script>

<script type="text/javascript">
	function upPrice(){
		var id = document.getElementById("price");
		var price= Number(id.innerHTML);
		var amountValue = Number(document.getElementById("id-6").value)-1;
		
		price = price + price/amountValue;
		id.innerHTML = price;
	}
	
	function downPrice(){
		var id = document.getElementById("price");
		var price= Number(id.innerHTML);
		var amountValue = Number(document.getElementById("id-6").value)+1;
		
		if(amountValue>1){
			price = price - price/amountValue;
			id.innerHTML = price;
		}
	}
	
	function mySubmit(index){
		
		if (document.getElementById("cpname").value =="") {
		    alert( "약의 이름을 정해주세요!" );
		    window.document.writeForm.cpname.value.focus();
			return false;
		}
		
		
		var command = document.getElementById("command");
		
		var priceValue = document.getElementById("price").innerHTML;
		var priceHidden = document.getElementById("priceHidden");
		
		var amountValue = document.getElementById("id-6").value;
		var amount = document.getElementById("amount");
		
		if(index==1){
			try{
				command.value="shopCheck";
				priceHidden.value=priceValue;
				amount.value=amountValue;
			}catch(error){
				alert("Error!");
			}
		}
		
		if(index==2){
			try{
				command.value="cartCheck";
				priceHidden.value=priceValue;
				amount.value=amountValue;
			}catch(error){
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
	<div id="main">
		<!-- Main -->
		<div class="hr-invisible-small"></div>
		<section class="fullwidth-background">
			<div class="breadcrumb-wrapper">
				<div class="container">
					<h4>Our Shop</h4>
				</div>
			</div>
		</section>
		<div class="hr-invisible-very-small"></div>
		<div class="clear"></div>
		<h2 class="border-title aligncenter">CUSTOMIZING FOR U</h2>
		<div class="hr-invisible-small"></div>
		<div class="container">
			<div class="clear"></div>
			<div class="hr-invisible-medium"></div>
			<h2 id="font-jeju" style="font-size:40px">완성된 약 확인</h2> <br>
			
			<!-- 상품 속성 다시 한번 확인 -->
			<div class="column dt-sc-one-half first">
	         	<div class="product-thumb">
	         		<img src="${pageContext.request.contextPath}/images/product/product-img4-big.png" width="60%" alt="" title="">
	             </div>
	         </div>
	      
	         <div class="column dt-sc-one-half">
               	<div class="product-details">
               	
               		<form name="myForm"  action="customizing" method="post">
               		<input type="hidden"  id="command" name="command" value="" />
                   	<h4 class="product-title" id="font-jeju">고객님의 약은 다음과 같습니다</h4>
                   	
                   	<c:choose>
	                   	<c:when test="${requestScope.effect>0}">
		                   	<p id="font-jeju">선택하신 효능</p>
		                   	<ul class="dt-sc-fancy-list check" id="font-jeju">
		                   		<c:forEach var="item" items="${requestScope.effectList}"  varStatus="status">
		                   			<li>${item}</li>
		                   			<input type="hidden" name="effects" value="${item}">
		                   		</c:forEach>
		                   </ul>
	                   	</c:when>
	                   	<c:otherwise>
	                   	<p>성분으로 선택하셨습니다</p>
	                   	</c:otherwise>
	                </c:choose>
                   	<br><br>
                   	<p id="font-jeju">해당하는 성분</p>
                   	<ul class="dt-sc-fancy-list check" id="font-jeju">
                   		<c:forEach var="item" items="${requestScope.list}"  varStatus="status">
                   			<c:if test="${item!=null}">
	                   			<li>${item}</li>
	                   			<input type="hidden" name="ingredients" value="${item}">
	                   		</c:if>
                   		</c:forEach>
                   </ul>
                 
                     <div class="hr-invisible-very-small"></div>                         
                		<div class="dt-sc-tabs-frame-content">
                     	<p id="font-jeju">
                     		본 식품은 일주일 치를 단위로 판매하며<br>
                     		가격은 기간으로 책정됩니다.<br>
                     		건강한 바디를 위한 당신의 선택 아주 굿! 
                     	</p>
                         <div class="clear"></div>
                         <div class="hr-invisible-very-small"></div>
                     </div>
                    
                    약의 이름을 간단히 지어주세요! <input type="text" name="cpname"  id="cpname" />
                    
                    <div class="clear"></div>
                    <div class="hr-invisible-small"></div>
                    <p>수량을 선택해주세요(일주일 단위)</p>
                    <div class="selector-wrapper">
                    	<input class="btn2 btn-default" type="button" data-decrease="#id-6" value="-"  onclick="downPrice()"/>
                        <input id="id-6" class="form-control" type="quantity" name="quantity" step="1" value="1" min="1" title="Qty" />
                        <input class="btn1 btn-default" type="button" data-increase="#id-6" value="+"  onclick="upPrice()"/>
                    </div>
                    <p id="font-jeju">주일 치</p>
                    <br>
                    
                    <input type="hidden" id="amount"  name="amount" value="1"  />
                     
                      <p id="jeju-font">&nbsp;&nbsp;가격 : <span id="price">${basePrice=requestScope.length*2000}</span>원 </p>
                      <input type="hidden"  id="priceHidden" name="price"  value="10000"/>
                       <!-- href="shop-checkout.html" -->
                       <br>
                       <input type="button" value="구매하기" id="jeju-font"  onclick="mySubmit(1)" style="float:left; border:0; margin-left:5%; width:20%;">
	                   <input type="button" value="장바구니 담기" id="jeju-font" onclick="mySubmit(2)" style="float:left; border:0; margin-left:5%; width:20%;">
	                   <input type="button" value="뒤로가기" id="jeju-font" onclick="javascript:history.back()" style="float:left; border:0; margin-left:5%; width:20%;">
                    </form>
                 </div>
                 <div class="clear"></div>
                 <div class="hr-invisible-small"></div>
                 <div class="dt-sc-tabs-container">
                 	
                     <div class="hr-invisible-very-small"></div>
                 </div>
            	</div>
	
			<div class="clear"></div>
			<div class="hr-invisible-medium"></div>
			
			<hr>
			
			<h2 id="font-jeju" style="font-size:40px">유사 상품 추천</h2> <br>
			<!-- 유사상품 추천 -->
			<jsp:include page="recommand-customizing.jsp"/>
			
            <div class="hr-invisible-medium"></div>
            <div class="hr-invisible-very-very-small"></div>
			
			</div> <!-- class : container end -->
			
		</div> <!-- id : main end -->
		</div>
		</div>
		</div>
	<!-- End of Main -->
	<jsp:include page="footer.jsp"/>
	
	<!-- **jQuery** -->
	<script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.sticky.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery-ui.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/js/jsplugins.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.meanmenu.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/js/custom.js"></script>

</body>
</html>