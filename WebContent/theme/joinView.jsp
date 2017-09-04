<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
	
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">	

	<meta name="description" content="">
	<meta name="author" content="">

    <!-- **Favicon** -->
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
    
    <!-- **CSS - stylesheets** -->
    <link id="default-css" href="style.css" rel="stylesheet" media="all" />
    <link href="css/shortcode.css" rel="stylesheet" type="text/css" />
 
    <!-- **Additional - stylesheets** -->
    <link rel="stylesheet" href="css/responsive.css" type="text/css" media="all"/>
    <link href="css/animations.css" rel="stylesheet" media="all" />
    <link id="skin-css" href="skins/red/style.css" rel="stylesheet" media="all" />
    <link rel="stylesheet" href="css/meanmenu.css" type="text/css" media="all"/>
    <link rel="stylesheet" type="text/css" href="css/pace-theme-loading-bar.css" />
        
    <!-- **Font Awesome** -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    
    <!-- **Google - Fonts** -->
    <link href='http://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,500,300,700,900' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=PT+Serif:400,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
    
    <!--[if IE 7]>
    <link rel="stylesheet" href="css/font-awesome-ie7.min.css" />
    <![endif]-->
    

<html lang="ko">
<head>
<meta http-equiv="content-type" content="text/html;charset=UTF-8">
<!-- <meta http-equiv="X-UA-Compatible" content="IE=edge"> -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>회원가입</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css" rel="stylesheet">

<style type ="text/css">
/* CSS used here will be applied after bootstrap.css */

.navbar {
background:#FFFFFF;
}
.container{
margin-left:450px;
}
.navbar .navbar-center {
  display: inline-block;
  float: none;
  vertical-align: top;
  text-align: center;
}

#page_footer {
height: 60px;
background: #f5f5f5;
}
.footer_text{
margin: 20px 0;
color: #777;
}
</style>

<html>
	
	<!--  회원가입 폼 -->
	<title>회원가입</title>
	<body>
<div class="contentwrap">
  <article class="container">
    <div class="page-header">
	  <h1>회원가입</h1>
    </div>
    <form class="form-horizontal" action = "../join" method = "post">
    <div class="form-group">
    <label for="inputEmail" class="col-sm-2 control-label">ID</label>
    <div class="col-sm-6">
    <input type="text" name="id" class="form-control" placeholder="ID">
    </div>
    </div>
    <div class="form-group">
    <label for="inputPassword" class="col-sm-2 control-label">비밀번호</label>
    <div class="col-sm-6">
    <input type="password" name = "pwd" class="form-control" placeholder="비밀번호">
    <class="help-block">숫자, 특수문자 포함 8자 이상
    </div>
    </div>
       
    <div class="form-group">
    <label for="inputName" class="col-sm-2 control-label">이름</label>
    <div class="col-sm-6">
    <input type="text" class="form-control" name="uname" placeholder="유저이름">
    </div>
    </div>
    
    <div class="form-group">
    <label for="inputDate" class="col-sm-2 control-label">생년월일</label>
    <div class="col-sm-6">
    <input type="text" class="form-control" name="ubirth" placeholder="생년월일">
    </div>
    </div>
    
    <div class="form-group">
    <label for="inputADDR" class="col-sm-2 control-label">주소</label>
    <div class="col-sm-6">
    <input type="text" class="form-control" name="uaddr" placeholder="주소">
    </div>
    </div>
    
    <div class="form-group">
    <label for="inputMobile" class="col-sm-2 control-label">휴대폰번호</label>
    <div class="col-sm-4">
    <input type="text" class="form-control" name="umobile" placeholder="휴대폰번호">
    </div>
    </div>
      
    <div class="form-group">
    <label for="inputGender" class="col-sm-2 control-label">성별</label>
    <div class="col-sm-4">
    <label><input type="checkbox" class="form-control" name="ugender" value = "남">남</label>
    <label><input type="checkbox" class="form-control" name="ugender" value = "여">여</label>
    </div>
    </div>
          
    <div class="form-group">
    <label for="inputeffect1" class="col-sm-2 control-label">관심있는 효능을 최대 3가지 골라주세요</label>
    <div class="col-sm-4">
    <label></label><input type="checkbox" class="form-control" name="effect" value="간">간</label>
    <label></label><input type="checkbox" class="form-control" name="effect" value="관절/뼈">관절/뼈</label>
    <label></label><input type="checkbox" class="form-control" name="effect" value="눈/시력보호">눈/시력보호</label>
    <label></label><input type="checkbox" class="form-control" name="effect" value="다이어트">다이어트</label>
    <label></label><input type="checkbox" class="form-control" name="effect" value="단백질">단백질</label>
    <label></label><input type="checkbox" class="form-control" name="effect" value="두뇌/집중력">두뇌/집중력</label>
    <label></label><input type="checkbox" class="form-control" name="effect" value="소화/위/장">소화/위/장</label>
    <label></label><input type="checkbox" class="form-control" name="effect" value="스트레스/우울">스트레스/우울</label>
    <label></label><input type="checkbox" class="form-control" name="effect" value="피로">피로</label>
    <label></label><input type="checkbox" class="form-control" name="effect" value="피부/탈모">피부/탈모</label>
    <label></label><input type="checkbox" class="form-control" name="effect" value="항산화">항산화</label>
    <label></label><input type="checkbox" class="form-control" name="effect" value="혈액순환">혈액순환</label>
    </div>
    </div>
    

 	<!-- <p><p>
    <input type="checkbox" name="chk_info" value="효능1">효능1
    <input type="checkbox" name="chk_info" value="효능2">효능2
    <input type="checkbox" name="chk_info" value="효능3">효능3
    <input type="checkbox" name="chk_info" value="효능3">효능4
    <input type="checkbox" name="chk_info" value="효능3">효능5
    <input type="checkbox" name="chk_info" value="효능3">효능6
    <input type="checkbox" name="chk_info" value="효능3">효능7
    </div>
      </div> -->


    <label for="inputName" class="col-sm-2 control-label"></label>
    <div class="col-sm-6">
      <button type="submit" class="btn btn-primary">회원가입</button>
    </div>
    </div>
    </form>
  </article>
</div>

	</body>
</head>
</html>