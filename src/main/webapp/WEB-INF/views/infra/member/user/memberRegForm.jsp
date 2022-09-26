<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="false" %>
<html> 
<head>
	<title>회원가입</title>
	<script src="https://kit.fontawesome.com/15c84217dd.js" crossorigin="anonymous"></script>
	<!-- Bootstrap CSS -->
	<link href="/resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap extra CSS -->    
    <link href="/resources/xdmin/css/bootstrap/sidebars.css" rel="stylesheet">
    <!-- jquery ui CSS -->    
    <link href="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css" rel="stylesheet">
    <!-- user css -->
    <link rel="stylesheet" href="/resources/xdmin/css/commonXdmin.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link href="http://images.coocha.co.kr/static/dev/images/common/common/ico_favicon.ico" rel="icon" type="image/x-icon" />
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fd23c44e522eb4a174fd81bfe4833f36&libraries=services"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- 	
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
 -->	
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
		color : white;
		margin: 0 0 0 250px;
	}
	
	body {
		font-family: 'MICEGothic Bold';
	}
	
	h2 {
		text-align : center;
		color : white;
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
		background-image: url('../resources/image/logbg.jpg');
		background-repeat: no-repeat;
		background-size : cover;
		width : 100%;
		height : auto;
		background-attachment : scroll;
	}

	.container {
		margin : 5% 0;
	}
	
	.aaa {
		margin : 0 30%;
	}
 	
	.abc {
		background-color: rgba(255,255,255,0.5);
	}

	h2, #loginbutton {
		font-weight : bold;
	}
	
	h6 {
		color : white;
		font-weight : bold;
	}
	
	input, select {
		height: 50px;
	}
	
	select {
		display: inline;
	}
	
	.btn-group {
		width : 400px;
		font-weight : bold;
	}
	
	#accordionFlushExample {
		border-radius : 4px;
		border : 1px solid lightgray;
	}
	
	.btn {
		background-color: blueviolet; 
		color: white; 
		width : 740px; 
		height: 50px; 
		float : center;
		margin : 5px;
	}
	
	.form-select {
		color: gray;
	}
	
	#inputphone {
		width: 55%; 
		display: inline; 
		margin: 0 0 0 1%;
	}
	
	#cczipcode, #findaddress, #ccaddress, #resetbtn,
	#ccdetailAddress, #ccextraAddress, #ccLat, #ccLng {
		margin: 0 0 1% 0;
	}
	
	#findaddress {
		border : none;
		background-color : blueviolet;
		color : white;
		border-radius : 6px;
		width : 150px;
		height : 50px;
		margin : 0 0 2px 0;
	}
	
	#resetbtn {
		border: none;
		background-color : white;
		color : blueviolet;
		border-radius : 6px;
		width : 50px;
		height : 50px;
	}
	
</style>
	
<body>

	<div class="abc">
	<br><br>
		<a href="/"><h1>coocha</h1></a>
		
		<br>
		<div class="aaa">
			<div class="container">
				<h2><b>JOIN</b></h2>
				<br>
				<h6>아이디</h6>
				<input type="text" class="form-control" id="inputid" placeholder="아이디를 입력해주세요">
				<br>
				<h6>비밀번호</h6>
				<input type="password" class="form-control" id="inputpwd" placeholder="비밀번호를 입력해주세요">
				<br>
				<h6>비밀번호 확인</h6>
				<input type="password" class="form-control" id="inputpwd" placeholder="비밀번호를 다시 한번 입력해주세요">
				<br>
				<h6>이름</h6>
				<input type="text" class="form-control" id="inputname" placeholder="이름을 입력해주세요">
				<br>
				<h6>생년월일</h6>
				<input type="text" class="form-control" id="inputdob" placeholder="생년월일 8자리 (ex. 20220101)">
				<br>
				<h6>휴대폰번호</h6>
				<select class="form-select" style="width: 15%; display: inline">
					<option selected>통신사</option>
					<option value="1">SKT</option>
					<option value="2">KT</option>
					<option value="3">LG</option>
				</select>
				<input type="text" class="form-control" id="inputphone" placeholder="ex. 010-0000-0000">
				<br><br>
				<h6 style="color: black">이메일</h6>
				<input type="email" class="form-control" id="inputemail" placeholder="이메일을 입력해주세요">
				<br>
				<h6><b>주소</b></h6>
				<div class="row">
					<div class="col-3">
						<input type="text" class="form-control" id="cczipcode" placeholder="우편번호" disabled>
					</div>
					<div class="col-1">
						<button type="button" id="resetbtn"><i class="fa-solid fa-rotate-left"></i></button>
					</div>
					<div class="col-5">
						<button type="button" id="findaddress">우편번호 찾기</button>
					</div>
				</div>
				<div class="col">
					<input type="text" class="form-control" id="ccaddress" placeholder="도로명 주소" disabled>
				</div>
				<div class="row">
					<div class="col-9">
						<input type="text" class="form-control" id="ccdetailAddress" placeholder="상세주소">
					</div>
					<div class="col-3">
						<input type="text" class="form-control" id="ccextraAddress" placeholder="참고항목" disabled>
					</div>
				</div>
				<div class="row">
					<div class="col-4">
						<input type="text" class="form-control" name="ccLat" id="ccLat" placeholder="위도" disabled>
					</div>
					<div class="col-4">
						<input type="text" class="form-control" name="ccLng" id="ccLng" placeholder="경도" disabled>
					</div>
				</div>
				
			</div>
<!-- 			
			<div class="accordion accordion-flush" id="accordionFlushExample" width="150" height="100">
				<div class="accordion-item">
					<h2 class="accordion-header" id="flush-headingOne">
						<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
						<i class="fa-solid fa-square-check"></i> &nbsp;쿠차 가입 전체 약관에 동의합니다.
						</button>
					</h2>
					<div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
						<div class="accordion-body">
						<i class="fa-solid fa-square-check"></i> &nbsp;서비스 이용약관(필수) 
						<br><i class="fa-solid fa-square-check"></i> &nbsp;위치정보 이용약관(필수) 
						<br><i class="fa-solid fa-square-check"></i> &nbsp;개인정보 취급방침(필수)
						</div>
					</div>
				</div>
			</div>
 -->	
 		
			<div class="d-grid" id="loginbutton" style="margin-top: 5rem">
				<a href="Regsuccess">
					<button class="btn" type="button"><b>회원가입</b></button>
				</a>
			</div>
			<br><br>
		</div>
	</div>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script type="text/javascript">
	
	var goUrlInst = "/member/memberInst";
	
	

	$("#findaddress").on("click", function() {
		here();
	});
	
	function here() {
	    new daum.Postcode({
	          oncomplete: function(data) {
        	    var addr = '';
	  		    var extraAddr = '';

				if (data.userSelectedType === 'R') { 
	                  addr = data.roadAddress;
	              } else { 
	                  addr = data.jibunAddress;
	              }

	              if(data.userSelectedType === 'R'){
	                  if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                      extraAddr += data.bname;
	                  }
	                  if(data.buildingName !== '' && data.apartment === 'Y'){
	                      extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                  }
	                  if(extraAddr !== ''){
	                      extraAddr = ' (' + extraAddr + ')';
	                  }
	                  document.getElementById("ccextraAddress").value = extraAddr;
	              
	              } else {
	                  document.getElementById("ccextraAddress").value = '';
	              }

	              document.getElementById('cczipcode').value = data.zonecode;
	              document.getElementById('ccaddress').value = addr;
	              document.getElementById('ccdetailAddress').focus();
	              
	              geocoder.addressSearch(addr, callback);
				}
	    
	    }).open();
	}
	
	var geocoder = new kakao.maps.services.Geocoder();
	
	var callback = function(result, status) {
		if (status === kakao.maps.services.Status.OK) {
			console.log(result);
			$("input[name=ccLat]").val(result[0].x);
			$("input[name=ccLng]").val(result[0].y);
		}
	};
	
	
	$("#resetbtn").on("click", function() {
		$("#cczipcode").val('');
		$("#ccaddress").val('');
		$("#ccdetailAddress").val('');
		$("#ccextraAddress").val('');
		$("#ccLat").val('');
		$("#ccLng").val('');
	});
	
	
</script>
</body>
</html>