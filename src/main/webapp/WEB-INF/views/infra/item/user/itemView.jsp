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
		max-width: 470px;
		min-width: 280px;
	}
	
	.card-body {
		margin : 0 0 0 8%;
	}
	
	.card-text small {
		color : darkgray;
		font-size: 13px;
	}
	
	.itemprice, .etcinfo, .itemtotalprice {
		margin: 20px 0;
	}
	
	.tabborder {
		margin: 0 15%;
	}
	
	.itemtab {
		padding: 50px;
		margin: 0 auto;
	}
	
	section {
		display: none;
		padding: 20px 0 0;
		border-top: 1px solid #ddd;
		width: 1200px;
	}
	
	input[type=radio] {
		display: none;
	}
	
	label {
		width: 300px;
		display: inline-block;
		/* margin: 0 0 -1px; */
		padding: 20px 95px;
		font-weight: bold;
		text-align: center;
		color: #bbb;
		border: 2px solid transparent;
	}
	
	label:hover {
	    color: #2e9cdf;
	    cursor: pointer;
	}
	
	/*input 클릭시, label 스타일*/
	input:checked + label {
		color: #6900EF;
		border: 2px solid #6900EF;
		border-top: 2px solid #6900EF;
		border-bottom: 1px solid #ffffff;
	}
	
	#tab1:checked ~ #content1,
	#tab2:checked ~ #content2,
	#tab3:checked ~ #content3,
	#tab4:checked ~ #content4 {
	    display: block;
	}
	
	#detailimg {
		width: 700px;
		margin-left: 20%;
	}
	
	#minusbtn, #plusbtn {
		width: 30px;
		height: 30px;
		border: 1px solid gray;
	}
	
	#countresult {
		width: 40px;
		height: 30px;
		border: 1px solid gray;
		text-align: center;
	}
	
	#minusbtn, #countresult, #plusbtn {
		display: inline;
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
		display: inline;
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

/* 	.accordion {
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
*/	
	li {
		margin: 0 2%;
	}
	
	.footer li {
		margin: 0 2%;
	}
	

</style>
	
	
<body>

<!-- start -->
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
							<li><a href="/member/logoutProc" class="logoutbtn" id="logoutbtn">로그아웃</a></li>
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
<!--     
    <input type="hidden" id="rtCount" name="rtCount">
	<input type="hidden" id="rtFinalPrice" name="rtFinalPrice">
-->	
<!-- 		
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
-->		
	<hr style="color : gray">
	</div>
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
		<!-- <div class="aaa">
			<nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><i class="fa-solid fa-house-chimney"></i> 홈</li>
					<li class="breadcrumb-item">바디/헤어</li>
					<li class="breadcrumb-item">샴푸/린스/헤어케어</li>
					<li class="breadcrumb-item active" aria-current="page">샴푸/린스</li>
				</ol>
			</nav>
		</div>
		<hr style="color : gray"> -->
	</div>
	<form method="post" name="formView" enctype="multipart/form-data">
	<input type="hidden" name="seq" value="${vo.seq}">
		<div class="card">
			<div class="row">
				<div class="col-5">
					<img src="${card.path}${card.uuidName}">
				</div>
				<div class="col-7">
					 <div class="card-body">
					<h3 class="card-title"><c:out value="${card.title}"/></h3>
					<hr style="color : gray">
					<div class="itemprice">
						<input type="hidden" id="pricetmp" value="${card.price}">
						<h4 id="orgprice" style="font-weight:bold; display:inline; font-size: 24px"><fmt:formatNumber value="${card.price}" pattern="#,###" /></h4>
						<h5 style="display:inline; font-size: 20px">원</h5>
					</div>
					<hr style="color : gray">
					<div class="etcinfo">
						<p class="card-text">
						<small><i class="fa-solid fa-truck"></i> &nbsp;&nbsp;<c:out value="${card.fee}"/> ｜ <c:out value="${card.delivery}"/> ｜ <c:out value="${card.outdate}"/>일 이내 출고</small>
						<br><br>
						<small>(주말, 공휴일 제외)</small>
						<br><br><br>
						<input type="hidden" id="maximum" value="${card.maximum}">
						<small><i class="fa-solid fa-cart-shopping"></i> &nbsp;&nbsp;최대 <c:out value="${card.maximum}"/>개까지 구매 가능</small>
						</p>
					</div>
					<br><br>
<!-- 					
					<select class="form-select" aria-label="Default select example">
						<option selected>옵션을 선택하세요</option>
						<option value="37700" id="option1">[흑갈색] LG 리엔 물들임 새치커버 샴푸 450ml + 새치커버 트리트먼트 150ml + 새치커버 샴푸 80ml 2개 ｜ 37,700원</option>
						<option value="37700" id="option2">[자연갈색] LG 리엔 물들임 새치커버 샴푸 450ml + 새치커버 트리트먼트 150ml + 새치커버 샴푸 80ml 2개 ｜ 37,700원</option>
					</select>
					<br><br><br>
-->					
					<div class="itemtotalprice">
						<h4 style="display:inline; font-size: 18px"><b>총 상품 금액</b></h4>
						<h5 style="display:inline; float:right; font-size: 22px"><b>원</b></h5>
						<h4 id="totalprice" style="display:inline; float:right; font-size: 30px; font-weight:bold" pattern="#,###"></h4>
					</div>
					<br><br><br>
					<div class="itemcount">
						<button type="button" id="minusbtn" onclick='count("minus")'><i class="fa-solid fa-minus"></i></button>
						<input type="text" name="countresult" id="countresult" value="1" readonly>
						<button type="button" id="plusbtn" onclick='count("plus")'><i class="fa-solid fa-plus"></i></button>
					</div>
					<button type="button" id="purchase">구매하기</button>
					</div>
				</div>
			</div>
		</div>
	<br><br>
	<div class="tabborder">
		<div class="itemtab">
		    <input id="tab1" type="radio" name="tabs" checked>
		    <label for="tab1">상세정보</label>
		    <input id="tab2" type="radio" name="tabs" disabled>
		    <label for="tab2">구매후기</label>
		    <input id="tab3" type="radio" name="tabs" disabled>
		    <label for="tab3">상품문의</label>
		    <input id="tab4" type="radio" name="tabs" disabled>
		    <label for="tab4">배송·교환·반품</label>
		    <section id="content1">
	        	<img src="${tab.path}${tab.uuidName}" id="detailimg">
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
	<!-- 			
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
	-->			
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
	</div>
	</form>
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
	<a href="#top" class="btn-go-top" data-scid="2227"><span class="blind">탑으로</span></a>
<!-- end -->

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/7d63ec3c0a.js" crossorigin="anonymous"></script>

<script type="text/javascript">
	
	var goUrlForm = "/order/orderPage"
	
	var form = $("form[name=formView]");
	
	var seq = $("input:hidden[name=seq]");
	
	$("#purchase").on("click", function(){
		form.attr("action", goUrlForm).submit();
	});
	
	function count(type)  {
		if(type === 'plus') {
			var tmp = document.getElementById("countresult").value;
			var max = document.getElementById("maximum").value;
			tmp++;
			document.getElementById("countresult").value = tmp;
			if (tmp > max) {
				alert("죄송합니다. 최대 선택 수량을 초과하였습니다.")
			} 
		} else if (type === 'minus')  {
			var tmp = document.getElementById("countresult").value;
				if(tmp < 2) {
					alert("최소 수량은 1개입니다.");
					return;
				} else {
					tmp--;
				}
			document.getElementById("countresult").value = tmp;
		}
		var itemCount = document.getElementById("countresult").value;
		var price1 = $("#pricetmp").val();
		var totalPrice = (price1*itemCount);

		/* 화면에 보여지는 부분 */
		$("#totalprice").text(totalPrice.toLocaleString());
	}
	
	//기본 가격값으로 들어가게 하는 스크립트(이거 안 넣으면 최종 가격에 값이 안 들어감)
	var itemCount = document.getElementById("countresult").value;
	var price1 = $("#pricetmp").val();
	var totalPrice = (price1*itemCount);

	/* 화면에 보여지는 부분 */
	$("#totalprice").text(totalPrice.toLocaleString());
	
/* 	
	function changecount(b) {
		var min = 1;
		var pick = $("#countnum").val()*1;
		var max = $("#stock").val();
		
		if(b=="m") {
			pick -= 1;
			if(pick < min) {
				alert("수량은 1개 이상 선택해 주세요.");
				return;
			}
		} else if(b=="p") {
			pick += 1;
			if(pick > max) {
				alert("죄송합니다. 재고가 부족합니다.");
				return;
			} else if(pick > maximum) {
				alert("죄송합니다. 최대 선택 수량을 초과하였습니다.");
				return;
			}
		} 
	}
 */	
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
 
/*  
 	var price = 37700;
	var coochaCount = 1;
	var totalprice = (price*coochaCount);
	
//	화면에 보여지는 부분
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
*/
 
</script>

</body>
</html>