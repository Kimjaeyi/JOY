<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>
<html> 
<head>
	<title>unregSuccess</title>
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
	<link rel="stylesheet" href="http://images.coocha.co.kr/static/css/coocha.css?ver=2022082209" />
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
		font-size: 40px;
		color : #6900EF;
	}
	
	h5 {
		margin: 1% 0;
		font-size: 16px;
	}
	
	h3 {
		font-size: 18px;
	}
	
	h3, h5 {
		font-weight: bold;
	}
	
	.aaa {
		margin : 5% 10%;
		text-align : center;
	}
	
	i {
		color : #6900EF;
	}
	
	h3, h5, h6, p {
		font-family: 'MICEGothic Bold';
	}
	
	h3 {
		color : #6900EF;
	}
	
	h6 {
		size : 8px;
		color : #4A4A4A;
	}
	
	button {
		margin : 5px;
	}
	
	input {
		height: 50px;
		border-collapse : collapse;
	}
	
	li {
		margin: 0 2%;
	}
	
	p {
		margin : 20px 15px;
		font-size: 15px;
	}
	
</style>
<body>
	<div class="abc">
		<a href="/"><h1 style="margin: 30px 0 0 10%">coocha</h1></a>
		<br><hr><br>
		<div class="aaa">
			<i class="fa-regular fa-circle-check fa-3x"></i>
			<br><br>
			<h5>탈퇴가 정상적으로 처리되었습니다. 그동안 이용해주셔서 감사합니다.</h5>
			<br><br>
			<a href="/item/mainPage">
				<button type="button" style="background-color: #6900EF; color: white; border-radius: 6px; border: none; width: 70px; height: 40px"><b>확인</b></button>
			</a>
		</div>
		
		<br><hr>
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
	</div>
</body>
</html>
