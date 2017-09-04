<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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

<!--[if IE 7]>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/theme/css/font-awesome-ie7.min.css" />
    <![endif]-->

<!-- jQuery -->
<script src="js/modernizr.custom.js"></script>

</head>

<body>
	<%-- <div id="loader-wrapper">
		<!-- PreLoader -->
		<div class="loader">
			<div class="inner one"></div>
			<div class="inner two"></div>
			<div class="inner three"></div>
		</div>
		<h3 class="loader-text">TrendSalon</h3>
	</div>
	<!-- PreLoader -->
	<div class="wrapper">
		<!-- Wrapper -->
		<div class="inner-wrapper">
			<!-- Inner-Wrapper -->
			<jsp:include page="topbar.jsp" />
			</nav>
			<!-- End of Nav -->
		</div>
	</div>
	</header> --%>
	
	
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
				<div id="horizontal_menu">
				<div class="clear"></div>
				<div class="hr-invisible-medium"></div>
				<a href="selectEfficacy.jsp"><img src="images/MakeUsingEffects.png"  width="30%" style="float:left"/></a>
				<a href="selectIngredient.jsp"><img src="images/MakeUsingIngredients.png"  width="40%" style="float:right"/></a>	
			</div>
			<div class="clear"></div>
			<div class="hr-invisible-medium"></div>
		<div class="clear"></div>
		<div class="hr-invisible-medium"></div>
	</div>

	<div class="clear"></div>
	<div class="hr-invisible-small"></div>
	<div class="hr-invisible-medium"></div>
	<div class="hr-invisible-very-very-small"></div>
	</section>
	</div>
	<!-- End of Main -->
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- End of Inner-Wrapper -->
	</div>
	<!-- End of Wrapper -->

	<!-- **jQuery** -->
	<script src="js/jquery-1.11.3.min.js"></script>
	<script src="js/jquery.js"></script>
	<script type="text/javascript" src="js/jquery.sticky.min.js"></script>
	<script src="js/jquery-ui.js" type="text/javascript"></script>
	<script src="js/jsplugins.js" type="text/javascript"></script>
	<script src="js/jquery.meanmenu.min.js" type="text/javascript"></script>
	<script src="js/custom.js"></script>

</body>
</html>