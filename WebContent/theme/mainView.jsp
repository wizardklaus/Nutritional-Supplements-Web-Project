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
		<jsp:include page="topbar.jsp"/>
		<jsp:include page = "recommand.jsp"/>
	</c:when>
	<c:otherwise>
		<%-- <jsp:include page="topbar2.jsp"/> --%>
		<script type="text/javascript">
			location.href="${pageContext.request.contextPath}/userproduct";
		</script>
		<%-- <jsp:include page="userRecommand.jsp"/> --%>
	</c:otherwise>
</c:choose>

<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>