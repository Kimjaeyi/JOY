<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>
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
	
	.backimage {
		background-image: url('../resources/image/logbg.jpg');
		background-repeat: no-repeat;
		background-size : cover;
		background-attachment : scroll;
	}
	
	body {
		font-family: 'MICEGothic Bold';
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

	h2, #regbtn {
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
	
	#phone {
		width: 55%; 
		display: inline; 
		margin: 0 0 0 1%;
	}
	
	#zipcode, #findaddress, #addr1, #resetbtn,
	#addr2, #addr3, #ccLat, #ccLng {
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
	
	.form-check-input:checked {
	    background-color: #6900EF;
	    border-color: #6900EF;
	}
	
</style>
	
<body>

<form id="form" name="form" method="post">
	<div class="backimage">
		<div class="abc">
		<br><br>
			<a href="/"><h1>coocha</h1></a>
			<br>
			<div class="aaa">
				<div class="container">
					<h2><b>JOIN</b></h2>
					<br>
					<h6>아이디</h6>
					<input type="hidden" id="idAllowedNy" name=idAllowedNy" value="0">
					<input type="text" class="form-control" id="id" name="id" placeholder="아이디를 입력해주세요" maxlength="20" value="<c:out value="${item.id}"/>">
					<c:if test="${not empty item.id}">readonly</c:if>
					<br>
					<h6>비밀번호</h6>
					<input type="password" class="form-control" id="pwd" name="pwd" placeholder="비밀번호를 입력해주세요" value="<c:out value="${item.pwd}"/>">
					<br>
					<h6>비밀번호 확인</h6>
					<input type="password" class="form-control" id="pwd2" name="pwd2" placeholder="비밀번호를 다시 한번 입력해주세요">
					<span id="alert-success" style="display: none; color: green; text-align: left;"><i class="fa-solid fa-check"></i> 비밀번호가 일치합니다.</span>
					<span id="alert-danger" style="display: none; color: red; text-align: left;"><i class="fa-solid fa-xmark"></i> 비밀번호가 일치하지 않습니다.</span>
					<br>
					<h6>이름</h6>
					<input type="text" class="form-control" id="name" name="name" placeholder="이름을 입력해주세요" value="<c:out value="${item.name}"/>">
					<br>
					<h6>생년월일</h6>
					<input type="text" class="form-control" id="dob" name="dob" placeholder="생년월일 8자리 (YYYY-MM-DD)" value="<c:out value="${item.dob}"/>">
					<br>
					<h6>휴대폰번호</h6>
					<select class="form-select" name="telecom" id="telecom" style="width: 15%; display: inline">
						<option selected>통신사</option>
						<option value="5" <c:if test="${item.telecom eq 5}">selected</c:if>>SKT</option>
						<option value="6" <c:if test="${item.telecom eq 6}">selected</c:if>>KT</option>
						<option value="7" <c:if test="${item.telecom eq 7}">selected</c:if>>LG</option>
					</select>
					<input type="text" class="form-control" id="phone" name="phone" placeholder="ex. 010-0000-0000" value="<c:out value="${item.phone}"/>">
					<br><br>
					<h6 style="color: black">이메일</h6>
					<input type="email" class="form-control" id="emailID" name="emailID" placeholder="이메일아이디를 입력해주세요" value="<c:out value="${item.emailID}"/>" style="width: 30%; display: inline">
					<select class="form-select" name="emailDomain" id="emailDomain" style="width: 30%; display: inline">
						<option selected>::이메일도메인::</option>
						<option value="8" <c:if test="${item.emailDomain eq 8}">selected</c:if>>@naver.com</option>
						<option value="9" <c:if test="${item.emailDomain eq 9}">selected</c:if>>@gmail.com</option>
						<option value="10" <c:if test="${item.emailDomain eq 10}">selected</c:if>>@hanmail.net</option>
						<option value="11" <c:if test="${item.emailDomain eq 11}">selected</c:if>>@daum.com</option>
						<option value="12" <c:if test="${item.emailDomain eq 12}">selected</c:if>>@nate.com</option>
						<option value="13" <c:if test="${item.emailDomain eq 13}">selected</c:if>>@coocha.com</option>
					</select>
					<br>
					<h6><b>주소</b></h6>
					<div class="row">
						<div class="col-3">
							<input type="text" class="form-control" id="zipcode" name="zipcode" placeholder="우편번호" readonly>
						</div>
						<div class="col-1">
							<button type="button" id="resetbtn"><i class="fa-solid fa-rotate-left"></i></button>
						</div>
						<div class="col-5">
							<button type="button" id="findaddress">우편번호 찾기</button>
						</div>
					</div>
					<div class="col">
						<input type="text" class="form-control" id="addr1" name="addr1" placeholder="도로명 주소" readonly>
					</div>
					<div class="row">
						<div class="col-9">
							<input type="text" class="form-control" id="addr2" name="addr2" placeholder="상세주소">
						</div>
						<div class="col-3">
							<input type="text" class="form-control" id="addr3" name="addr3" placeholder="참고항목" readonly>
						</div>
					</div>
					<div class="row">
						<div class="col-4">
							<input type="text" class="form-control" name="ccLat" id="ccLat" placeholder="위도" readonly>
						</div>
						<div class="col-4">
							<input type="text" class="form-control" name="ccLng" id="ccLng" placeholder="경도" readonly>
						</div>
					</div>
					<br>
					<h6><b>성별</b></h6>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="gender" id="gender1" value="43" <c:if test="${item.gender eq 43 }"> checked</c:if>>
						<label class="form-check-label" for="gender1">여자</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="gender" id="gender2" value="44" <c:if test="${item.gender eq 44 }"> checked</c:if>>
						<label class="form-check-label" for="gender2">남자</label>
					</div>
					<br><br>
					<h6><b>개인정보 유효기간</b></h6>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="validity" id="validity1" value="45" <c:if test="${item.validity eq 45 }"> checked</c:if>>
						<label class="form-check-label" for="validity1">1년</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="validity" id="validity2" value="46" <c:if test="${item.validity eq 46 }"> checked</c:if>>
						<label class="form-check-label" for="validity2">3년</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="validity" id="validity3" value="47" <c:if test="${item.validity eq 47 }"> checked</c:if>>
						<label class="form-check-label" for="validity3">탈퇴 시 파기</label>
					</div>
					<div class="d-grid" id="regbtn" style="margin-top: 5rem">
						<button class="btn" type="button" id="savebtn"><b>회원가입</b></button>
					</div>
					<br><br>
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
			</div>
		</div>
	</div>
</form>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="/resources/js/validation.js"></script>

<script type="text/javascript">
	
	var goUrlInst = "/member/memberJoin";
	
	var seq = $("input:hidden[name=seq]");
	
	var form = $("form[name=form]");
	
	$("#savebtn").on("click", function(){
   		form.attr("action", goUrlInst).submit();
	});

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
	                  document.getElementById("addr3").value = extraAddr;
	              
	              } else {
	                  document.getElementById("addr3").value = '';
	              }

	              document.getElementById('zipcode').value = data.zonecode;
	              document.getElementById('addr1').value = addr;
	              document.getElementById('addr2').focus();
	              
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
		$("#zipcode").val('');
		$("#addr1").val('');
		$("#addr2").val('');
		$("#addr3").val('');
		$("#ccLat").val('');
		$("#ccLng").val('');
	});
	
	checkNull = function (obj, value, message) {
		if(value == "" || value == null) {
			alert(message);
			obj.focus();
			return false;
		}
	}
	
	$("#savebtn").on("click", function() {

		if (!checkNull($("#name"), $("#name").val(), "이름은 필수 입력 사항입니다."))
			return false;
		
		if (!checkNull($("#id"), $("#id").val(), "아이디는 필수 입력 사항입니다."))
			return false;
		
		if (!checkNull($("#pwd"), $("#pwd").val(), "비밀번호는 필수 입력 사항입니다."))
			return false;
		
		if (!checkNull($("#pwd2"), $("#pwd2").val(), "비밀번호는 필수 입력 사항입니다."))
			return false;
		
		if (!checkNull($("#dob"), $("#dob").val(), "생년월일을 입력해 주세요."))
			return false;
		
		if (!checkNull($("#phone"), $("#phone").val(), "전화번호를 입력해 주세요."))
			return false;
		
		if (!checkNull($("#zipcode"), $("#zipcode").val(), "우편 번호를 입력해 주세요."))
			return false;
		
		if (!checkNull($("#addr1"), $("#addr1").val(), "도로명 혹은 지번 주소를 입력해 주세요."))
			return false;
		
		if (!checkNull($("#addr2"), $("#addr2").val(), "상세 주소를 입력해 주세요."))
			return false;
		
	});
	
	$("#id").on("focusout", function(){
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/member/idCheck"
			,data : { "id" : $("#id").val() }
			,success: function(response) {
				if(response.rt == "success") {
					document.getElementById("id").classList.add('is-valid');

					document.getElementById("idFeedback").classList.remove('invalid-feedback');
					document.getElementById("idFeedback").classList.add('valid-feedback');
					document.getElementById("idFeedback").innerText = "사용 가능합니다.";
					
					document.getElementById("idAllowedNy").value = 1;
					
				} else {
					document.getElementById("id").classList.add('is-invalid');
					
					document.getElementById("idFeedback").classList.remove('valid-feedback');
					document.getElementById("idFeedback").classList.add('invalid-feedback');
					document.getElementById("idFeedback").innerText = "사용 불가합니다.";
					
					document.getElementById("idAllowedNy").value = 0;
				}
			}
		});
	});
	
	$('#pwd').focusout(function () {
        var pwd1 = $("#pwd").val();
        var pwd2 = $("#pwd2").val();
  
        if ( pwd1 != '' && pwd2 == '' ) {
            null;
        } else if (pwd1 != "" || pwd2 != "") {
            if (pwd1 == pwd2) {
                $("#alert-success").css('display', 'inline-block');
                $("#alert-danger").css('display', 'none');
            } else {
                $("#alert-success").css('display', 'none');
                $("#alert-danger").css('display', 'inline-block');
            }
        }
    });

</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/7d63ec3c0a.js" crossorigin="anonymous"></script>
</body>
</html>