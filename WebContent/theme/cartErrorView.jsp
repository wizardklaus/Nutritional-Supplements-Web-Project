<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
	<jsp:include page = "topbar.jsp"/>
	로그인을 먼저 해주세요.
	<form action = "../login" method = "post">
		<inupt type = "submit" name = "login" value = "로그인">
	</form>
	<jsp:include page = "footer.jsp"/>
</body>
</html>