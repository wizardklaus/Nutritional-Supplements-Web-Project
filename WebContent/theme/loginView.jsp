<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>로그인</title>
		<meta name="generator" content="Bootply" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<!--[if lt IE 9]>
			<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		<link href="css/styles.css" rel="stylesheet">
	</head>
	<body>
	
<!--login modal-->


<div id="loginModal" class="modal show" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog">
  <div class="modal-content">
      <div class="modal-header">
          <h1 class="text-center">Login</h1>
      </div>
      <div class="modal-body">
          <form class="form col-md-12 center-block" action="../login" method = "post">
            <div class="form-group">
              <input type="text" name = "id" class="form-control input-lg" placeholder="Email" size = "100">
            </div>
            <div class="form-group">
              <input type="password" name = "pwd" class="form-control input-lg" placeholder="Password" size = "100">
            </div>
            <div class="form-group">
       
              <button class="btn btn-primary btn-lg btn-block">LOGIN</button>
              <span class="pull-right">
	<br><br>
            </div>
          </form>
      </div>
      <div class="modal-footer">
          <div class="col-md-12">
		  </div>	
      </div>
  </div>
  </div>
</div>
	
	</div>
	<div class="fff">
	
	</div>
	</body>
	
</html>