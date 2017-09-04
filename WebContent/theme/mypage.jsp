<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<!DOCTYPE html>


<html lang="ko">
<head>


<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>주문내역</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">

* { font-family: NanumGothic, 'Malgun Gothic'; }
body { padding-top: 50px; }
.sub-header {
  padding-bottom: 10px;
  border-bottom: 1px solid #eee;
}
.navbar-fixed-top { border: 0; }
.sidebar { display: none; }
@media (min-width: 768px) {
  .sidebar {
    position: relative;
	height:930px;
    margin-bottom: -1000px;
    left: 0;
    z-index: 1000;
    display: block;
    padding: 20px;
    overflow-x: hidden;
    overflow-y: auto;
    background-color: #f5f5f5;
    border-right: 1px solid #eee;
  }
}
.nav-sidebar {
  margin-right: -21px;
  margin-bottom: 20px;
  margin-left: -20px;
}
.nav-sidebar > li > a {
  padding-right: 20px;
  padding-left: 20px;
}
.nav-sidebar > .active > a,
.nav-sidebar > .active > a:hover,
.nav-sidebar > .active > a:focus {
  color: #fff;
  background-color: #428bca;
}
.main { padding: 20px; }
@media (min-width: 768px) {
  .main 
  	{
    padding-right: 40px;
    padding-left: 40px;
  }
}
.main .page-header { margin-top: 0; }
.placeholders {

  text-align: center;
}
.placeholders h4 { margin-bottom: 0; }
.placeholder { margin-bottom: 20px; }
.placeholder img {
  display: inline-block;
  border-radius: 50%;
}

</style>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
<script src="//getbootstrap.com/assets/js/docs.min.js"></script>
</head>
 <body>


  <jsp:include page="topbar2.jsp"/>


<div class="container-fluid">
  <div class="row">
    <div class="col-sm-3 col-md-2 sidebar">
      <ul class="nav nav-sidebar">
        <li class="active">
        <a href="mypage.jsp">주문내역</a></li>
        <li><a href="mypageCart.jsp">장바구니</a></li>
        <li><a href="#">나의 게시판수정</a></li>
        <li><a href="#">기본정보수정</a></li>
      </ul>
     
    </div>
    
    <!-- 상품 품목 -->
    <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
      <h1 class="page-header">주문내역</h1>

      <div class="row placeholders">
        <div class="col-xs-6 col-sm-3 placeholder">
          <img data-src="holder.js/200x200/auto/sky" class="img-responsive" alt="Generic placeholder thumbnail">
          <h4>이름</h4>
          <span class="text-muted">어떤 내용</span>
        </div>
        <div class="col-xs-6 col-sm-3 placeholder">
          <img data-src="holder.js/200x200/auto/sky" class="img-responsive" alt="Generic placeholder thumbnail">
          <h4>이름</h4>
          <span class="text-muted">어떤 내용</span>
        </div>
        <div class="col-xs-6 col-sm-3 placeholder">
          <img data-src="holder.js/200x200/auto/sky" class="img-responsive" alt="Generic placeholder thumbnail">
          <h4>이름</h4>
          <span class="text-muted">어떤 내용</span>
        </div>
        <div class="col-xs-6 col-sm-3 placeholder">
          <img data-src="holder.js/200x200/auto/sky" class="img-responsive" alt="Generic placeholder thumbnail">
          <h4>이름</h4>
          <span class="text-muted">어떤 내용</span>
        </div>
        <div class="col-xs-6 col-sm-3 placeholder">
          <img data-src="holder.js/200x200/auto/sky" class="img-responsive" alt="Generic placeholder thumbnail">
          <h4>이름</h4>
          <span class="text-muted">어떤 내용</span>
        </div>
        <div class="col-xs-6 col-sm-3 placeholder">
          <img data-src="holder.js/200x200/auto/vine" class="img-responsive" alt="Generic placeholder thumbnail">
          <h4>이름</h4>
          <span class="text-muted">어떤 내용</span>
        </div>
        <div class="col-xs-6 col-sm-3 placeholder">
          <img data-src="holder.js/200x200/auto/sky" class="img-responsive" alt="Generic placeholder thumbnail">
          <h4>이름</h4>
          <span class="text-muted">어떤 내용</span>
        </div>
        <div class="col-xs-6 col-sm-3 placeholder">
          <img data-src="holder.js/200x200/auto/vine" class="img-responsive" alt="Generic placeholder thumbnail">
          <h4>이름</h4>
          <span class="text-muted">어떤 내용</span>
        </div>
          <div class="col-xs-6 col-sm-3 placeholder">
          <img data-src="holder.js/200x200/auto/sky" class="img-responsive" alt="Generic placeholder thumbnail">
          <h4>이름</h4>
          <span class="text-muted">어떤 내용</span>
        </div>
          <div class="col-xs-6 col-sm-3 placeholder">
          <img data-src="holder.js/200x200/auto/sky" class="img-responsive" alt="Generic placeholder thumbnail">
          <h4>이름</h4>
          <span class="text-muted">어떤 내용</span>
        </div>
          <div class="col-xs-6 col-sm-3 placeholder">
          <img data-src="holder.js/200x200/auto/sky" class="img-responsive" alt="Generic placeholder thumbnail">
          <h4>이름</h4>
          <span class="text-muted">어떤 내용</span>
        </div>
          <div class="col-xs-6 col-sm-3 placeholder">
          <img data-src="holder.js/200x200/auto/sky" class="img-responsive" alt="Generic placeholder thumbnail">
          <h4>이름</h4>
          <span class="text-muted">어떤 내용</span>
        </div>
        </div>
      </div>

  
    </div>
  </div>
  <jsp:include page="footer.jsp"/>
</div>

</body>
</html>