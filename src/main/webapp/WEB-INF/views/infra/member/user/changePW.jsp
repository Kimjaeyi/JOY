<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>
<html> 
<head>
	<title>비밀번호 변경</title>
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

	h5, h6 {
		font-weight: bold;
	}
	
	h5 {
		margin-top: 7%;
	}
	
	h3 {
		font-weight: bold;
		font-size: 25px;
	}
	
	input[type='password'] {
		border: 1px solid #ced4da;
		border-radius: 0.375rem;
		line-height: 1.5;
	}
	
	.row {
		margin: 3% 0;
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
	
	button {
		width: 75px;
		height: 50px;
		border-radius: 4px;
		float: right;
		margin: 10% 1%;
	}

	.abc {
		margin : 10% 20%;
	}
	
	input {
		height: 50px;
	}

	h4 {
		font-weight : bold;
	}
	
	li {
		margin: 0 2%;
	}

</style>

<body>

	<div class="header" style="left: 0px;">
        <div class="inner">
            <h1 class="logo">
                <a href="/item/mainPage"><span class="blind">COOCHA</span></a>
                <span class="title-category">카테고리</span>
            </h1>

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
    <div class="abc">
		<div class="row">
			<div class="col-3">
				<a href="/member/mypage"><h3 style="font-size: 25px; margin-bottom: 8%"><b>마이쿠차</b></h3></a>
				<br>
				<a href="/member/shipping"><h6 style="font-size: 18px; margin: 4% 0">주문배송조회</h6></a>
				<br>
				<a href="/member/infoModForm"><h6 style="font-size: 18px; margin: 4% 0">회원정보 수정</h6></a>
				<br>
				<a href="/member/changePW"><h6 style="color: #6900EF; font-size: 18px; margin: 4% 0">비밀번호 변경</h6></a>
				<br>
				<a href="/member/unregister"><h6 style="font-size: 18px; margin: 4% 0">회원 탈퇴</h6></a>
			</div>
			<div class="col-9">
    			<h3>비밀번호 변경</h3>
				<hr style="border: 2px solid black">
				<br>
				<div class="row">
					<div class="col-3">
						<h5>현재 비밀번호</h5>
					</div>
					<div class="col-9">
						<input type="password" class="form-control" style="width: 35%">
					</div>
				</div>
				<div class="row">
					<div class="col-3">
						<h5>새 비밀번호</h5>
					</div>
					<div class="col-9">
						<input type="password" class="form-control" id="newpwd" style="width: 35%; display: inline">
						<p style="display:inline; font-size:12px; color: gray">&nbsp;&nbsp;8~15자 이내의 영문 대소문자, 숫자 및 특수문자 2가지 이상 조합으로 입력</p>
					</div>
				</div>
				<div class="row">
					<div class="col-3">
						<h5>새 비밀번호 확인</h5>
					</div>
					<div class="col-9">
						<input type="password" class="form-control" id="newpwd2" style="width: 35%">
						<span id="alert-success" style="display: none; color: green; font-size: 13px; text-align: left;"><i class="fa-solid fa-check"></i> 비밀번호가 일치합니다.</span>
						<span id="alert-danger" style="display: none; color: red; font-size: 13px; text-align: left;"><i class="fa-solid fa-xmark"></i> 비밀번호가 일치하지 않습니다.</span>
					</div>
				</div>
				<br>
				<a href="/member/mypage"><button type="button" class="btn btn-light" style="background-color: #6900EF; color: white; font-weight: bold">변경</button></a>
				<a href="/member/mypage"><button type="button" class="btn btn-light" style="color: gray; font-weight: bold">취소</button></a>
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
	
	<script type="text/javascript">
	
	$('#newpwd2').focusout(function () {
        var pwd1 = $("#newpwd").val();
        var pwd2 = $("#newpwd2").val();
  
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
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/7d63ec3c0a.js" crossorigin="anonymous"></script>

</body>
</html>