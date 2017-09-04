<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>


</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link href="${pageContext.request.contextPath}/theme/css/recommand.css" rel="stylesheet" type="text/css" />
<script src="${pageContext.request.contextPath}/theme/js/recommand.js" type="text/javascript"></script>
  
</head>
<body>
    

    <!--start-->
    <div style="padding:120px 0;">
        <div id="thumbnail-slider">
            <div class="inner">
            
                <ul> <h1>${userList.get(0).getUname()}님이 관심있으신 ${userEffectList.get(0)},${userEffectList.get(1)},${userEffectList.get(2)}기능에 대한 맞춤 추천 제품</h1>
                     <li>
                     <img src = "https://www.images-iherb.com/l/MLI-00952-11.jpg" />
                     </li>
                     
                     <li>
                       <img src="https://www.images-iherb.com/l/SOL-00316-3.jpg"/>
                    </li>
                    <li>
                       <img src="https://www.images-iherb.com/l/NOW-02210-8.jpg"/>
                    </li>
                    <li>
                       <img src="https://www.images-iherb.com/l/NOW-02313-7.jpg"/>
                    </li>
                    <li>
                        <img src="https://www.images-iherb.com/l/SOL-00201-4.jpg"/>
                    <%-- </li>
                    <li>
                        <img src="${userProductUrl.get(5) }"/>
                    </li>
                    <li>
                        <img src="${userProductUrl.get(6) }"/>
                    </li>
                    <li>
                        <img src="${userProductUrl.get(7) }"/>
                    </li>
                    <li>
                        <img src="${userProductUrl.get(8) }"/>
                    </li>
                    <li>
                      <img src="${userProductUrl.get(9) }"/>
                    </li>  --%>
                </ul>
            </div>
        </div>
    </div>
 

	
</body>
</html>