<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true"%>
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
	
	.backimage {
		background-image: url("../resources/image/logbg.jpg");
		background-repeat: no-repeat;
		background-size : cover;
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
	
	
	h2 {
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
	<div class="backimage">
		<div class="abc">
			<br><br>
			<a href="/item/mainPage"><h1>coocha</h1></a>
			<br><br><br>
			<div class="aaa">
				<div class="container">
					<br><br>
					<h2><b>LOGIN</b></h2>
					<br>
					<div class="row justify-content-center">
						<div class="col-7">
							<input type="text" class="form-control" placeholder="아이디" id="id" name="id" value="kjy">
							<br>
							<input type="password" class="form-control" placeholder="비밀번호" id="pwd" name="pwd" value="123">
						</div>
					</div>
					<br><br>
					sessSeq : <c:out value="${sessSeq }"/><br>
					sessId : <c:out value="${sessId }"/><br>
					<div class="row justify-content-center">
						<button class="btn1" type="button" id="loginbtn"><b>로그인</b></button>
					</div>
				</div>
				<br>
				<br><br><br>
			</div>
		</div>
	</div>

	<script type="text/javascript">
	
	$("#loginbtn").on("click", function(){
		
		/* if(validation() == false) return false; */
		
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			/* ,dataType:"json" */
			,url: "/member/loginProc"
			/* ,data : $("#formLogin").serialize() */
			,data : { "id" : $("#id").val(), "pwd" : $("#pwd").val()}
			,success: function(response) {
				if(response.rt == "success") {
					location.href = "/member/userLogin";
				} else {
					alert("일치하는 회원정보가 없습니다");
				}
			}
		});
	});
	
	
	</script>


<!-- end -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/7d63ec3c0a.js" crossorigin="anonymous"></script>
</body>
</html>