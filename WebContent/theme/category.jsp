<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!doctype html>
<!--[if IE 7 ]>    <html lang="en-gb" class="isie ie7 oldie no-js"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en-gb" class="isie ie8 oldie no-js"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en-gb" class="isie ie9 no-js"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->

<html lang="UTF-8" class="no-js">
<!--<![endif]-->

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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
<link id="default-css" href="${pageContext.request.contextPath }/theme/css/style.css" rel="stylesheet" media="all" />
<link href="${pageContext.request.contextPath }/theme/css/shortcode.css" rel="stylesheet" type="text/css" />

<!-- **Additional - stylesheets** -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/theme/css/responsive.css" type="text/css"
	media="all" />
<link href="${pageContext.request.contextPath }/theme/css/animations.css" rel="stylesheet" media="all" />
<link id="skin-css" href="${pageContext.request.contextPath }/theme/skins/red/style.css" rel="stylesheet"
	media="all" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/theme/css/meanmenu.css" type="text/css"
	media="all" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/theme/css/pace-theme-loading-bar.css" />

<!-- **Font Awesome** -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/theme/css/font-awesome.min.css">

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
    <link rel="stylesheet" href="css/font-awesome-ie7.min.css" />
    <![endif]-->

<!-- jQuery -->
<script src="${pageContext.request.contextPath }/theme/js/modernizr.custom.js"></script>

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
					<h4>건강제품 보기</h4>
				</div>
			</div>
		</section>
		<div class="hr-invisible-very-small"></div>
		<div class="clear"></div>
		<h2 class="border-title aligncenter">우리의 건강제품들을 소개합니다</h2>
		<div class="hr-invisible-small"></div>
		<div class="container">
			<section id="secondary" class="secondary-left-sidebar transparent-bg">
				<aside class="widget searchwidget">
					<h3 class="border-title">
						제품 <span>검색</span>
					</h3>
					<form method="post"
						action="${pageContext.request.contextPath}/searchProduct"
						name="searchName" class="subscribe-frm">
						<p>
							<input type="text" name="searchName" placeholder="Enter Keyword"
								width="20px" required> <i class="fa fa-search icon"></i>
							<input type="submit" value="송신" />
						</p>
					</form>
				</aside>
				<div class="clear"></div>
				<div class="hr-invisible-small"></div>
				<aside class="widget widget_categories">
					<h3 class="border-title">
						Product <span>Category</span>
					</h3>
					<ul>
						<li>
							<!-- 쿼리스트링에는 변수 하나만 넣을 수 있는데 이 문제를 어떻게 풀 것인지 -->
							<div class="dt-sc-toggle-frame">
								<h5 class="dt-sc-toggle">
									<!-- <a href="cate1.jsp">향산화</a> -->
									<a href="effect?effect=항산화">간</a>
								</h5>

							</div>
						</li>
						<li>
							<div class="dt-sc-toggle-frame">
								<h5 class="dt-sc-toggle">
									<!-- <a href="cate2.jsp">관절 / 뼈 </a> -->
									<a href="effect?effect=뼈">관절/뼈</a>
								</h5>

							</div>
						</li>
						<li>
							<div class="dt-sc-toggle-frame">
								<h5 class="dt-sc-toggle">
									<!-- <a href="cate3.jsp">피로</a> -->
									<a href="effect?effect=피로">눈/시력보호</a>
								</h5>

							</div>
						</li>
						<li>
							<div class="dt-sc-toggle-frame">
								<h5 class="dt-sc-toggle">
									<!-- <a href="cate4.jsp">소화 / 위 / 장</a> -->
									<a href="effect?effect=소화">다이어트</a>
								</h5>

							</div>
						</li>
						<li>
							<div class="dt-sc-toggle-frame">
								<h5 class="dt-sc-toggle">
									<!-- <a href="cate5.jsp">피부 / 탈모</a> -->
									<a href="effect?effect=피부">단백질</a>
								</h5>

							</div>
						</li>
						<li>
							<div class="dt-sc-toggle-frame">
								<h5 class="dt-sc-toggle">
									<!-- <a href="cate6.jsp">해독  / 디톡스</a> -->
									<a href="effect?effect=디톡스">두뇌/집중력</a>
								</h5>

							</div>
						</li>
						<li>
							<div class="dt-sc-toggle-frame">
								<h5 class="dt-sc-toggle">
									<!-- <a href="cate7.jsp">눈 / 시력보호</a> -->
									<a href="effect?effect=시력보호">소화/위/장</a>
								</h5>
							</div>
						</li>
						<li>
							<div class="dt-sc-toggle-frame">
								<h5 class="dt-sc-toggle">
									<!-- <a href="cate6.jsp">해독  / 디톡스</a> -->
									<a href="effect?effect=디톡스">스트레스/우울</a>
								</h5>

							</div>
						</li>
						<li>
							<div class="dt-sc-toggle-frame">
								<h5 class="dt-sc-toggle">
									<!-- <a href="cate7.jsp">눈 / 시력보호</a> -->
									<a href="effect?effect=시력보호">피로</a>
								</h5>
							</div>
						</li>
						<li>
							<div class="dt-sc-toggle-frame">
								<h5 class="dt-sc-toggle">
									<!-- <a href="cate6.jsp">해독  / 디톡스</a> -->
									<a href="effect?effect=디톡스">피부/탈모</a>
								</h5>

							</div>
						</li>
						<li>
							<div class="dt-sc-toggle-frame">
								<h5 class="dt-sc-toggle">
									<!-- <a href="cate7.jsp">눈 / 시력보호</a> -->
									<a href="effect?effect=시력보호">항산화</a>
								</h5>
							</div>
						</li>
						<li>
							<div class="dt-sc-toggle-frame">
								<h5 class="dt-sc-toggle">
									<!-- <a href="cate7.jsp">눈 / 시력보호</a> -->
									<a href="effect?effect=시력보호">혈액순환</a>
								</h5>
							</div>
						</li>
					</ul>
				</aside>
				<section class="fullwidth-background">
        		<div class="breadcrumb-wrapper">
                    <div class="container">
                        <h4> Our Shop </h4>
                        <h6><a href="index.html">Home</a> / Cart</h6>
                    </div>
                </div>                
            	</section>
                </section>
                
                <section id="primary" class="page-with-sidebar with-left-sidebar">
                
                
                <c:forEach var="product" items="${productList}" varStatus="status">
                <table style="width:50%;">
                	<%-- <c:if test="${status.count%3==1}"> --%>
                		<tr>
                	<%-- </c:if> --%>
                		<td>
                            <a href="ProductServlet?command=product_view&url=${product.url}">
                                <img src="${product.url }" alt="" title="" style="width:40%;">
                               </a>
                            
                			<h4>
                               <a href="ProductServlet?command=product_view&url=${product.url}">${product.pname}</a>
                            </h4>
                           	<h4>
                               	<a href="ProductServlet?command=product_view&url=${product.url}">${product.pname}</a>
                            </h4>
                            <div class="dt-sc-price"> ${product.price} </div>
                            <div class="hr-invisible-very-very-small"></div>
                            <a class="dt-sc-button btn-eff3" data-text="Add to Cart" href="ProductServlet?command=product_cart&url=${product.url}">
                            	<span>Add to Cart</span>
                            </a>
                		</td>
                	<%-- <c:if test="${status.count%3==0}"> --%>
                		</tr>
                	<%-- </c:if> --%>
                </table>
                </c:forEach>
               </section>
              
            </div>     
  		</div><!-- End of Main --> 
      <jsp:include page="footer.jsp"/>
	</div><!-- End of Inner-Wrapper -->
</div><!-- End of Wrapper -->

	<!-- **jQuery** -->
	<script src="${pageContext.request.contextPath }/theme/js/jquery-1.11.3.min.js"></script>
	<script src="${pageContext.request.contextPath }/theme/js/jquery.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/theme/js/jquery.sticky.min.js"></script>
	<script src="${pageContext.request.contextPath }/theme/js/jquery-ui.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath }/theme/js/jsplugins.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath }/theme/js/jquery.meanmenu.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath }/theme/js/custom.js"></script>

</body>
</html>