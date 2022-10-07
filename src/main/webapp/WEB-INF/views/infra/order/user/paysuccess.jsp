<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>
<html> 
<head>
	<title>결제 성공</title>
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

	h2 {
		text-align : center;
	}
	
	h3, h5, h6 {
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

	.aaa {
		text-align : center;
		margin : 7% 20%;
	}
	
	input {
		height: 50px;
	}
	
	h4 {
		font-weight : bold;
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
	<div class="abc">
		<br><br>
		<h3 style="margin: 0 0 0 280px; display: inline"><i class="fa-solid fa-circle-check"></i> 주문완료</h3>
		<h6 style="float: right; margin: 0 300px 0 0; display: inline; color: #6900EF">>&nbsp;&nbsp;03 주문완료</h6>
		<h6 style="float: right; display: inline">02 주문/결제&nbsp;&nbsp;</h6>
		<h6 style="float: right; display: inline">01 장바구니&nbsp;&nbsp;>&nbsp;&nbsp;</h6>
		<br>
		<hr style="border: 2px solid black">
		<div class="aaa">
			<h4 style="color: #6900EF; font-size: 22px; margin: 0 0 10% 0"><b>"감사합니다. 주문이 접수되었습니다."</b></h4>
			<br>
			<h5 style="float: left; font-size: 18px">결제내역</h5>
			<br><br>
			<table style="background-color: #F5F5F5">
				<tr>
					<td style="border: none" colspan="3">
						<p style="font-size: 14px; font-weight: bold; display: inline; margin: 0 50px">주문금액</p>
						<p style="font-size: 15px; font-weight: bold; display: inline; margin: 0 0 0 50px">37,700</p>
						<p style="font-size: 14px; font-weight: bold; display: inline; margin: 0 30px 0 0">원</p>
						<i class="fa-solid fa-circle-minus" style="margin: 0 30px"></i>
						<p style="font-size: 14px; font-weight: bold; display: inline; margin: 0 50px">할인금액</p>
						<p style="font-size: 15px; font-weight: bold; display: inline; margin: 0 0 0 50px">3,000</p>
						<p style="font-size: 14px; font-weight: bold; display: inline; margin: 0 30px 0 0">원</p>
						<i class="fa-regular fa-equals" style="margin: 0 30px"></i>
						<p style="font-size: 14px; font-weight: bold; display: inline; margin: 0 55px 0 50px">결제금액</p>
						<p style="font-size: 15px; font-weight: bold; display: inline; margin: 0 0 0 50px">34,700</p>
						<p style="font-size: 14px; font-weight: bold; display: inline; margin: 0 30px 0 0">원</p>
					</td>
				</tr>
				<tr>
					<td width="33%">
						<p style="font-size: 14px; font-weight: bold">구매상품 총 1개</p>
						<br>
						<p style="font-size: 12px; display: inline; margin: 0 50px">-상품금액</p>
						<p style="font-size: 11px; display: inline; margin: 0 50px">37,700원</p>
					</td>
					<td width="33%">
						<p style="font-size: 14px; font-weight: bold">할인금액 3,000원</p>
						<br>
						<p style="font-size: 12px; display: inline; margin: 0 50px">-쿠폰사용</p>
						<p style="font-size: 11px; display: inline; margin: 0 50px">3,000원</p>
					</td>
					<td width="33%">
						<p style="font-size: 14px; font-weight: bold; display: inline; margin: 0 50px">카카오페이</p>
						<p style="font-size: 14px; font-weight: bold; display: inline; margin: 0 40px">34,700원</p>
					</td>
				</tr>
			</table>
			<br><br>
			<h5 style="float: left; font-size: 18px">상품정보</h5>
			<br><br>
			<table>
				<tr>
					<td style="border: none; width: 20%"><img src="../resources/image/위메프1.png" style="width: 150px; height:150px"></td>
					<td style="text-align: left; width: 35%"><p style="font-size: 12px; font-weight: bold">22만개 판매돌파! 1+3 리엔 물들임 새치커버 샴푸 450ml</p>
						<br>
						<p style="font-size: 11px">옵션 : 흑갈색</p>
						<p style="font-size: 12px">내일 7/22(금) 도착 예정</p>
					</td>
					<td width="10%"><p style="font-size: 13px">1개</p></td>
					<td width="20%"><p style="font-size: 13px">37,700원</p></td>
					<td width="15%"><p style="font-size: 13px">무료배송</p></td>
				</tr>
			</table>
		</div>
	</div>
	<br><br>
	<hr>
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

</body>