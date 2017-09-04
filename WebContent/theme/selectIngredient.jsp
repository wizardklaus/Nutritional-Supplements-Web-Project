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
<link id="default-css" href="style.css" rel="stylesheet" media="all" />
<link href="${pageContext.request.contextPath}/theme/css/shortcode.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/theme/css/button-default.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/theme/css/button-component.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/theme/css/label-checkbox.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/theme/css/font-jeju.css" />


<!-- **Additional - stylesheets** -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/theme/css/responsive.css" type="text/css"
	media="all" />
<link href="${pageContext.request.contextPath}/theme/css/animations.css" rel="stylesheet" media="all" />
<link id="skin-css" href="skins/red/style.css" rel="stylesheet"
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/theme/css/font-awesome-ie7.min.css" />
    <![endif]-->

<script src="${pageContext.request.contextPath}/theme/js/modernizr.custom.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/theme/js/jquery-3.1.1.min.js"></script>

<!-- jQuery -->
<script src="${pageContext.request.contextPath}/theme/js/modernizr.custom.js"></script>
	
<script type="text/javascript">
	var _gaq = _gaq || [];
	_gaq.push(['_setAccount', 'UA-7243260-2']);
	_gaq.push(['_trackPageview']);
	(function() {
		var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	})();
</script>

<script type="text/javascript">
$(function(){
	  
	  //아이디중복체크
	  $("#searchButton").click(function(){
		  
		  $.ajax({
			  type:"post",
			   url:"../customizing?command=showIngd",
			   data: "ingdName="+$("#searchKey").val(),
			   dataType:"json",
			   
			   success: function(result){
				   var str="";
					 $.each(result, function(index,item){
						 str+="<input type='checkbox' class='styled' id='"+item.ingdName+"' name='ingds' value='"+item.ingdName+"'>";
				    	 str+="<label class='styled' for='"+item.ingdName+"' id='font-jeju'>"+item.ingdName+"</label>";
				    	 str+="<br><br>";
					 })
					 
					 $("#ingdList p").after(str);
			   },
			   error: function(err){
				   alert("오류발생! : " + err);
				   console.log("오류발생 : " + err);
			   }
		  })
	  });//검색하기 끝
})
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
				<h2 id="font-jeju" style="font-size:40px">성분으로 선택하기</h2> <br>
				<!-- 여기서 옵션 체크 -->
				<form  action="../customizing" method="post">
					<input type="hidden"  name="command"  value="ingredientResult"/>
					
					<p id="font-jeju" style="color:black;">성분을 입력해주세요</p>
					<input type="text" id="searchKey" name="searchKey"  style="width:40%"/>
					<input type="button"  id="searchButton" value="검색하기"  style="float:left; margin-left:40%;"/>

					<br><br><br><br><br><br>
					<div id="ingdList">
				  		<p id="font-jeju" >검색 결과 부분입니다.</p>
					</div>
					<br><br><br>
					<div class="clear"></div>
					<div class="hr-invisible-medium"></div>
					
					<section class="color-3">
						<p>
							<button class="btn btn-3 btn-3e icon-arrow-right">Send data</button>
						</p>
					</section>
				</form>
			
		<div class="clear"></div>
		<div class="hr-invisible-medium"></div>
	</div>

	<div class="clear"></div>
	<div class="hr-invisible-small"></div>
	<div class="hr-invisible-medium"></div>
	<div class="hr-invisible-very-very-small"></div>
	</section>
	</div>
	</div>
	<!-- End of Main -->
	<footer id="footer">
		<div class="hr-invisible"></div>
		<div class="footer-widgets-wrapper">
			<div class="container">
				<div class="column dt-sc-one-fourth first">
					<aside class="widget widget_text">
						<h4 class="widgettitle">Location</h4>
						<div class="dt-sc-contact-info address">
							<p>
								2145 - 007 - 1566 <br>No 45, Season Street, Livingstone <br>LA,
								Inc - 4502
							</p>
						</div>
						<div class="hr-invisible-very-very-small"></div>
						<h4 class="widgettitle">Telephone Enquiry</h4>
						<div class="dt-sc-contact-info">
							<p class="dt-sc-clr num">+91 214 658 7852</p>
						</div>
						<div class="hr-invisible-very-very-small"></div>
						<h4 class="widgettitle">Email us</h4>
						<div class="dt-sc-contact-info">
							<a href="mailto:yourname@somemail.com" class="dt-sc-clr">
								designthemes@somemail.com </a>
						</div>
					</aside>
				</div>
				<div class="column dt-sc-one-fourth">
					<aside class="widget widget_text">
						<h4 class="widgettitle">About Us</h4>
						<div class="textwidget">
							<ul>
								<li><a href="#"> About Us</a></li>
								<li><a href="#"> Salons </a></li>
								<li><a href="#"> Giftcards </a></li>
								<li><a href="#"> Terms & Conditions </a></li>
								<li><a href="#"> Work With Us </a></li>
							</ul>
						</div>
					</aside>
				</div>
				<div class="column dt-sc-one-fourth">
					<aside class="widget widget_tweetbox">
						<h4 class="widgettitle">Latest tweets</h4>
						<div class="textwidget">
							<ul class="tweet_list">
								<li class="tweet"><span class="tweet-text">
										Excepteur sint occaecat <a href="#">cupidatat non</a>
										proident, sunt in culpa qui officia erunt mollit anim id est
										laborum.aute irure dolor in repre<br> <a href="#">http://test/domain
											name</a>
								</span></li>
							</ul>
						</div>
					</aside>
				</div>
				<div class="column dt-sc-one-fourth">
					<aside class="widget widget_newsletter">
						<h4 class="widgettitle">Newsletter</h4>
						<form class="subscribe-frm" method="post" name="frmnewsletter"
							action="php/subscribe.php">
							<input type="email" placeholder="Enter email ID" required
								value="" name="mc_email"> <input
								class="dt-sc-button small" type="submit" value="" name="submit">
						</form>
						<div id="ajax_subscribe_msg"></div>
						<div class="hr-invisible-very-very-small"></div>
						<h4 class="widgettitle">Follow Us</h4>
						<ul class="footer-icons">
							<li><a href="#" class="fa fa-facebook"></a></li>
							<li><a href="#" class="fa fa-twitter"></a></li>
							<li><a href="#" class="fa fa-youtube"></a></li>
							<li><a href="#" class="fa fa-google-plus"></a></li>
							<li><a href="#" class="fa fa-rss"></a></li>
						</ul>
					</aside>
				</div>
			</div>
			<div class="hr-invisible-medium"></div>
		</div>
		<div class="copyright">
			<div class="container">
				<p>
					Copyright ÃÂÃÂ© 2015 Trend Salon All Rights Reserved | <a href="#">BuddhaThemes</a>
				</p>
			</div>
		</div>
	</footer>
	</div>
	<!-- End of Inner-Wrapper -->
	</div>
	<!-- End of Wrapper -->

	<!-- **jQuery** -->
	<script src="${pageContext.request.contextPath}/theme/js/jquery-1.11.3.min.js"></script>
	<script src="${pageContext.request.contextPath}/theme/js/jquery.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/theme/js/jquery.sticky.min.js"></script>
	<script src="${pageContext.request.contextPath}/theme/js/jquery-ui.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/theme/js/jsplugins.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/theme/js/jquery.meanmenu.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/theme/js/custom.js"></script>

</body>
</html>