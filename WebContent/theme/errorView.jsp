<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<center>
	<h1>ERROR!</h1><p>
	죄송합니다. 문제가 발생하였습니다.<br><p>
	발생된 문제 : <b>${requestScope.errorMsg}</b><br> <p>

	<a href="elec?command=list"> 리스트로 돌아가기</a>
	 <a href="javascript:history.back()">뒤로가기</a>
</center>
</body>
</html>