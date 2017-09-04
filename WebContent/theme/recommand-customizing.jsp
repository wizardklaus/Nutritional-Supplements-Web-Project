<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link href="${pageContext.request.contextPath}/css/recommand.css" rel="stylesheet" type="text/css" />
<script src="${pageContext.request.contextPath}/js/recommand.js" type="text/javascript"></script>


</head>
<body>
	<div style="padding:10% 0;">
        <div id="thumbnail-slider">
            <div class="inner">
            	<ul>
            		<c:forEach items="${requestScope.product}" var="item">
	                     <li>
	                        <img src="${item.url}" />
	                        <p style="color:black;"><a href="detail?pname=${item.pname}">${item.pname}</a></p>
	                    </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
    </div>
				
</body>
</html>