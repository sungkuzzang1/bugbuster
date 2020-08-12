<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Bug Buster</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link href="${path}/resources/css/common.css" rel="stylesheet"/>
<link>
</head>

<style>
.container{position: absolute;width:600px;height:720px;left:0;right:0;top:0;bottom:0;margin:auto}
.content{width:600px;margin:0 auto;box-sizing:border-box;padding:60px 100px;background:#eee}
.logo_wrap{text-align:center;margin-bottom:30px}
.id_pw_area > div{margin-bottom:15px}
.id_pw_area > div:last-child{margin-bottom:0}
.id_pw_area .idpw_input{width:100%;height:45px;border:0;font-size:15px;padding:15px;box-sizing:border-box;color:#000}
.id_pw_area .idpw_btn{border:0;outline:0;background:#000;color:#fff;font-size:15px;height:45px;line-height:45px;width:100%}

.idpw_link_area{margin-top:20px}
.idpw_link_area > p{margin-bottom:5px}
</style>

<body>
	<div id="wrap">
		<div class="container">
			<div class="logo_wrap">
				<h1><img src="${path}/resources/images/logo.png"></h1>
			</div>
			<div class="content">				
				<div class="login_wrap">
					<form action="" method="post">
						<div class="id_pw_area">
							<div class="id_wrap">
								<label for="userid" class="hide_txt">아이디</label>
								<input type="text" name="userid" id="userid" class="idpw_input" placeholder="id">
							</div>
							<div class="pw_wrap">
								<label for="userid" class="hide_txt">비밀번호</label>
								<input type="password" name="userid" id="userid" class="idpw_input" placeholder="pw">
							</div>
							<div class="idpwbtn_wrap">
								<input type="submit" value="sign in" class="idpw_btn">
							</div>
						</div>
					</form>
					<div class="idpw_link_area">
						<p><a href="#">create an account</a></p>
						<p><a href="#">forgot my id</a></p>
						<p><a href="#">forgot my pw</a></p>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<script>
		$(document).ready(function() {
		  $('body').css('display', 'none');
		  $('body').fadeIn(2000);

		  $('.link').click(function() {
		    event.preventDefault();

		    newLocation = this.href;
		    $('body').fadeOut(1000, newPage);
		  });

		  function newPage() {
		    window.location = newLocation;
		  }
		});
	</script>
</body>
</html>