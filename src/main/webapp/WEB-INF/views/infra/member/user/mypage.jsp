<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>
<html> 
<head>
	<title>마이페이지</title>
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

	.abc {
		margin : 10% 20%;
	}
	
	input {
		height: 50px;
	}

	h4, h5, h6 {
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
				<a href="/member/mypage"><h3 style="color: #6900EF; font-size: 25px; margin-bottom: 8%"><b>마이쿠차</b></h3></a>
				<br>
				<a href="/member/shipping"><h6 style="font-size: 18px; margin: 4% 0">주문배송조회</h6></a>
				<br>
				<a href="javascript:goForm(<c:out value="${list.seq }"/>)"><h6 style="font-size: 18px; margin: 4% 0">회원정보 수정</h6></a>
				<br>
				<a href="/member/changePW"><h6 style="font-size: 18px; margin: 4% 0">비밀번호 변경</h6></a>
				<br>
				<a href="/member/unregister"><h6 style="font-size: 18px; margin: 4% 0">회원 탈퇴</h6></a>
			</div>
			<div class="col-8">
				<h4 style="font-size: 20px; margin: 0 0 5% 0">마이페이지</h4>
				<div class="row" style="border: 1px solid #6900EF; border-radius: 4px">
					<div class="col-3" style="margin: 0 0 0 30px">
						<br>
						<h6>쿠폰</h6>
						<br>
						<h6>포인트</h6>
						<br>
					</div>
					<div class="col-2" style="margin: 0 30px 0 0; text-align:right">
						<br>
						<h6 style="color: #6900EF">1장</h6>
						<br>
						<h6 style="color: #6900EF">0Point</h6>
						<br>
					</div>
					<div class="col-3" style="margin: 0 0 0 30px">
						<br>
						<h6>구매확정</h6>
						<br>
						<h6>리뷰작성대기</h6>
						<br>
					</div>
					<div class="col-2" style="text-align:right">
						<br>
						<h6 style="color: #6900EF">1건</h6>
						<br>
						<h6 style="color: #6900EF">1건</h6>
						<br>
					</div>
				</div>
				<br><br><br>
				<div class="ccc" style="margin: 3% 0">
					<h4 style="display: inline; font-size: 20px">최근 구매내역</h4>
					<p style="display: inline; color: gray; font-size: 12px">고객님께서 최근 2개월간 구매하신 상품의 내용과 배송현황입니다.</p>
				</div>
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
						<br><br>
						<p style="font-size: 13px; font-weight: bold">2022-07-22</p>
						<br>
						<a href="/item/orderdetail">
							<p style="color: gray; font-size: 13px; font-weight: bold; text-decoration: underline">2022072212</p><br>
							<p style="color: gray; font-size: 13px; font-weight: bold; text-decoration: underline; margin: -15px 0 0 0">3456789011</p>
						</a>
					</div>
					<div class="col-2" style="text-align:center">
						<img src="/resources/image/위메프1.png" style="width:100px; height: 100px; display: inline">
					</div>
					<div class="col-3">
						<br><br>
						<p style="color: gray; font-size: 13px; vertical-align: middle">22만개 판매돌파! 1+3 리엔 물들임 새치커버 샴푸 450ml</p>
					</div>
					<div class="col-2" style="text-align: center; vertical-align: middle">
						<br><br>
						<p style="color: gray; font-size: 13px; font-weight: bold">37,700원</p><br>
						<p style="color: gray; font-size: 13px">(1개)</p>
					</div>
					<div class="col-2" style="text-align: center; vertical-align: middle">
						<br><br>
						<p style="color: gray; font-size: 13px; font-weight: bold; color: #6900EF">상품준비중</p>
						<br>
						<button type="button" style="font-size: 12px; border: none; border-radius: 4px">배송조회</button>
						<button type="button" style="font-size: 12px; border: none; border-radius: 4px">상품리뷰작성</button>
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
	
	<script type="text/javascript">
		
		goForm = function(keyValue) {
			seq.val(keyValue);
			form.attr("action", goUrlForm).submit();
		}
	
		var goUrlForm = "/member/infoModForm";
		
	</script>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/7d63ec3c0a.js" crossorigin="anonymous"></script>

</body>
</html>