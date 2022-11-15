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
	<!-- 카카오 로그인 -->
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	
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
	<form name="form">
		<input type="hidden" name="name"/>
		<input type="hidden" name="snsID"/>
		<input type="hidden" name="phone"/>
		<input type="hidden" name="email"/>
		<input type="hidden" name="gender"/>
		<input type="hidden" name="dob"/>
		<input type="hidden" name="snsImg"/>
		<input type="hidden" name="token"/>
	</form>
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
							<input type="text" class="form-control" placeholder="아이디" id="id" name="id" value="ysw">
							<br>
							<input type="password" class="form-control" placeholder="비밀번호" id="pwd" name="pwd" value="111">
						</div>
					</div>
					<br><br>
					<%-- sessSeq : <c:out value="${sessSeq }"/><br>
					sessId : <c:out value="${sessId }"/><br> --%>
					<div class="row justify-content-center">
						<button class="btn1" type="button" id="loginbtn"><b>로그인</b></button>
					</div>
				</div>
				<br>
				<div class="container">
					<h6><b>간편로그인</b></h6>
					<br>
					<div class="row justify-content-center">
						<div class="col-1">
							<img src="../resources/image/naver.png" style="width:40px;">
						</div>
						<div class="col-1">
							<img src="../resources/image/kakao.png" id="kakaoLogin" style="width:40px;">
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
					<a href="join"><p>회원가입</p></a>
				</div>
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
						location.href = "/item/mainPage";
					} else {
						alert("일치하는 회원정보가 없습니다");
					}
				}
			});
		});
	
	</script>
	
	<script type="text/javascript">
	
	Kakao.init('fd23c44e522eb4a174fd81bfe4833f36'); // test 용
	console.log(Kakao.isInitialized());
/*     	Kakao.init('ec2655da82c3779d622f0aff959060e6');
	console.log(Kakao.isInitialized()); */
	
	$("#kakaoLogin").on("click", function() {
		/* Kakao.Auth.authorize({
		      redirectUri: 'http://localhost:8080/member/kakaoCallback',
		    }); */
		
		Kakao.Auth.login({
		      success: function (response) {
		        Kakao.API.request({
		          url: '/v2/user/me',
		          success: function (response) {
		        	  
		        	  var accessToken = Kakao.Auth.getAccessToken();
		        	  Kakao.Auth.setAccessToken(accessToken);

		        	  var account = response.kakao_account;
		        	  
		        	  console.log(response)
   		        	  console.log("email : " + account.email);
   		        	  console.log("name : " + account.name);
   		        	  console.log("nickname : " + account.profile.nickname);
   		        	  console.log("picture : " + account.profile.thumbnail_image_url);
   		        	  console.log("picture : " + account.gender);
					  console.log("picture : " + account.birthyear);
   		        	  console.log("picture : " + account.birthday);
   		        	  console.log("picture : " + account.birthday.substring(0,2) + "-" + account.birthday.substring(2,account.birthday.length));
	        	  
		        	  $("input[name=snsID]").val("카카오");
	  	        	  $("input[name=name]").val(account.profile.nickname);
	  	        	  $("input[name=phone]").val(account.profile.phone_number);
	  	        	  $("input[name=email]").val(account.email);
	  	        	  $("input[name=dob]").val(account.birthyear + "-" + account.birthday.substring(0,2) + "-" + account.birthday.substring(2,account.birthday.length));
	  	        	  $("input[name=snsImg]").val(account.profile.thumbnail_image_url);
	  	        	  $("input[name=token]").val(accessToken);
  	        	  
  	        	  if (account.gender === "male") {
  	        		  $("input[name=gender]").val(43);
          		  } else {
          			  $("input[name=gender]").val(44);
     			  } 
  	        	  
  	        	 /*  $("form[name=form]").attr("action", "/member/kakaoLoginProc").submit(); */
				
  	        	  $.ajax({
					async: true
					,cache: false
					,type:"POST"
					,url: "/member/kakaoLoginProc"
					,data: {"name": $("input[name=name]").val(), "snsID": $("input[name=snsID]").val(), "phone": $("input[name=phone]").val(), "email": $("input[name=email]").val(), "gender": $("input[name=gender]").val(), "dob": $("input[name=dob]").val(), "snsImg": $("input[name=snsImg]").val(), "token": $("input[name=token]").val()}
					,success : function(response) {
						if (response.rt == "fail") {
							alert("아이디와 비밀번호를 다시 확인 후 시도해 주세요.");
							return false;
						} else {
							window.location.href = "/item/mainPage";
						}
					},
					error : function(jqXHR, status, error) {
						alert("알 수 없는 에러 [ " + error + " ]");
					}
				});
		          },
		          fail: function (error) {
		            console.log(error)
		          },
		        })
		      },
		      fail: function (error) {
		        console.log(error)
		      },
		    })
	});
		
	</script>


<!-- end -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/7d63ec3c0a.js" crossorigin="anonymous"></script>
</body>
</html>