<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">	
    
    
	<title>Home | TrendSalon HTML Template</title> 
	
	<meta name="description" content="">
	<meta name="author" content="">
   
    
    <!-- **Favicon** -->
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
    
    <!-- **CSS - stylesheets** -->
    <link id="default-css" href="${pageContext.request.contextPath}/them/style.css" rel="stylesheet" media="all" />
    <link href="${pageContext.request.contextPath}/them/css/shortcode.css" rel="stylesheet" type="text/css" />
 
    <!-- **Additional - stylesheets** -->
 <!--     <link rel="stylesheet" href="Board.css" type="text/css" media="all"/>-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/responsive.css" type="text/css" media="all"/>
    <link href="${pageContext.request.contextPath}/css/animations.css" rel="stylesheet" media="all" />
    <link id="skin-css" href="${pageContext.request.contextPath}/them/skins/red/style.css" rel="stylesheet" media="all" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/them/css/meanmenu.css" type="text/css" media="all"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/them/css/pace-theme-loading-bar.css" />
        
    <!-- **Font Awesome** -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    
    <!-- **Google - Fonts** -->
    <link href='http://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,500,300,700,900' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=PT+Serif:400,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
    
  
    
    <!-- jQuery -->
    <script src="js/modernizr.custom.js"></script>
    
    
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>BBS Update</title>
  <link href="bootstrap-3.3.7/css/bootstrap.min.css" rel="stylesheet">
  <style>
    #contentForm {
      width: 40%;
      margin: 0 auto;
      padding-top: 12%;
    }
 
    .table > thead > tr > th, .table > tbody > tr > th {
      background-color: #e6ecff;
      text-align: center;
    }
  </style>
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

  <form name=updateForm action="${pageContext.request.contextPath}/board?command=insert" method="post" onSubmit='return checkValid()' enctype="multipart/form-data">
      <input type="hidden" value="update" name="command">
      <input type='hidden' name='boardNum' value="${board.boardNum}">
    <div id="contentForm">
        <div class="input-group input-group-sm" role="group" aria-label="...">
       
        <div id="list" align="center">
         <font size="5px">
      <b>상품/배송 문의</b>
      </font>
    </div>
    <br>
        <table class="table table-striped table-bordered">
          <thead>
            <tr>
              <th width="30%">글쓴이</th>
              <td>${boardDto.userId}</td>
            </tr>
            <tr>
             <th style="padding-top: 30px">제목</th>
              <td><input type="text" name="title" value="${list.boardTitle }" ></td>
            </tr>
          </thead>
          <tbody>
            <tr>
              <th style="padding-top:70px" >문의사항</th>
              <td>
                <textarea class="form-control" rows="20" name="content" value="${list.boardContent }"></textarea>
              </td>
            </tr>
            <tr>
              <th style="padding-top: 15px">첨부파일</th>
              <td><input type="file" class="btn btn-default" name="fileName"></td>
            </tr>
            
          </tbody>
        </table>
      </div>
      <div class="btn-group btn-group-sm" role="group" aria-label="...">
        
      <!--   <input type="submit" class="btn btn-default" value="취소"> -->
        <input type="submit" class="btn btn-default" value="수정완료" >
      
      </div>
    </div>
  </form>
    <br><br><br>    <br><br><br>
       <div>
       
       
           <jsp:include page ="footer.jsp"/>
           </div>
  <script src="https://code.jquery.com/jquery-3.2.0.min.js"></script>
  <script>
    jQuery(document).ready(function() {
      if(${id= null}) {
        alert("게시판을 이용하시려면 로그인하셔야 합니다.");
      //  location.href="/bbs/login.bbs"
      }
    });
  </script>
</body>


