<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!doctype html>


<head>
<style>
/* 글쓰기 버튼 누른후 스타일*/
	#contentForm {
      width: 40%;
      margin: 0 auto;
      padding-top: 12%;
    }
 
    .table > thead > tr > th, .table > tbody > tr > th {
      background-color: #e6ecff;
      text-align: center;
    } /*여기까지*/
    
    #container {
      width: 70%;
      margin: 0 auto;     /* 가로로 중앙에 배치 */
      padding-top: 10%;   /* 테두리와 내용 사이의 패딩 여백 */
    }
     
    #list {
      text-align: center;
    }
   
    #write {
      text-align: right;
    }
     
    /* Bootstrap 수정 */
   
    .table > thead {
      background-color: #b3c6ff; 
    } 
    
    .table > thead > tr > th {
      text-align: center;
    }
    /*여긴 마우스 오버했을때 나오는 색깔*/
    .table-hover > tbody > tr:hover {
      background-color: #e6ecff;
    } 
    .table > tbody > tr > td {
      text-align: center;
    }
    .table > tbody > tr > #title {
      text-align: left;
    }
     
    div > #paging {
      text-align: center;
    }
     
    .hit {
      animation-name: blink;
      animation-duration: 1.5s;
      animation-timing-function: ease;
      animation-iteration-count: infinite;
      /* 위 속성들을 한 줄로 표기하기 */
      /* -webkit-animation: blink 1.5s ease infinite; */
    }
     
    /* 애니메이션 지점 설정하기 */
    /* 익스플로러 10 이상, 최신 모던 브라우저에서 지원 */
    @keyframes blink {
      from {color: white;}
      30% {color: pink;}
      to {color: yellow; font-weight: bold;}
    }
  </style>



<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">	
    
    
	<title>Home | TrendSalon HTML Template</title> 
	
	<meta name="description" content="">
	<meta name="author" content="">
   
    
    <!-- **Favicon** -->
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
    
    <!-- **CSS - stylesheets** -->
    <link id="default-css" href="${pageContext.request.contextPath}/theme/style.css" rel="stylesheet" media="all" />
    <link href="${pageContext.request.contextPath}/theme/css/shortcode.css" rel="stylesheet" type="text/css" />
 
    <!-- **Additional - stylesheets** -->
 <!--     <link rel="stylesheet" href="Board.css" type="text/css" media="all"/>-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/responsive.css" type="text/css" media="all"/>
    <link href="${pageContext.request.contextPath}/css/animations.css" rel="stylesheet" media="all" />
    <link id="skin-css" href="${pageContext.request.contextPath}/theme/skins/red/style.css" rel="stylesheet" media="all" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/theme/css/meanmenu.css" type="text/css" media="all"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/theme/css/pace-theme-loading-bar.css" />
     
    <!-- **Font Awesome**-->
    <link rel="stylesheet" href="css/font-awesome.min.css">
     
    <!-- **Google - Fonts**-->
    <link href='http://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,500,300,700,900' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=PT+Serif:400,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
     
  
    
    <!-- jQuery -->
    <script src="js/modernizr.custom.js"></script>
    
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
<div id="container">
    <div align="right">
      <!-- Login 검증 -->
      <!-- jstl의 if문은 else가 없어서 따로 검증해야함. -->
      <c:if test="${id != null}">
        <%-- <%@include file="loginOk.jsp" %> --%>
      </c:if>
      <c:if test="${id == null}">
        <%-- <%@include file="login.jsp" %> --%>
      </c:if>
    </div>
   
    <div id="list">
    <font size="5px">
      <b>상품/배송 문의 (전체 글: ${totalCount})</b>
     </font>
    </div>
      <br>
    
     
    <div>
      <table class="table table-striped table-bordered table-hover">
        <thead>
          <tr>
            <th width="10%">번호</th>
            <th width="50%">제목</th>
            <th width="10%">작성자</th>
            <th width="15%">작성일</th>
            <th width="10%">조회수</th>
          </tr>         
        </thead>
        <tbody>
        
      
          <c:forEach var="boardDto" items="${list}" varStatus="state">
		    <tr onmouseover="this.style.background='#eaeaea'"
		        onmouseout="this.style.background='white'">
		        <td bgcolor=""> 
		            <p align="center"><span style="font-size:11pt;">
		            ${boardDto.boardNum}</span></p>
		        </td>
		        <td bgcolor="">
					<p><span style="font-size:11pt;">
					<a href="${pageContext.request.contextPath}/board?command=detailView&boardNum=${boardDto.boardNum}">
					  ${boardDto.boardTitle}</a>
					</span></p>
		        </td>
		        
		        <td bgcolor="">
		            <p align="center"><span style="font-size:11pt;">
		            ${boardDto.userId}</span></p>
		        </td>
		         
		         <td bgcolor="">
		            <p align="center"><span style="font-size:11pt;">
		            ${boardDto.boardDate}</span></p>
		        </td>
		         <td bgcolor="">
		            <p align="center"><span style="font-size:11pt;">
		            <fmt:formatNumber value="${boardDto.boardCount}"/> </span></p>
		        </td>
		    </tr>
    </c:forEach>
        </tbody>
      </table>
      <div id="write">
       <!-- <a href="${pageContext.request.contextPath}/BoardProject/themeforest-16437324-trend-salon-html-salon-template/myboard.html" class="btn btn-default"">글쓰기</a> -->
      
      
    <!--   <button type="button" onclick="location.href='${pageContext.request.contextPath}/WebContent/themeforest-16437324-trend-salon-html-salon-template/myboard.jsp'" class="btn btn-default">글쓰기</button>  -->
  <button type="button" onclick="location.href='${pageContext.request.contextPath}/theme/writeboard.jsp' " class="btn btn-default">글쓰기</button>
   

    </div>

    </div>
  </div>
  
                            <div class="hr-invisible"></div>
                            <div class="hr-invisible"></div>
                            <div class="aligncenter">
                            	<div id="scrolldown">
                                    <a href="#"><i class="fa fa-angle-double-down  animate" data-animation="fadeInDown animated"></i><br />Scroll Down</a>
                           
                                </div>
                            </div>
                            <div class="hr-invisible"></div>
                        </div>
                    </div>
                </div>
            </div>
     
               
            
                  <br><br><br>    <br><br><br>
              <div>
           <jsp:include page ="footer.jsp"/>
           </div>
           
            <div class="clear"></div>
            <div class="fullwidth-section dt-sc-parallax-section counter-parallax dark-bg">
           
           
                <div class="clear"></div>  
            </div>
            <div class="clear"></div>
       		<div class="hr-invisible"></div>
     	</div><!-- End of Main -->
     
  
<!-- **jQuery** -->    
<script src="js/jquery-1.11.3.min.js"></script>
<script src="js/jquery.parallax-1.1.3.js" type="text/javascript"></script>  
<script type="text/javascript" src="js/jquery.sticky.min.js"></script>         
<script src="js/jquery.inview.js" type="text/javascript"></script>
<script src="js/jsplugins.js" type="text/javascript"></script>
<script src="js/jquery.meanmenu.min.js" type="text/javascript"></script>
<script src="js/custom.js"></script>

</body>
</html>