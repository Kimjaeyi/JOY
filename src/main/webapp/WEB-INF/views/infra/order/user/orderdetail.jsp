<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="false" %>
<html> 
<head>
	<title>결제 상세정보</title>
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

	.abc {
		margin : 10% 20%;
	}
	
	input {
		height: 50px;
	}
	
	h4 {
		font-weight : bold;
	}
	
	.col-4 p {
		text-align: center;
	}
	
	#btn1, #btn2 {
		background-color: white; 
		color: gray; 
		border: 1px solid gray; 
		border-radius: 4px; 
		width: 85px; 
		height: 40px; 
		font-size: 13px;
		display: inline;
	}
	
	table, tr {
		border: 1px solid black;
		border-collapse: collaspe;
		text-align: center;
		width: 100%;
	}
	
	td {
		padding: 20px;
		border: 1px solid black;
	}
	
	.container {
		margin : 0 15%;
		width : 100%;
		height: 100%;
	}
	
	li {
		margin: 0 2%;
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
    <div class="abc">
			<div class="row">
				<div class="col-3">
					<a href="/member/mypage"><h3 style="color: #6900EF; font-size: 25px; margin: 2% 0""><b>마이쿠차</b></h3></a>
					<br><br><br>
					<a href="/member/shipping"><h6 style="font-size: 18px; margin: 2% 0">주문배송조회</h6>
					<br>
					<a href="/member/infoModForm"><h6 style="font-size: 18px; margin: 2% 0">회원정보 수정</h6></a>
				</div>
				<div class="col-8">
					<h4>주문상세내역</h4>
					<br>
					<div class="row justify-content-center" style="border: 1px solid gray; border-radius: 4px; padding: 20px">
					<br>
						<div class="col-3" style="font-weight: bold">
							<p style="font-size: 13px; display:inline"><b>주문일자</b></h6>
							<p style="font-size: 13px; display:inline">2022-07-22</h6>
						</div>
						<div class="col-5" style="font-weight: bold">
							<h6 style="font-size: 13px; display:inline"><b>구매번호</b></h6> 
							<h6 style="font-size: 13px; display:inline">202207221234567789011</h6>
						</div>
						<div class="col-4">
							<button type="button" id="btn1">거래명세서</button>
							<button type="button" id="btn2">영수증조회</button>
						</div>
					</div>
					<br><br><br>
					<hr>
					<div class="row justify-content-center">
						<div class="col-3" style="text-align:center">
							<p style="color: gray; font-size: 13px; font-weight: bold">주문일/구매번호</p>
						</div>
						<div class="col-5" style="text-align:center">
							<p style="color: gray; font-size: 13px; font-weight: bold">상품정보</p>
						</div>
						<div class="col-2" style="text-align:center">
							<p style="color: gray; font-size: 13px; font-weight: bold">상품금액</p>
						</div>
						<div class="col-2" style="text-align:center">
							<p style="color: gray; font-size: 13px; font-weight: bold">관리</p>
						</div>
					</div>
					<hr>
					<div class="row justify-content-center">
						<div class="col-3" style="text-align:center">
							<br>
							<p style="font-size: 13px; font-weight: bold">2022-07-22</p>
							<br>
							<a href="/member/orderdetail">
							<p style="color: gray; font-size: 13px; font-weight: bold; text-decoration: underline">2022072212</p><br>
							<p style="color: gray; font-size: 13px; font-weight: bold; text-decoration: underline; margin: -15px 0 0 0">3456789011</p>
							</a>
						</div>
						<div class="col-2" style="text-align:center">
							<img src="/resources/image/위메프1.png" style="width:100px; height: 100px; display: inline">
						</div>
						<div class="col-3">
							<br><br>
							<p style="color: gray; font-size: 13px">22만개 판매돌파! 1+3 리엔 물들임 새치커버 샴푸 450ml</p>
						</div>
						<div class="col-2" style="text-align:center">
							<br><br>
							<p style="color: gray; font-size: 13px; font-weight: bold">37,700원</p>
							<p style="color: gray; font-size: 13px">(1개)</p>
						</div>
						<div class="col-2" style="text-align:center">
							<br><br>
							<p style="color: gray; font-size: 13px; font-weight: bold; color: #6900EF">상품준비중</p>
							<br>
							<button type="button" style="font-size: 12px; border: none; border-radius: 4px">배송조회</button>
							<button type="button" style="font-size: 12px; border: none; border-radius: 4px">상품리뷰작성</button>
						</div>
					</div>
					<hr>
					<br><br><br>
					<h4>배송지 정보</h4>
					<hr>
					<div class="row justify-content-center">
						<div class="col-4">
							<p font-size=14px><b>받는 사람 이름</b></p>
							<hr style="color: gray">
							<p font-size=14px><b>연락처</b></p>
							<hr style="color: gray">
							<p font-size=14px><b>주소</b></p>
							<hr style="color: gray">
							<p font-size=14px><b>배송시 요청사항</b></p>
						</div>
						<div class="col-8">
							<p font-size=14px>김*이</p>
							<hr style="color: gray">
							<p font-size=14px>010-****-5678</p>
							<hr style="color: gray">
							<p font-size=14px>[12345] 서울특별시 서초구 서초대로 77길 **********</p>
							<hr style="color: gray">
							<p font-size=14px>문앞에 놓아주세요.</p>
						</div>
					</div>
					<hr>
					<br><br><br>
					<h4>결제 금액 정보</h4>
					<hr>
					<div class="row justify-content-center">
						<div class="col-4">
							<p font-size=14px><b>주문금액</b></p>
							<hr style="color: gray">
							<p font-size=14px><b>할인금액</b></p>
							<hr style="color: gray">
							<p font-size=14px><b>총 결제금액</b></p>
							<hr style="color: gray">
							<p font-size=14px><b>적립혜택</b></p>
						</div>
						<div class="col-3">
							<p font-size=14px>37,700원</p>
							<hr style="color: gray">
							<p font-size=14px>3,000원</p>
							<hr style="color: gray">
							<p font-size=14px>34,700원</p>
							<hr style="color: gray">
							<p font-size=14px>상품리뷰 작성 시</p>
						</div>
						<div class="col-5">
							<p font-size=14px>상품금액 37,700원</p>
							<hr style="color: gray">
							<p font-size=14px>카카오페이 결제 3,000원 할인</p>
							<hr style="color: gray">
							<p font-size=14px>카카오페이 34,700원</p>
							<hr style="color: gray">
							<p font-size=14px>- 리뷰 작성 시 포인트 적립</p>
						</div>
					</div>
					<hr>
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