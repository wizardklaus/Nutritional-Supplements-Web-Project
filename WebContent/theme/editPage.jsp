<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>




<!DOCTYPE html>
<html>
<head>
<!-- 글목록을 클릭했을때 글쓴이라면 수정하기 페이지로 들어감!! -->
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
  
  <SCRIPT language=javascript>
function sendUpdate(){
	document.requestForm.command.value ="updateForm";
	document.requestForm.submit();
}

function sendDelete(){
	document.requestForm.command.value ="delete";
	document.requestForm.submit();
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
  <form name="delete" action="${pageContext.request.contextPath}/board?command=delete" method="post" onSubmit='return checkValid()' enctype="multipart/form-data" >
    <div id="contentForm">
        <input type="hidden" name="pageNum" value="${pageNum}">
        <input type="hidden" name="articleNumber" value="${article.articleNumber}">
         
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
              <th style="padding-top: 15px">제목</th>
              <td><span style="color:black;">${requestScope.dto.boardTitle}</span></td>
               
            </tr>
          </thead>
          <tbody>
            <tr>
            <th style="padding-top: 15px">문의사항</th>
              <td colspan="2">
                <div style="width:100%; height:100px; color:black; border:1px solid gray;">${dto.boardContent}</div>
              </td>
            </tr>
            
          </tbody>
        </table>
      </div>
      <div class="btn-group btn-group-sm" role="group" aria-label="...">
          <input type="submit" class="btn btn-default" value="삭제하기"> 
    <!-- <input type="button" class="btn btn-default" value="수정하기" onClick="sendUpdate()"-->  
        <button type="button" onclick="location.href='${pageContext.request.contextPath}/theme/editNewBoard.jsp' " class="btn btn-default">수정하기</button> 
       
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


