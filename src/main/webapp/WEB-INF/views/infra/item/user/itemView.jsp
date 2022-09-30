<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>
<html> 
<head>
	<title>상품 상세</title>
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
	
/* 	.abc {
		margin: 7% 20%;
	}
	
	.cate li {
		font-size : 16px;
		font-weight : bold;
		color : black;
		margin : 5px 3%;
		display: inline;
		float: left;
	} */
/* 	
	.aaa {
		color : gray;
		font-size : 12px;
		margin : 10% 15% 5% 15%;
	}
	
	.breadcrumb-item {
		color: gray;
		float: left;
	}
 */	
 
 	.after .gnb .logoutbtn {
		width: 75px;
		display: inline-block;
		position: absolute;
	    top: 29px;
	    right: 220px;
	    color: gray;
	    padding: 10px 10px 9px;
	    font-weight: bold;
	    line-height: 1.5s7;
	    text-align: center;
	}
	
	.after .gnb .userid {
		width: 75px;
		display: inline-block;
		position: absolute;
	    top: 29px;
	    right: 300px;
	    color: white;
	    padding: 10px 10px 9px;
	    font-weight: bold;
	    line-height: 1.5s7;
	    text-align: center;
	}
	
 	.cate {
		text-align : center;
	}
	
	.cate p {
		font-size : 14px;
		font-weight : bold;
		color : black;
		margin : 8px 2%;
		float : left;
	}
	
	.aaa {
		color : gray;
		font-size : 12px;
		margin : 0 19%;
	}
	
	.bbb {
		margin: 7% 0 0 0;
	}
	
	.breadcrumb-item {
		font-size: 13px;
	}
	
	.card {
		margin : 5% 18%;
		border : none;
	}
	
	.card-title {
		font-size: 30px;
		font-weight: bold;
		letter-spacing: 1.5px;
		margin: 8px 0;
	}
	
	.card-body {
		margin : 0 0 0 8%;
	}
	
	.card-text small {
		color : darkgray;
		font-size: 13px;
	}
	
	.itemtab {
		text-align: center;
		margin: 0 10%;
		padding: 50px;
		background: white;
	}
	
	#content1 {
		margin: 0 15%;
	}
	
	#content2, #content3, #content4 {
		margin: 0 15%;
		line-height: 1.5;
		text-align: left;
	}
	
	#content2, #content3, #content4 p {
		margin: 5% 10%;
		line-height: 1.5;
		text-align: left;
	}
	
	.ccc {
		margin: 0 10%;
	}
	
	#tab1, #tab2, #tab3, #tab4, section {
		display : none;
	}
	
	section {
		padding : 20px 0 0;
		border-top : 1px solid #ddd;
	}
	
	label {
		width: 250px;
		display: inline-block;
		margin: 0 0 -1px;
		padding: 15px 25px;
		font-weight: bold;
		text-align: center;
		color: #bbb;
		border: 1px solid transparent;
	}
	
	label:hover {
		color: #2e9cdf;
		cursor: pointer;
	}
	
	input:checked + label {
		color: #6900EF;
		border: 2px solid #6900EF;
		border-bottom: 1px solid white;
	}
	
	#tab1:checked ~ #content1, #tab2:checked ~ #content2, 
	#tab3:checked ~ #content3, #tab4:checked ~ #content4 {
		display: block;
	}
	
	#purchase {
		border: none;
		border-radius: 4px;
		background-color: #6900EF;
		color: white;
		width: 180px;
		height: 65px;
		float: right;
		font-size: 22px;
		letter-spacing: 1px;
	}
	
	table {
		width: 80%;
	}
	
	tr, td {
		border-collapse: collapse;
		padding : 20px;
		margin: 5px 10px;
	}
	
	.btn-go-top {
		position: fixed;
		bottom: 40px;
		right: 40px;
		width: 42px;
		height: 42px;
		z-index: 900;
		background-image: url(../images/common/common/go-top.svg); 
	}
	.btn-go-top:hover {
		background-image: url(../images/common/common/go-top-over.svg);
		transition: background-image .2s ease; 
	}
	.blind {
		position: absolute;
		clip: rect(0 0 0 0);
		width: 1px;
		height: 1px;
		margin: -1px;
		overflow: hidden; 
	}
	
	.reviewtop {
		text-align: center;
	}
	
	.RatingStar {
		text-align: center;
		width: 30;
		height: 30;
	}
	.inner-star::before {
		color: #FF9600;
	}
	.outer-star {
		position: relative;
		display: inline-block;
		color: #CCCCCC;
	}
	.inner-star {
		position: absolute;
		left: 0;
		top: 0;
		width: 0%;
		overflow: hidden;
		white-space: nowrap;
	}
	.outer-star::before, .inner-star::before {
		content: '\f005 \f005 \f005 \f005 \f005';
		font-family: 'Font Awesome 5 free';
		font-weight: 900;
	}
	
	.accordion {
		--bs-accordion-btn-focus-border-color: mediumpurple;
		--bs-accordion-active-color: mediumpurple;
    	--bs-accordion-active-bg: mediumpurple;
	}
	
	.accordion-button {
		font-size: 12px;
		color: gray;
	}
	
	.accordion-button:not(.collapsed) {
	    color: #ED0000;
	    background-color: #FFC6C6;
    }
	
	li {
		margin: 0 2%;
	}
	

</style>
	
	
<body>

<!-- start -->
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

            <!-- 로그인 전 -->
				<c:if test="${sessSeq eq null}">
					<div class="before">
						<ul class="gnb">
							<li><a href="/member/login" class="btn-login">로그인</a></li>
							<li><a class="btn-like"><span class="blind">좋아요</span></a></li>
							<li><a class="btn-sc btn-layer-open"><span class="blind">더보기</span></a>
								<div class="area-servic-center area-gnb-layer">
									<div class="title">고객센터</div>
									<ul>
										<li><a href="/customer/boardList">공지사항</a></li>
										<li><a href="/customer/faqList">FAQ</a></li>
										<li><a href="/customer/inquiryList">1:1 문의</a></li>
									</ul>
								</div>
							</li>
						</ul>
					</div>
				</c:if>
				<!-- 로그인 전 -->
				<!-- 로그인 후 -->
				<c:if test="${sessSeq ne null}">
					<div class="after">
						<ul class="gnb">
							<%-- <li><span class="userid"><c:out value="${sessId }"/>님 :) </span></li> --%>
							<!-- <li><a href="/member/logoutProc" class="logoutbtn" id="logoutbtn">로그아웃</a></li> -->
							<li><a href="/member/mypage" class="btn-my btn-layer-open"><span class="blind">MY</span></a></li>
							<li><a class="btn-like"><span class="blind">좋아요</span></a></li>
							<li><a class="btn-sc btn-layer-open"><span class="blind">더보기</span></a>
								<div class="area-servic-center area-gnb-layer">
									<div class="title">고객센터</div>
									<ul>
										<li><a href="/customer/boardList">공지사항</a></li>
										<li><a href="/customer/faqList">FAQ</a></li>
										<li><a href="/customer/inquiryList">1:1 문의</a></li>
									</ul>
								</div>
							</li>
						</ul>
					</div>
				</c:if>
				<!-- 로그인 후 -->
        </div>
    </div>
    <input type="hidden" id="rtCount" name="rtCount">
	<input type="hidden" id="rtFinalPrice" name="rtFinalPrice">
    <!-- <div class="abc">
    	<hr style="color : gray">
		<div class="cate">
			<li>홈</li>
			<li>특가</li>
			<li>마트위크</li>
			<li>베스트</li>
			<li>베이비프로</li>
			<li>디지털프로</li>
			<li>마트프로</li>
			<li>신규오픈</li>
			<li>백화점·직구</li>
		</div>
		<br><br>
		<hr style="color : gray">
		<br>
		<nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><i class="fa-solid fa-house-chimney"></i> 홈</li>
				<li class="breadcrumb-item">바디/헤어</li>
				<li class="breadcrumb-item">샴푸/린스/헤어케어</li>
				<li class="breadcrumb-item active" aria-current="page">샴푸/린스</li>
			</ol>
		</nav>
		<hr style="color : gray">
	</div> -->
	<div class="bbb">
		<hr style="color : gray">
		<div class="cate">
			<p style="margin : 8px 2% 8px 20%">홈</p>
			<p>특가</p>
			<p>마트위크</p>
			<p>베스트</p>
			<p>베이비프로</p>
			<p>디지털프로</p>
			<p>마트프로</p>
			<p>신규오픈</p>
			<p>백화점·직구</p>
		</div>
		<br><br>
		<hr style="color : gray">
		<div class="aaa">
			<nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><i class="fa-solid fa-house-chimney"></i> 홈</li>
					<li class="breadcrumb-item">바디/헤어</li>
					<li class="breadcrumb-item">샴푸/린스/헤어케어</li>
					<li class="breadcrumb-item active" aria-current="page">샴푸/린스</li>
				</ol>
			</nav>
		</div>
		<hr style="color : gray">
	</div>
	<div class="card">
		<div class="row">
			<div class="col-5">
			  <img src="../resources/image/위메프상세.jpg" class="img-fluid rounded-start" alt="...">
			</div>
			<div class="col-7">
				 <div class="card-body">
				<h3 class="card-title">22만개 판매돌파! 1+3 리엔 물들임</h3>
				<h3 class="card-title">새치커버 샴푸 450ml</h3>
				<hr style="color : gray">
				<h4 style="font-weight:bold; display:inline; font-size: 24px">37,770</h4>
				<h5 style="display:inline; font-size: 20px">원</h5>
				<hr style="color : gray">
				<p class="card-text">
					<small><i class="fa-solid fa-truck"></i> &nbsp;&nbsp;무료배송 ｜ 택배배송 ｜ 3일 이내 출고</small>
					<br>
					<small>(주말, 공휴일 제외)</small>
					<br><br>
					<small><i class="fa-solid fa-cart-shopping"></i> &nbsp;&nbsp;최대 999개까지 구매 가능</small>
				</p>
				<br><br>
				<select class="form-select" aria-label="Default select example">
					<option selected>옵션을 선택하세요</option>
					<option value="37700" id="option1">[흑갈색] LG 리엔 물들임 새치커버 샴푸 450ml + 새치커버 트리트먼트 150ml + 새치커버 샴푸 80ml 2개 ｜ 37,700원</option>
					<option value="37700" id="option2">[자연갈색] LG 리엔 물들임 새치커버 샴푸 450ml + 새치커버 트리트먼트 150ml + 새치커버 샴푸 80ml 2개 ｜ 37,700원</option>
				</select>
				<br><br><br>
				<h4 style="display:inline; font-size: 18px"><b>총 상품 금액</b></h4>
				<h5 style="display:inline; float:right; font-size: 18px"><b>원</b></h5>
				<h4 style="display:inline; float:right; font-size: 24px" id="totalprice"><b></b></h4>
				<br><br><br><br>
				<a href="../item/payment"><button type="button" id="purchase">구매하기</button></a>
				</div>
			</div>
		</div>
	</div>
	<br><br>
	<div class="itemtab">
	    <input id="tab1" type="radio" name="tabs" checked>
	    <label for="tab1">상세정보</label>
	    <input id="tab2" type="radio" name="tabs">
	    <label for="tab2">구매후기</label>
	    <input id="tab3" type="radio" name="tabs">
	    <label for="tab3">상품문의</label>
	    <input id="tab4" type="radio" name="tabs">
	    <label for="tab4">배송·교환·반품</label>
	    <section id="content1">
	        <img src="../resources/image/itemdetail.jpg">
	    </section>
	    <section id="content2">
<!-- 	    
	        <div class="reviewtop">
	        	<br><br><br>
		        <h6><b>총 3건의 후기가 있습니다.</b></h6>
		        <br><br>
		        <h4>평균별점</h4>
		        <div class="RatingStar">
					<div class="RatingScore">
						<div class="outer-star">
							<div class="inner-star"></div>
						</div>
					</div>
				</div>
				<br>
				<h3><b>4.5</b></h3>
			</div>
			<br><br>
			<hr>
			<h6><b>전체후기 3개</b></h6>
			<hr>
 -->			
	    </section>
	    <section id="content3">
	        <h5><b>상품문의</b></h5>
	        <br>
			<div class="accordion" id="accordionPanelsStayOpenExample">
				<div class="accordion-item">
					<h2 class="accordion-header" id="panelsStayOpen-headingOne">
						<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="false" aria-controls="panelsStayOpen-collapseOne">
						<b style="font-size: 13px">*기타문의*</b>&nbsp;&nbsp;[흑갈색] LG 리엔 물들임 새치커버 샴푸 450ml + 새치커버 트리트먼트 150ml + 새치커버 샴푸 80ml 2개
						</button>
					</h2>
					<div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingOne">
						<div class="accordion-body">
							<i class="fa-regular fa-q fa-2x"></i>&nbsp;&nbsp;<b style="font-size: 13px">증정품에 2개짜리가 트리트먼트가 아니라 샴푸인게 맞나요?</b>
							<br><b style="font-size: 11px; color: gray">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2022-08-31</b>
							<br><br><br>
							<i class="fa-regular fa-a fa-2x"></i>&nbsp;&nbsp;
							<normal style="font-size: 13px">안녕하세요 고객님, 엘지 생활건강입니다. 저희 제품을 찾아주셔서 감사합니다.
							<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;문의주신 제품은 상품명 그대로 샴푸 450ML, 트리트먼트 150ML , 샴푸80ML*2개 로 구성되어 있습니다.
							<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;많은 관심 바랍니다. 감사합니다.</normal>
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="panelsStayOpen-headingTwo">
					  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false" aria-controls="panelsStayOpen-collapseTwo">
					  <b style="font-size: 13px">*배송문의*</b>&nbsp;&nbsp;[자연갈색] LG 리엔 물들임 새치커버 샴푸 450ml + 새치커버 트리트먼트 150ml + 새치커버 샴푸 80ml 2개
					  </button>
					</h2>
					<div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingTwo">
						<div class="accordion-body">
							<i class="fa-regular fa-q fa-2x"></i>&nbsp;&nbsp;<b style="font-size: 13px">증정품에 2개짜리가 트리트먼트가 아니라 샴푸인게 맞나요?</b>
							<br><b style="font-size: 11px; color: gray">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2022-08-31</b>
							<br><br><br>
							<i class="fa-regular fa-a fa-2x"></i>&nbsp;&nbsp;
							<normal style="font-size: 13px">안녕하세요 고객님, 엘지 생활건강입니다. 저희 제품을 찾아주셔서 감사합니다.
							<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;문의주신 제품은 상품명 그대로 샴푸 450ML, 트리트먼트 150ML , 샴푸80ML*2개 로 구성되어 있습니다.
							<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;많은 관심 바랍니다. 감사합니다.</normal>
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="panelsStayOpen-headingThree">
						<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseThree" aria-expanded="false" aria-controls="panelsStayOpen-collapseThree">
						<b style="font-size: 13px">*환불문의*</b>&nbsp;&nbsp;[흑갈색] LG 리엔 물들임 새치커버 샴푸 450ml + 새치커버 트리트먼트 150ml + 새치커버 샴푸 80ml 2개
						</button>
					</h2>
					<div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingThree">
						<div class="accordion-body">
							<i class="fa-regular fa-q fa-2x"></i>&nbsp;&nbsp;<b style="font-size: 13px">증정품에 2개짜리가 트리트먼트가 아니라 샴푸인게 맞나요?</b>
							<br><b style="font-size: 11px; color: gray">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2022-08-31</b>
							<br><br><br>
							<i class="fa-regular fa-a fa-2x"></i>&nbsp;&nbsp;
							<normal style="font-size: 13px">안녕하세요 고객님, 엘지 생활건강입니다. 저희 제품을 찾아주셔서 감사합니다.
							<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;문의주신 제품은 상품명 그대로 샴푸 450ML, 트리트먼트 150ML , 샴푸80ML*2개 로 구성되어 있습니다.
							<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;많은 관심 바랍니다. 감사합니다.</normal>
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="panelsStayOpen-headingFour">
					  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseFour" aria-expanded="false" aria-controls="panelsStayOpen-collapseFour">
					  <b style="font-size: 13px">*상품문의*</b>&nbsp;&nbsp;[자연갈색] LG 리엔 물들임 새치커버 샴푸 450ml + 새치커버 트리트먼트 150ml + 새치커버 샴푸 80ml 2개
					  </button>
					</h2>
					<div id="panelsStayOpen-collapseFour" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingFour">
						<div class="accordion-body">
							<i class="fa-regular fa-q fa-2x"></i>&nbsp;&nbsp;<b style="font-size: 13px">증정품에 2개짜리가 트리트먼트가 아니라 샴푸인게 맞나요?</b>
							<br><b style="font-size: 11px; color: gray">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2022-08-31</b>
							<br><br><br>
							<i class="fa-regular fa-a fa-2x"></i>&nbsp;&nbsp;
							<normal style="font-size: 13px">안녕하세요 고객님, 엘지 생활건강입니다. 저희 제품을 찾아주셔서 감사합니다.
							<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;문의주신 제품은 상품명 그대로 샴푸 450ML, 트리트먼트 150ML , 샴푸80ML*2개 로 구성되어 있습니다.
							<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;많은 관심 바랍니다. 감사합니다.</normal>
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="panelsStayOpen-headingFive">
						<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseFive" aria-expanded="false" aria-controls="panelsStayOpen-collapseFive">
						<b style="font-size: 13px">*환불문의*</b>&nbsp;&nbsp;[흑갈색] LG 리엔 물들임 새치커버 샴푸 450ml + 새치커버 트리트먼트 150ml + 새치커버 샴푸 80ml 2개
						</button>
					</h2>
					<div id="panelsStayOpen-collapseFive" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingFive">
						<div class="accordion-body">
							<i class="fa-regular fa-q fa-2x"></i>&nbsp;&nbsp;<b style="font-size: 13px">증정품에 2개짜리가 트리트먼트가 아니라 샴푸인게 맞나요?</b>
							<br><b style="font-size: 11px; color: gray">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2022-08-31</b>
							<br><br><br>
							<i class="fa-regular fa-a fa-2x"></i>&nbsp;&nbsp;
							<normal style="font-size: 13px">안녕하세요 고객님, 엘지 생활건강입니다. 저희 제품을 찾아주셔서 감사합니다.
							<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;문의주신 제품은 상품명 그대로 샴푸 450ML, 트리트먼트 150ML , 샴푸80ML*2개 로 구성되어 있습니다.
							<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;많은 관심 바랍니다. 감사합니다.</normal>
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="panelsStayOpen-headingSix">
					  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseSix" aria-expanded="false" aria-controls="panelsStayOpen-collapseSix">
					  <b style="font-size: 13px">*배송문의*</b>&nbsp;&nbsp;[자연갈색] LG 리엔 물들임 새치커버 샴푸 450ml + 새치커버 트리트먼트 150ml + 새치커버 샴푸 80ml 2개
					  </button>
					</h2>
					<div id="panelsStayOpen-collapseSix" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingSix">
						<div class="accordion-body">
							<i class="fa-regular fa-q fa-2x"></i>&nbsp;&nbsp;<b style="font-size: 13px">증정품에 2개짜리가 트리트먼트가 아니라 샴푸인게 맞나요?</b>
							<br><b style="font-size: 11px; color: gray">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2022-08-31</b>
							<br><br><br>
							<i class="fa-regular fa-a fa-2x"></i>&nbsp;&nbsp;
							<normal style="font-size: 13px">안녕하세요 고객님, 엘지 생활건강입니다. 저희 제품을 찾아주셔서 감사합니다.
							<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;문의주신 제품은 상품명 그대로 샴푸 450ML, 트리트먼트 150ML , 샴푸80ML*2개 로 구성되어 있습니다.
							<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;많은 관심 바랍니다. 감사합니다.</normal>
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="panelsStayOpen-headingSeven">
						<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseSeven" aria-expanded="false" aria-controls="panelsStayOpen-collapseSeven">
						<b style="font-size: 13px">*환불문의*</b>&nbsp;&nbsp;[흑갈색] LG 리엔 물들임 새치커버 샴푸 450ml + 새치커버 트리트먼트 150ml + 새치커버 샴푸 80ml 2개
						</button>
					</h2>
					<div id="panelsStayOpen-collapseSeven" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingSeven">
						<div class="accordion-body">
							<i class="fa-regular fa-q fa-2x"></i>&nbsp;&nbsp;<b style="font-size: 13px">증정품에 2개짜리가 트리트먼트가 아니라 샴푸인게 맞나요?</b>
							<br><b style="font-size: 11px; color: gray">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2022-08-31</b>
							<br><br><br>
							<i class="fa-regular fa-a fa-2x"></i>&nbsp;&nbsp;
							<normal style="font-size: 13px">안녕하세요 고객님, 엘지 생활건강입니다. 저희 제품을 찾아주셔서 감사합니다.
							<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;문의주신 제품은 상품명 그대로 샴푸 450ML, 트리트먼트 150ML , 샴푸80ML*2개 로 구성되어 있습니다.
							<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;많은 관심 바랍니다. 감사합니다.</normal>
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="panelsStayOpen-headingEight">
					  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseEight" aria-expanded="false" aria-controls="panelsStayOpen-collapseEight">
					  <b style="font-size: 13px">*상품문의*</b>&nbsp;&nbsp;[자연갈색] LG 리엔 물들임 새치커버 샴푸 450ml + 새치커버 트리트먼트 150ml + 새치커버 샴푸 80ml 2개
					  </button>
					</h2>
					<div id="panelsStayOpen-collapseEight" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingEight">
						<div class="accordion-body">
							<i class="fa-regular fa-q fa-2x"></i>&nbsp;&nbsp;<b style="font-size: 13px">증정품에 2개짜리가 트리트먼트가 아니라 샴푸인게 맞나요?</b>
							<br><b style="font-size: 11px; color: gray">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2022-08-31</b>
							<br><br><br>
							<i class="fa-regular fa-a fa-2x"></i>&nbsp;&nbsp;
							<normal style="font-size: 13px">안녕하세요 고객님, 엘지 생활건강입니다. 저희 제품을 찾아주셔서 감사합니다.
							<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;문의주신 제품은 상품명 그대로 샴푸 450ML, 트리트먼트 150ML , 샴푸80ML*2개 로 구성되어 있습니다.
							<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;많은 관심 바랍니다. 감사합니다.</normal>
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="panelsStayOpen-headingNine">
						<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseNine" aria-expanded="false" aria-controls="panelsStayOpen-collapseNine">
						<b style="font-size: 13px">*환불문의*</b>&nbsp;&nbsp;[흑갈색] LG 리엔 물들임 새치커버 샴푸 450ml + 새치커버 트리트먼트 150ml + 새치커버 샴푸 80ml 2개
						</button>
					</h2>
					<div id="panelsStayOpen-collapseNine" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingNine">
						<div class="accordion-body">
							<i class="fa-regular fa-q fa-2x"></i>&nbsp;&nbsp;<b style="font-size: 13px">증정품에 2개짜리가 트리트먼트가 아니라 샴푸인게 맞나요?</b>
							<br><b style="font-size: 11px; color: gray">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2022-08-31</b>
							<br><br><br>
							<i class="fa-regular fa-a fa-2x"></i>&nbsp;&nbsp;
							<normal style="font-size: 13px">안녕하세요 고객님, 엘지 생활건강입니다. 저희 제품을 찾아주셔서 감사합니다.
							<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;문의주신 제품은 상품명 그대로 샴푸 450ML, 트리트먼트 150ML , 샴푸80ML*2개 로 구성되어 있습니다.
							<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;많은 관심 바랍니다. 감사합니다.</normal>
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="panelsStayOpen-headingTen">
						<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseTen" aria-expanded="false" aria-controls="panelsStayOpen-collapseTen">
						<b style="font-size: 13px">*환불문의*</b>&nbsp;&nbsp;[흑갈색] LG 리엔 물들임 새치커버 샴푸 450ml + 새치커버 트리트먼트 150ml + 새치커버 샴푸 80ml 2개
						</button>
					</h2>
					<div id="panelsStayOpen-collapseTen" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingTen">
						<div class="accordion-body">
							<i class="fa-regular fa-q fa-2x"></i>&nbsp;&nbsp;<b style="font-size: 13px">증정품에 2개짜리가 트리트먼트가 아니라 샴푸인게 맞나요?</b>
							<br><b style="font-size: 11px; color: gray">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2022-08-31</b>
							<br><br><br>
							<i class="fa-regular fa-a fa-2x"></i>&nbsp;&nbsp;
							<normal style="font-size: 13px">안녕하세요 고객님, 엘지 생활건강입니다. 저희 제품을 찾아주셔서 감사합니다.
							<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;문의주신 제품은 상품명 그대로 샴푸 450ML, 트리트먼트 150ML , 샴푸80ML*2개 로 구성되어 있습니다.
							<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;많은 관심 바랍니다. 감사합니다.</normal>
						</div>
					</div>
				</div>
			</div>
	    </section>
	    <section id="content4">
	        <h5 style="font-weight: bold; margin: 5% 10%">배송/교환/반품</h5>
	        <p font-size=10px><b>배송 안내</b></p>
	        <div class="ccc">
				<table class="table table-striped-columns">
					<thead>
						<tr>
							<td width="30%">배송비</td>
							<td width="70%">무료배송</td>
						</tr>
					</thead>
					<tr>
						<td>배송방법/상품 출고일</td>
						<td>택배배송(CJ대한통운) ｜ 당일 출고(오후 12시 이전 결제 건까지)</td>
					</tr>
				</table>
			</div>
	    </section>
	</div>
	<a href="#top" class="btn-go-top" data-scid="2227"><span class="blind">탑으로</span></a>
<!-- 상세정보사진 이어붙이기
https://front.wemakeprice.com/product/2196179307?search_keyword=%25EB%25A6%25AC%25EC%2597%2594%2520%25EB%25AC%25BC%25EB%2593%25A4%25EC%259E%2584%25EC%2583%25B4%25ED%2591%25B8&_service=5&_no=8
 -->
<!-- end -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/7d63ec3c0a.js" crossorigin="anonymous"></script>

<script type="text/javascript">

/* 
	ratings = {RatingScore: 4.5} 
	totalRating = 5;table = document.querySelector('.RatingStar');
	function rateIt() {
		for (rating in ratings) {
			ratingPercentage = ratings[rating] / totalRating * 100;
			ratingRounded = Math.round(ratingPercentage / 10) * 10 + '%';
			star = table.querySelector(`.${rating} .inner-star`);
			numberRating = table.querySelector(`.${rating} .numberRating`);
			star.style.width = ratingRounded;numberRating.innerText = ratings[rating];
			}
		}
	rateIt()
 */
 
 	var price = 37700;
	var coochaCount = 1;
	var totalprice = (price*coochaCount);
	
	/* 화면에 보여지는 부분 */
	$("#totalprice").text(totalprice.toLocaleString());
	$("#optionprice").text("0");
	
	$(document).ready(function() {
		   $("#option1").click(function(){
		      var option1Price = $(this).attr('value');   
		      $("#optionprice").text((option1Price)/1000 + ",000");
		      $("#totalprice").text(totalprice.toLocaleString());
		      $('#rtOption').val(option1Price); 
		      
		   });
		   $("#option2").click(function(){
		      var option2Price = $(this).attr('value');      
		      $("#optionprice").text((option2Price)/1000 + ",000");
		      $("#totalprice").text(totalprice.toLocaleString());
		      $('#rtOption').val(option2Price); 
		   });
		});
	
	$("#rtCount").val(coochaCount);
	$("#rtOption").val(totalprice);
	
	$("#logoutbtn").on("click", function(){
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/member/logoutProc"
			,data: {}
			,success: function(response) {
				if(response.rt == "success") {
					location.href = "/";
				} else {
					// by pass
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	});
 
</script>

</body>
</html>