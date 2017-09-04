<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
<c:choose>
	<c:when test="${userList==null}">
	<script type="text/javascript">
		location.href="${pageContext.request.contextPath}/product";
	</script>
	</c:when>
	<c:otherwise> 
	<script type="text/javascript">
		location.href="${pageContext.request.contextPath}/userproduct";
	</script>
	</c:otherwise>
</c:choose>	
</body>
</html>