<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="false" %>
<html> 
<head>
	<title>Login</title>
	<script src="https://kit.fontawesome.com/15c84217dd.js" crossorigin="anonymous"></script>
	<!-- Bootstrap CSS -->
	<link href="/resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap extra CSS -->    
    <link href="/resources/xdmin/css/bootstrap/sidebars.css" rel="stylesheet">
    <!-- jquery ui CSS -->    
    <link href="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css" rel="stylesheet">
    <!-- user css -->
    <link rel="stylesheet" href="/assets/css/coocha-member.min.css?ver=202209131027">
	<link rel="stylesheet" href="/assets/css/sub.css?ver=202209131027">
    <link rel="stylesheet" href="/resources/xdmin/css/commonXdmin.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<link href="http://images.coocha.co.kr/static/dev/images/common/common/ico_favicon.ico" rel="icon" type="image/x-icon" />
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

<style type="text/css">
	
	@font-face {
    font-family: 'GilbeotRainbow';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2112@1.0/GilbeotRainbow.woff') format('woff');
    font-weight: normal;
    font-style: normal;
	}
	
	@font-face {
	    font-family: 'MICEGothic Bold';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2206-01@1.0/MICEGothic Bold.woff2') format('woff2');
	    font-weight: 700;
	    font-style: normal;
	}
	
	h1 {
		font-family: 'GilbeotRainbow';
		margin: 0 0 0 250px;
		color : white;
	}
	
	body {
		font-family: 'MICEGothic Bold';
	}
	
	h2 {
		text-align : center;
		color: white;
	}
	
	a:link {
		color:black;
		text-decoration: none;
	}
	a:visited {
		color:black;
		text-decoration: none;
	}
	a:hover {
		color:blueviolet;
		text-decoration: none;
	}
	
	body {
		background-image: url("../resources/image/logbg.jpg");
		background-repeat: no-repeat;
		background-size : cover;
		width : 100%;
		height : auto;
	}

	.container {
		margin : 5% 0;
		float : center;
	}
	
	.aaa {
		text-align : center;
		margin : 0 30%;
	}
	
	.abc {
		background-color : rgba(255,255,255,0.5);
	}
	
	
	h2, #loginbutton {
		font-weight : bold;
	}
	
	button {
		margin : 5px;
	}
	
	.btn1 {
		background-color: blueviolet; 
		color: white;
		width : 90px; 
		height: 50px;
		border: none;
		border-radius : 6px;
	}
	
	input {
		height: 50px;
	}
	
	h6 {
		color : white;
		text-align : center;
	}
	
	.box {
		margin : 0 22%;
		width : 400px;
		height : 70px;
		background-color: rgba( 255, 255, 255, 0.5 );
		border: none;
		border-radius : 6px;
		text-align : center;
	}
	
	.box p {
		display : inline;
		font-size : 15px;
		margin: 0 1%;
		color : gray;
		font-weight : bold;
	}
</style>
	
<body>

<!-- start -->

	<div class="abc">
		<br><br>
		<a href="/"><h1>coocha</h1></a>
		<br><br><br>
		<div class="aaa">
			<div class="container">
				<br><br>
				<h2><b>LOGIN</b></h2>
				<br>
				<div class="row justify-content-center">
					<div class="col-7">
						<input type="text" class="form-control" id="inputid" value="kjy" placeholder="아이디">
						<br>
						<input type="password" class="form-control" id="inputpwd" value="12345" placeholder="비밀번호">
					</div>
				</div>
				<br><br>
				<div class="row justify-content-center">
					<a href="/">
						<button class="btn1" type="button"><b>로그인</b></button>
					</a>
				</div>
			</div>
			<br>
			<div class="container">
				<h6><b>간편로그인</b></h6>
				<br>
				<div class="row justify-content-center">
					<div class="col-1">
						<a href="https://nid.naver.com/nidlogin.login?oauth_token=fnc77UPYrVvzZmFqE6&consumer_key=LY2kzz66QOIl_rYOcwEE&logintp=oauth2&nurl=https%3A%2F%2Fnid.naver.com%2Foauth2.0%2Fauthorize%3Fresponse_type%3Dtoken%26state%3Dc2cf4fff-4b41-4c46-8978-38fad9d416c3%26client_id%3DLY2kzz66QOIl_rYOcwEE%26redirect_uri%3Dhttps%253A%252F%252Fmember.coocha.co.kr%252Fmember%252Flogin%252Fsnscallback.do%26locale%3Dko_KR%26inapp_view%3D%26oauth_os%3D&locale=ko_KR&inapp_view=&svctype=">
						<img src="../resources/image/naver.png" style="width:40px;"></a>
					</div>
					<div class="col-1">
						<a href="https://accounts.kakao.com/login?continue=https%3A%2F%2Fkauth.kakao.com%2Foauth%2Fauthorize%3Fproxy%3DeasyXDM_Kakao_1umprdwc0zu_provider%26ka%3Dsdk%252F1.43.0%2520os%252Fjavascript%2520sdk_type%252Fjavascript%2520lang%252Fko-KR%2520device%252FWin32%2520origin%252Fhttps%25253A%25252F%25252Fmember.coocha.co.kr%26origin%3Dhttps%253A%252F%252Fmember.coocha.co.kr%26response_type%3Dcode%26redirect_uri%3Dkakaojs%26state%3Dv9t01oe252pj5m55naeq%26client_id%3De080e5f8a171c5bd650ef6d2efe60fd3&talk_login=hidden">
						<img src="../resources/image/kakao.png" style="width:40px;"></a>
					</div>
					<div class="col-1">
						<img src="../resources/image/google.png" style="width:40px;">
					</div>
					<div class="col-1">
						<img src="../resources/image/facebook.png" style="width:40px;">
					</div>
				</div>
			</div>
			<br><br>
			<div class="box">
				<br>
				<a href="findID"><p>아이디 찾기 &nbsp;｜</p></a>
				<a href="findPW"><p>비밀번호 찾기 &nbsp;｜</p></a>
				<a href="memberRegForm"><p>회원가입</p></a>
			</div>
			<br><br><br>
		</div>
 		
	</div>




<!-- end -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/7d63ec3c0a.js" crossorigin="anonymous"></script>
</body>
</html>