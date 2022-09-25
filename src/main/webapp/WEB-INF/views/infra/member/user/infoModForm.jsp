<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="false" %>
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
		margin : 10% 15%;
	}
	
	input, select, .form-check {
		height: 50px;
	}
	
	h3 {
		font-weight: bold;
		font-size: 25px;
	}
	
	h5 {
		font-weight: bold;
		margin: 4% 20% 4% 5%;
	}
	
	.form-control {
		margin: 0 0 27px 0;
	}
/* 	
	.form-check-input {
		background: #6900EF;
	}
 */	
	button {
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

	<div class="header" style="left: 0px;">
        <div class="inner">
            <h1 class="logo">
                <a href="/"><span class="blind">COOCHA</span></a>
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
		<h3>회원정보 수정</h3>
		<hr style="border: 2px solid black">
		<br>
		<div class="row justify-content-center">
			<div class="col-3">
				<br>
				<h5>아이디</h5>
				<br><br>
				<h5>현재 비밀번호</h5>
				<br><br>
				<h5>새 비밀번호</h5>
				<br><br>
				<h5>새 비밀번호 확인</h5>
				<br><br>
				<h5>이메일</h5>
				<br><br>
				<h5>전화번호</h5>
				<br><br>
				<h5>수신여부</h5>
			</div>
			<div class="col-9">
				<br>
				<h6 style="color: #6900EF">kjy</h6>
				<br><br>
				<input type="password" class="form-control" style="width: 30%">
				<input type="password" class="form-control" style="width: 30%; display:inline">
				<p style="display:inline; font-size:12px; color: gray">&nbsp;&nbsp;8~15자 이내의 영문 대소문자, 숫자 및 특수문자 2가지 이상 조합으로 입력하세요.</p>
				<input type="password" class="form-control" style="width: 30%">
				<input type="text" class="form-control" value="kjy@naver.com" style="width: 30%">
				<select class="form-select" id="selbox" style="display: inline; width: 10%; margin: -2.7% 0 0 0">
					<option selected>::통신사::</option>
					<option value="1">SKT</option>
					<option value="2">KT</option>
					<option value="3">LG</option>
				</select>
				<input type="text" class="form-control" value="010-1234-5678" style="width: 30%; display: inline">
				<br>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">
					<label class="form-check-label" for="inlineCheckbox1">이메일 수신 동의</label>
				</div>
				<div class="form-check form-check-inline" style="margin: 0 0 0 60px">
					<input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
					<label class="form-check-label" for="inlineCheckbox2">SMS 수신 동의</label>
				</div>
				<br><br>
				<a href="mypage"><button type="button" style="background-color: #F0F0F0"><b>취소</b></button></a>
				<a href="mypage"><button type="button" style="background-color: #6900EF; color: white"><b>확인</b></button></a>
			</div>
		</div>
	</div>
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/7d63ec3c0a.js" crossorigin="anonymous"></script>
</body>
</html>