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
	�˼��մϴ�. ������ �߻��Ͽ����ϴ�.<br><p>
	�߻��� ���� : <b>${requestScope.errorMsg}</b><br> <p>

	<a href="elec?command=list"> ����Ʈ�� ���ư���</a>
	 <a href="javascript:history.back()">�ڷΰ���</a>
</center>
</body>
</html>