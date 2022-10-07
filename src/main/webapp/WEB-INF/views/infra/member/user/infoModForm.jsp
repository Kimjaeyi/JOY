<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>
<html> 
<head>
	<title>회원정보 수정</title>
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
	<link rel="stylesheet" href="http://images.coocha.co.kr/static/css/coocha.css?ver=2022091023"/>
	<link href="http://images.coocha.co.kr/static/dev/images/common/common/ico_favicon.ico" rel="icon" type="image/x-icon" />
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
</head>

<style type="text/css">
	
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
	
	input[type='text'], input[type='password'] {
		border: 1px solid #ced4da;
		border-radius: 0.375rem;
		line-height: 1.5;
	}
	
	.abc {
		margin : 10% 20%;
	}
	
	input, select, .form-check {
		height: 50px;
	}
	
	h3 {
		font-weight: bold;
		font-size: 25px;
	}
	
	h5, h6 {
		font-weight: bold;
	}
	
	h5 {
		margin: 6% 0;
	}
	
	.row {
		margin: 3% 0;
	}
	
	#zipcode, #findaddress, #addr1, #resetbtn,
	#addr2, #addr3, #ccLat, #ccLng {
		margin-bottom: 1%;
		margin-right: 1%;
	}
	
	#zipcode {
		width : 15%;
		display: inline;
	}
	
	#findaddress {
		border : none;
		background-color : #6900EF;
		color : white;
		border-radius : 6px;
		width : 150px;
		height : 50px;
	}
	
	#resetbtn {
		border: none;
		background-color : lightgray;
		color : blueviolet;
		border-radius : 6px;
		width : 50px;
		height : 50px;
	}
	
	#addr1 {
		width: 45%;
		display: inline;
	}
	
	#addr2 {
		width: 33%;
		display: inline;
	}
	
	#addr3 {
		width: 15%;
		display: inline;
	}
	
	.form-check-input:checked {
	    background-color: #6900EF;
	    border-color: #6900EF;
	}
	
	#backbtn, #savebtn {
		width: 80px; 
		height: 50px; 
		float: right; 
		border: none;
		border-radius: 4px;
		margin: 0 10px;
	}
	
	li {
		margin: 0 2%;
	}
	
	.inline h6, .inline h5, .inline input, .inline select {
		display : inline;
	}

</style>

<body>
	<form id="form" name="form" method="post">
	<!-- *Vo.jsp s -->
	<%@include file="memberVo.jsp"%>		<!-- #-> -->
	<!-- *Vo.jsp e -->
	<div class="header" style="left: 0px;">
        <div class="inner">
            <h1 class="logo">
                <a href="/item/mainPage"><span class="blind">COOCHA</span></a>
                <span class="title-category">카테고리</span>
            </h1>

            <div class="search">
                <div class="search-input"><input type="search" class="input"></div>
            </div>

            <div class="hamburger">
                <div class="hamburger-box">
                    <div class="hamburger-inner"></div>
                </div>
            </div>

            <ul class="gnb login">
				<li>
					<a href="/member/mypage" class="btn-my btn-layer-open"><span class="blind">MY</span></a>
					<div class="area-my-page area-gnb-layer">
					    <div class="title">MY PAGE</div>
					    <ul>
					        <li><div id="likeTab">내가 좋아요 한 상품</div></li>
					        <li><a href="javascript:void(0);" id="viewTab">내가 본 상품</a></li>
					        <li><a href="https://member.coocha.co.kr/member/join/myinfo.do">내 정보 수정</a></li>
					        <li class="logout"><a href="javascript:fn_logout('');">로그아웃</a></li>
					    </ul>
					</div>
				</li>
				<li><div class="btn-like"><span class="blind">좋아요</span></div></li>
				<li>
				    <div class="btn-sc btn-layer-open"><span class="blind">더보기</span></div>
				    <div class="area-servic-center area-gnb-layer">
				        <div class="title">고객센터</div>
				        <ul>
				            <li>공지사항</li>
				            <li>FAQ</li>
				            <li>1:1 문의</li>
				        </ul>
				    </div>
				</li>
			</ul>
        </div>
    </div>
    <br><br>
	<br>
	<div class="abc">
		<div class="row">
			<div class="col-3">
				<a href="/member/mypage"><h3 style="font-size: 25px; margin-bottom: 8%"><b>마이쿠차</b></h3></a>
				<br>
				<a href="/member/shipping"><h6 style="font-size: 18px; margin: 4% 0">주문배송조회</h6></a>
				<br>
				<a href="/member/infoModForm"><h6 style="color: #6900EF; font-size: 18px; margin: 4% 0">회원정보 수정</h6></a>
				<br>
				<a href="/member/changePW"><h6 style="font-size: 18px; margin: 4% 0">비밀번호 변경</h6></a>
				<br>
				<a href="/member/unregister"><h6 style="font-size: 18px; margin: 4% 0">회원 탈퇴</h6></a>
			</div>
			<div class="col-9">
				<h3>회원정보 수정</h3>
				<hr style="border: 2px solid black">
				<br>
				<div class="row">
					<div class="col-3">
						<h5>아이디</h5>
					</div>
					<div class="col-9">
						<input class="form-control" type="text" id="id" name="id" value="<c:out value="${user.id}"/>" style="color: #6900EF; width: 35%" readonly>
					</div>
				</div>
				<div class="row">
					<div class="col-3">
						<h5>비밀번호</h5>
					</div>
					<div class="col-9">
						<input type="password" class="form-control" id="pwd" name="pwd" style="width: 35%" value="<c:out value="${user.pwd}"/>" readonly>
					</div>
				</div>
				<div class="row">
					<div class="col-3">
						<h5>생년월일</h5>
					</div>
					<div class="col-9">
						<input class="form-control shDate" type="text" id="dob" name="dob" value="<c:out value="${user.dob}"/>" style="width: 35%">
					</div>
				</div>
				<div class="row">
					<div class="col-3">
						<h5>이메일</h5>
					</div>
					<div class="col-9">
						<input type="text" class="form-control" id="emailID" name="emailID" value="<c:out value="${user.emailID}"/>" style="width: 20%; display: inline">
						<select class="form-select" name="emailDomain" id="emailDomain" style="width: 38%; display: inline">
							<option selected>::이메일도메인::</option>
							<option value="8" <c:if test="${user.emailDomain eq 8}">selected</c:if>>@naver.com</option>
							<option value="9" <c:if test="${user.emailDomain eq 9}">selected</c:if>>@gmail.com</option>
							<option value="10" <c:if test="${user.emailDomain eq 10}">selected</c:if>>@hanmail.net</option>
							<option value="11" <c:if test="${user.emailDomain eq 11}">selected</c:if>>@daum.com</option>
							<option value="12" <c:if test="${user.emailDomain eq 12}">selected</c:if>>@nate.com</option>
							<option value="13" <c:if test="${user.emailDomain eq 13}">selected</c:if>>@coocha.com</option>
						</select>
					</div>
				</div>
				<div class="row">
					<div class="col-3">
						<h5>전화번호</h5>
					</div>
					<div class="col-9">
						<select class="form-select" name="telecom" id="telecom" style="width: 20%; display: inline">
							<option selected>::통신사::</option>
							<option value="5" <c:if test="${user.telecom eq 5}">selected</c:if>>SKT</option>
							<option value="6" <c:if test="${user.telecom eq 6}">selected</c:if>>KT</option>
							<option value="7" <c:if test="${user.telecom eq 7}">selected</c:if>>LG</option>
						</select>
						<input type="text" class="form-control" id="phone" name="phone" style="width: 35%; display: inline" placeholder="ex. 010-0000-0000" value="<c:out value="${user.phone}"/>">
					</div>
				</div>
				<div class="row">
					<div class="col-3">
						<h5>주소</h5>
					</div>
					<div class="col-9">
						<input type="text" class="form-control" id="zipcode" name="zipcode" placeholder="우편번호" style="display: inline; width: 20%" value="<c:out value="${user.zipcode}"/>" readonly>
						<button type="button" id="resetbtn"><i class="fa-solid fa-rotate-left"></i></button>
						<button type="button" id="findaddress">우편번호 찾기</button>
					</div>
				</div>
				<div class="row">
					<div class="col-3">
						<h5></h5>
					</div>
					<div class="col-9">
						<input type="text" class="form-control" id="addr1" name="addr1" placeholder="도로명 주소" value="<c:out value="${user.addr1}"/>" readonly>
						<input type="text" class="form-control" id="addr2" name="addr2" placeholder="상세주소" value="<c:out value="${user.addr2}"/>">
						<input type="text" class="form-control" id="addr3" name="addr3" placeholder="참고항목" value="<c:out value="${user.addr3}"/>" readonly>
					</div>
				</div>
				<div class="row">
					<div class="col-3">
						<h5>성별</h5>
					</div>
					<div class="col-9">
						<div class="form-check form-check-inline" name="gender">
							<input class="form-check-input" type="radio" name="gender" id="gender1" value="43" <c:if test="${user.gender eq 43 }"> checked</c:if>>
							<label class="form-check-label" for="gender1">남자</label>
						</div>
						<div class="form-check form-check-inline" name="gender">
							<input class="form-check-input" type="radio" name="gender" id="gender2" value="44" <c:if test="${user.gender eq 44 }"> checked</c:if>>
							<label class="form-check-label" for="gender2">여자</label>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-3">
						<h5>개인정보 유효기간</h5>
					</div>
					<div class="col-9">
						<div class="form-check form-check-inline" name="validity">
							<input class="form-check-input" type="radio" name="validity" id="validity1" value="45" <c:if test="${user.validity eq 45 }"> checked</c:if>>
							<label class="form-check-label" for="validity1">1년</label>
						</div>
						<div class="form-check form-check-inline" name="validity">
							<input class="form-check-input" type="radio" name="validity" id="validity2" value="46" <c:if test="${user.validity eq 46 }"> checked</c:if>>
							<label class="form-check-label" for="validity2">3년</label>
						</div>
						<div class="form-check form-check-inline" name="validity">
							<input class="form-check-input" type="radio" name="validity" id="validity3" value="47" <c:if test="${user.validity eq 47 }"> checked</c:if>>
							<label class="form-check-label" for="validity3">탈퇴 시 파기</label>
						</div>
					</div>
				</div>
				<br><br>
				<a href="mypage"><button type="button" id="backbtn" style="background-color: #F0F0F0"><b>취소</b></button></a>
				<button type="button" id="savebtn" style="background-color: #6900EF; color: white"><b>확인</b></button>
			</div>
		</div>
	</div>
	</form>
	<form name="formVo" id="formVo" method="post">
	<!-- *Vo.jsp s -->
	<%@include file="memberVo.jsp"%>		<!-- #-> -->
	<!-- *Vo.jsp e -->
	<br><br>
	<footer>
		<div class="footer">
			<div class="inner">
				<ul class="area-link">
					<li>앱다운로드</li>
					<li>회사소개</li>
					<li>고객센터</li>
					<li>서비스이용약관</li>
					<li>위치정보이용약관</a</li>
					<li><b>개인정보처리방침</b></li>
					<li>마케팅센터</li>
					<li>입점 및 광고 안내</li>
				</ul>
				<div class="area-text">
					<p>쿠차는 상품에 직접 관여하지 않으며 상품 주문, 배송 및 환불의 의무와 책임은 각 판매업체에 있습니다.</p>
				</div>
				<div class="area-bottom">
					<div class="info">
						<span>(주)제이와이케이</span> 
						<span>대표 김재이</span> 
						<span>사업자등록번호 123-45-67890</span>
					</div>
					<div class="address">
						<span>서울특별시 서초구 서초대로 77길 55, 3층</span> 
						<span>고객센터 cs_coocha@coocha.com</span> 
						<span>입점 · 광고 business@coocha.com</span>
					</div>
					<div class="copyright">
						<p>© 2022. SearchFy Inc. All Rights Reserved.</p>
					</div>
				</div>
			</div>
		</div>
	</footer>
	
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="/resources/js/validation.js"></script>
	
	<script type="text/javascript">
	
	var goUrlForm = "/member/infoModForm";
	var goUrlUpdt = "/member/infochange";
		
	var seq = $("input:hidden[name=seq]");
	var formVo = $("form[name=formVo]");
	
	var form = $("form[name=form]");
	
	$("#savebtn").on("click", function(){
   		form.attr("action", goUrlUpdt).submit();
	});
	
	$("#findaddress").on("click", function() {
		here();
	});
	
	$(document).ready(function() {
		$("input.shDate").datepicker();
	});
	
	$.datepicker.setDefaults({
		dateFormat : 'yy-mm-dd',
		prevText : '이전 달',
		nextText : '다음 달',
		monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월',
				'9월', '10월', '11월', '12월' ],
		monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월',
				'9월', '10월', '11월', '12월' ],
		dayNames : [ '일', '월', '화', '수', '목', '금', '토' ],
		dayNamesShort : [ '일', '월', '화', '수', '목', '금', '토' ],
		dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
		showMonthAfterYear : true,
		yearSuffix : '년'
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
	              
				}
	    
	    }).open();
	}
	
	$("#resetbtn").on("click", function() {
		$("#zipcode").val('');
		$("#addr1").val('');
		$("#addr2").val('');
		$("#addr3").val('');
		$("#ccLat").val('');
		$("#ccLng").val('');
	});
	
	</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/7d63ec3c0a.js" crossorigin="anonymous"></script>
</body>
</html>