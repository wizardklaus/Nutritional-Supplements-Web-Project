<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<!--[if IE 7 ]>    <html lang="en-gb" class="isie ie7 oldie no-js"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en-gb" class="isie ie8 oldie no-js"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en-gb" class="isie ie9 no-js"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en-gb" class="no-js"> <!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">	
    <!--[if lt IE 9]> 
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <![endif]-->
    
	<title>Home | TrendSalon HTML Template</title> 
	
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
    <link id="default-css" href="${pageContext.request.contextPath}/theme/style.css?ver=1" rel="stylesheet" media="all" />
    <link href="${pageContext.request.contextPath}/theme/css/shortcode.css?ver=1" rel="stylesheet" type="text/css" />
 
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
    <style>
    .aa{
    position:pixed;
    }
    
    </style>
</head>

<body>
<div="aa">
<!-- <div id="loader-wrapper">
PreLoader
    <div class="loader">
        <div class="inner one"></div>
        <div class="inner two"></div>
        <div class="inner three"></div>
    </div>
    <h3 class="loader-text">
    	TrendSalon
    </h3>
</div>PreLoader
 --><div class="wrapper"><!-- Wrapper -->
    <div class="inner-wrapper"><!-- Inner-Wrapper -->
    	<div class="top-bar"><!-- Top Bar -->
        	<div class="container">
				<p> Make your own pills
                <div class="top-right">
                	<ul>
                		<li>
                		${userList.get(0).getUname()}님 환영합니다.
                		</li>
                		<li>
                		<span class = "logout"></span>
                			<a href = "logout.jsp">logout</a>
                		</li>
                		<li>
                		<span class = "cart"></span>
                			<a href = "cart.jsp">cart</a>
                		</li>
                	</ul>
                </div>
            </div>
        </div><!-- End of Top Bar -->
        <header id="header" class="dt-sticky-menu type2"><!-- Header -->
        	<div id="logo"><!-- Logo -->
                <a title="TrendSalon" href="index.jsp"><img style = "align :center;"title="TrendSalon" alt="Trendy" src="${pageContext.request.contextPath}/theme/images/wowpill_logo1.png"></a>
            </div><!-- End of Logo -->
0            <div id="menu-container">
            	<div class="container">
                    <nav id="main-menu"><!-- Nav - Starts -->
                        <div id="dt-menu-toggle" class="dt-menu-toggle">
                            Menu
                            <span class="dt-menu-toggle-icon"></span>
                        </div>
                        <ul class="menu">
                            <li class="current_page_item menu-item-simple-parent"><a href="index.jsp">Home</a>
                            	<ul class="sub-menu">
                                    <li><a href="index-v2.html">Home 2</a></li>
                                    <li><a href="index-v3.html">Home 3</a></li>
                                    <li><a href="index-v4.html">Home 4</a></li>
                                    <li><a href="index-v5.html">Home 5</a></li>
                                </ul>
                                <a class="dt-menu-expand">+</a>
                            </li>
                            <li class="menu-item-simple-parent"><a href="${pageContext.request.contextPath}/ProductServlet?command=product_list">Category</a>
                            	<ul class="sub-menu">
                                    <li><a href="about-us.html">항산화</a></li>
                                    <li><a href="shortcodes.html">관절/뼈</a></li>
                                    <li><a href="404.html">피로</a></li>
                                    <li><a href="header2.html">소화/위/장</a>
                                    <li><a href="header2.html">피부/탈모</a>
                                    <li><a href="header2.html">간</a>
                                    <li><a href="header2.html">해독/디톡스</a>
                                    <li><a href="header2.html">눈/시력보호</a>
                                 
                                		<a class="dt-menu-expand">+</a>
                                    </li>
                                </ul>
                                <a class="dt-menu-expand">+</a>
                            </li>
                         
                            <li class="menu-item-simple-parent"><a href="${pageContext.request.contextPath}/theme/customizing.jsp">CustoMizing</a>
                                <ul class="sub-menu">
                                    <li><a href="selectEfficacy.jsp">Efficacy</a></li>
                                    <li><a href="select">CheckOut</a></li>
                                </ul>
                                <a class="dt-menu-expand">+</a>
                            </li>
                         
                            <li class="menu-item-simple-parent"><a href="${pageContext.request.contextPath}/board?command=list">Board</a>
                            	<ul class="sub-menu">
                                    <li><a href="portfolio-details.html">Gallery Details</a></li>
                                    <li><a href="portfolio-details-rhs.html">Gallery Details With RHS</a></li>
                                    <li><a href="portfolio-details-lhs.html">Gallery Details With LHS</a></li>
                                </ul>
                                <a class="dt-menu-expand">+</a>
                            </li>
                            <li class="menu-item-simple-parent"><a href="mypage.jsp">MyPage</a>
                            	<ul class="sub-menu">
                                    <li><a href="contact.html">Contact</a></li>
                                    <li><a href="contact2.html">Contact 2</a></li>
                                </ul>
                                <a class="dt-menu-expand">+</a>
                            </li>
                        </ul>
                    </nav><!-- End of Nav -->
                </div>
            </div>
        </header>
        </div>
                <!-- **jQuery** -->    
<script src="${pageContext.request.contextPath}/theme/js/jquery-1.11.3.min.js"></script>
<script src="${pageContext.request.contextPath}/theme/js/jquery.parallax-1.1.3.js" type="text/javascript"></script>  
<script type="text/javascript" src="${pageContext.request.contextPath}/theme/js/jquery.sticky.min.js"></script>         
<script src="${pageContext.request.contextPath}/theme/js/jquery.inview.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/theme/js/jsplugins.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/theme/js/jquery.meanmenu.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/theme/js/custom.js"></script>