<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<link href="${pageContext.request.contextPath}/theme/css/font-jeju.css" rel="stylesheet" type="text/css">
<style>
.ok{
color: black;
text-align:center;

}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
	<jsp:include page="topbar.jsp"/>
	<div class="ok">
	<h1 style="font-color:black;">회원가입을 성공하셨습니다.</h1> 
	<form action = "theme/mainView.jsp" id="font-jeju">
	
	<input type = "submit" name = "gohome" value = "홈으로 가기">
	</form>
	
	<form action = "theme/login.jsp">
	<input type = "submit" name = "gologin" value = "로그인 하기">
	</form>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>