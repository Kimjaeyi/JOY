<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="false" %>
<html> 
<head>
	<title>findPW</title>
	<script src="https://kit.fontawesome.com/15c84217dd.js" crossorigin="anonymous"></script>
	<!-- Bootstrap CSS -->
	<link href="/resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap extra CSS -->    
    <link href="/resources/xdmin/css/bootstrap/sidebars.css" rel="stylesheet">
    <!-- jquery ui CSS -->    
    <link href="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css" rel="stylesheet">
    <!-- user css -->
    <link href="http://images.coocha.co.kr/static/dev/images/common/common/ico_favicon.ico" rel="icon" type="image/x-icon" />
    <link rel="stylesheet" href="/assets/css/sub.css?ver=202209131049">
    <link rel="stylesheet" href="/resources/xdmin/css/commonXdmin.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link rel="shortcut icon" type="image/x-icon" href="https://cdn.icon-icons.com/icons2/2091/PNG/512/settings_icon_128522.png">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
</head>

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
		float : left;
		margin: 0 0 0 250px;
	}
	
	h2 {
		text-align : center;
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
			color:mediumpurple;
			text-decoration: none;
	}
	
	.backimage {
		background-image: url('../resources/image/findbg.jpg');
		background-repeat: no-repeat;
		background-size : cover;
		background-position: 0 -200px;
		background-attachment : fixed;
	}

	.container {
		margin : 27% 0 0 0;
		float : center;
	}
	
	.aaa {
		text-align : center;
		margin : 0 30%;
	}
	
	.abc {
		background-color: rgba(255,255,255,0.5);
	}
	
	h2, #findbutton {
		font-weight : bold;
	}
	
	#findbutton {
		background-color: blueviolet; 
		color: white;
		width : 420px;
		height: 50px;
	}
	
	button {
		margin : 5px;
	}
	
	input {
		height: 50px;
	}
	
	a {
		text-align : center;
	}
	
	h2, h4, input, .btn, select {
    	font-family: 'MICEGothic Bold';
	}
	
	h4 {
		display: inline;
		font-weight : bold;
		margin : 0 3%;
	}
	
	#inputGroupSelect01, #inputphone {
		display : inline;
		float : center;
		margin : 0;
	}
	
	#inputGroupSelect02, #inputemail {
		display : inline;
		float : center;
		margin : 0;
	}
	
	#inputGroupSelect01 {
		width : 100px;
		height : 50px;
	}
	
	#inputGroupSelect02 {
		width : 150px;
		height : 50px;
	}
	
	#inputemail {
		width : 268px;
	}
	
	#inputphone {
		width : 318px;
	}

</style>
	
<body>

<!-- start -->
	<div class="backimage">
		<div class="abc">
			<br><br>
			<a href="/">
				<h1>coocha</h1>
			</a>
			<br><br><br>
			<div class="aaa">
				<div class="container">
					<h2><b>FIND ID / PW</b></h2>
					<br><br><br>
					<a href="findID"><h4 style="color: lightgray">아이디 찾기</h4></a>
					<a href="findPW"><h4>비밀번호 찾기</h4></a>
					<br><br><br>
					<div class="row justify-content-center">
						<div class="col-7">
							<input type="text" class="form-control" id="inputID" placeholder="아이디">
							<br>
						</div>
					</div>
					<div class="ccc">
						<select class="form-select" id="inputGroupSelect01">
							<option selected>선택</option>
							<option value="1">010</option>
							<option value="2">011</option>
							<option value="3">016</option>
							<option value="4">017</option>
							<option value="5">018</option>
							<option value="6">019</option>
						</select>
						<input type="text" class="form-control" id="inputphone" placeholder="휴대폰번호">
					</div>
					<br><br>
					<button class="btn" id="findbutton" type="button"><b>비밀번호 찾기</b></button>
					<br><br><br><br><br><br><br><br><br><br>
				</div>
			</div>
		</div>
	</div>