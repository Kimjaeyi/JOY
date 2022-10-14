<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>
<%@ page session="true"%>
<html>
<head>
<title>coocha</title>
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
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<link rel="stylesheet" href="http://images.coocha.co.kr/static/css/coocha.css?ver=2022082209" />
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
</head>

<style type="text/css">

	.after .gnb .logoutbtn {
		width: 75px;
		display: inline-block;
		position: absolute;
	    top: 29px;
	    right: 220px;
	    color: white;
	    padding: 10px 10px 9px;
	    font-weight: bold;
	    line-height: 1.5s7;
	    text-align: center;
	}
	
	.after .gnb .userid {
		width: 120px;
		display: inline-block;
		position: absolute;
	    top: 29px;
	    right: 270px;
	    color: white;
	    padding: 10px 10px 9px;
	    font-weight: bold;
	    line-height: 1.5s7;
	    text-align: center;
	}
	
	.group-top5 .row .col li > button {
	    display: block;
	    color: #616161;
	    line-height: 1.57;
	    padding: 8.5px 14px;
	    margin: 0 3px;
	    border: 1px solid #e0e0e0;
	    -webkit-border-radius: 4px;
	    border-radius: 4px;
	}
	
	.nav {
		width: 500px;
		padding-top: 0;
		padding-bottom: 30px;
	}
	
	.nav-pills .nav-link.active {
	    background-color: white;
	}
	
	.group-top5 .row .col li > button.nav-link.active {
		color: #6900EF;
	    border: 1px solid #6900EF;
	    margin: 0 3px;
	    display: block;
	    color: #6900EF;
	    line-height: 1.57;
	    padding: 8.5px 14px;
	    -webkit-border-radius: 4px;
	    border-radius: 4px;
	}
	
	.group-top5 .deal-list .deal .areas .title {
	    margin-top: 16px;
	    color: #424242;
	    min-height: 40px;
	    line-height: 1.5;
	    word-break: break-all;
	    display: -webkit-box;
	    -webkit-line-clamp: 2;
	    -webkit-box-orient: vertical;
	    overflow: hidden;
	    max-height: 40px;
	}
	
	.group-top5 .deal-list .deal .areas .prices {
	    padding-top: 16px;
	    padding-bottom: 30px;
	}
	
	.group-top5 .deal-list .deal .areas .prices .left {
	    color: #5929d0;
	    font-weight: bold;
	    font-size: 14px;
	    padding-right: 3px;
	}
	
	.group-top5 .deal-list .deal .areas .prices .left .num {
	    font-size: 18px;
	    font-weight: 500;
	}
	
	.group-top5 .deal-list .deal .areas .prices .right .num {
	    font-size: 18px;
	    font-weight: 500;
	}
	
	.group-top5 .deal-list > * {
	    float: left;
	    width: 20%;
	    padding-left: 15px;
	}
	
	.group-top5 .deal-list .deal > a {
	    display: block;
	    position: relative;
	}
	
/* 	
	.main-header .after .btn-sc {
	    background-image: url(../images/common/header/btn-sc-white.svg);
	}
	.after .btn-sc {
	    display: inline-block;
	    width: 40px;
	    height: 40px;
	    position: absolute;
	    top: 26px;
	    right: 16px;
	}
*/
/* 	
	.managerLogin .logoutbtn {
		width: 75px;
		display: inline-block;
		position: absolute;
	    top: 29px;
	    right: 220px;
	    color: white;
	    padding: 10px 10px 9px;
	    font-weight: bold;
	    line-height: 1.5s7;
	    text-align: center;
	}
*/	
	.managebtn {
		width: 65px;
		display: inline-block;
		position: absolute;
	    top: 38px;
	    right: 360px;
	    color: white;
	    padding: 10px 10px 9px;
	    font-weight: bold;
	    line-height: 1.5s7;
	    text-align: center;
	}
	
	.footer li {
		margin: 0 2%;
	}

</style>

<body>

	<!-- 헤더 -->
	<header class="main-header" id="top">
		<!-- main에 붙는 경우 :: main-header 클래스 추가 -->
		<div class="header">
			<div class="inner">
				<h1 class="logo">
					<a href="/"><span class="blind">COOCHA</span></a>
					<span class="title-category">카테고리</span>
				</h1>

				<div class="search">
					<div class="search-input">
						<input type="search" class="input">
					</div>
					<!-- //검색어 미 입력 시 :: 인풋창에 마우스 클릭만 한 경우 -->
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
							<c:if test="${sessSeq eq 1}">
								<a href="/member/memberList"><div class="managebtn"><i class="fa-solid fa-wrench fa-lg"></i></div></a>
							</c:if>
							<li><span class="userid"><c:out value="${sessId }"/>님 :) </span></li>
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
		
		<!-- pagination s -->
		<%@include file="../../../common/xdmin/includeV1/mainHeadercate.jsp"%>
		<!-- pagination e -->
		
	</header>
	
	<!-- //헤더 -->

	<!-- main contents -->
	<div class="main-container">
		<!-- 검색 -->
		<div class="section group-search" style="background-image: url(http://images.coocha.co.kr/WebStyleShopBanner/mainbg/img_20201224171334.jpg)">
			<div class="inner">
				<div class="contents">
					<p class="text">
						<a class="main-banner-link" href="/search/searchDealList?keyword=%EB%B0%80%ED%82%A4%ED%8A%B8" data-scid="402001" data-keyword="밀키트">‘밀키트’로 홈캉스 즐기기!</a>
					</p>
					<div class="search">
						<input type="search" class="input search-keyword">
					</div>
				</div>
			</div>
		</div>
		<!-- //검색 -->

		<!-- 실시간 핫딜 TOP5 -->
		<div class="section group-top5">
			<div class="inner">
				<div class="title">실시간 핫딜 TOP 5</div>
				<div class="row">
					<div class="col">
						<!-- top5 업체영역 -->
						<ul class="nav nav-pills" id="pills-tab" role="tablist">
							<li class="nav-item" role="presentation"><button class="nav-link active" id="pills-wmp-tab" data-bs-toggle="pill" data-bs-target="#pills-wmp" type="button" role="tab" aria-controls="pills-wmp" aria-selected="true">위메프</button></li>
							<li class="nav-item" role="presentation"><button class="nav-link" id="pills-tmon-tab" data-bs-toggle="pill" data-bs-target="#pills-tmon" type="button" role="tab" aria-controls="pills-tmon" aria-selected="false">티몬</button></li>
							<li class="nav-item" role="presentation"><button class="nav-link" id="pills-11st-tab" data-bs-toggle="pill" data-bs-target="#pills-11st" type="button" role="tab" aria-controls="pills-11st" aria-selected="false">11번가</button></li>
						</ul>
						<!-- //top5 업체영역 -->
					</div>
				</div>
				<div class="tab-content" id="pills-tabContent">
					<div class="tab-pane fade show active" id="pills-wmp" role="tabpanel" aria-labelledby="pills-wmp-tab" tabindex="0">
						<div class="contents">
							<div class="slider">
								<!-- top10 딜영역 -->
								<div class="slide">
									<ul class="deal-list">
										<li>
											<div class="deal">
												<a href="../item/itemView">
													<div class="img">
														<img src="/resources/image/위메프1.png">
													</div>
													<div class="areas">
														<div class="title">22만개 판매돌파! 1+3 리엔 물들임 새치커버 샴푸 450ml + 트릿 150ml + 샴푸 80 + 트릿 80 외</div>
														<div class="prices">
															<span class="left"> 
																<span class="num">10</span>
																<span class="unit">%</span>
															</span> 
															<span class="right"> 
																<span class="num">37,700</span> 
																<span class="unit">원</span>
															</span>
														</div>
													</div>
												</a>
											</div>
										</li>
										<li>
											<div class="deal">
												<a href=" ">
													<div class="img">
														<img src="/resources/image/위메프2.jpg">
													</div>
													<div class="areas">
														<div class="title">아임웰 닭가슴살 볶음밥 1+1+1팩 외 아임닭/아임웰 BEST + 오늘 54%쿠폰</div>
														<div class="prices">
															<span class="right"> 
																<span class="num">5,980</span>
																<span class="unit">원</span>
															</span>
														</div>
													</div>
												</a>
											</div>
										</li>
										<li>
											<div class="deal">
												<a href=" ">
													<div class="img">
														<img src="/resources/image/위메프3.png">
													</div>
													<div class="areas">
														<div class="title">다우니 실내건조 섬유유연제 1L 3개+200ml, 덜마른 빨래 세균 번식 억제</div>
														<div class="prices">
															<span class="left"> 
																<span class="num">10</span>
																<span class="unit">%</span>
															</span> 
															<span class="right"> 
																<span class="num">16,740</span>
																<span class="unit">원</span>
															</span>
														</div>
													</div>
												</a>
											</div>
										</li>
										<li>
											<div class="deal">
												<a href=" ">
													<div class="img">
														<img src="/resources/image/위메프4.png">
													</div>
													<div class="areas">
														<div class="title">Jeep 1941 빅로고 반팔티셔츠 외 22S/S 신상 반팔티셔츠 모음 할인전</div>
														<div class="prices">
															<span class="left">
																<span class="num">20</span><span class="unit">%</span>
															</span> 
															<span class="right"> 
																<span class="num">11,920</span>
																<span class="unit">원</span>
															</span>
														</div>
													</div>
												</a>
											</div>
										</li>
										<li>
											<div class="deal">
												<a href=" ">
													<div class="img">
														<img src="/resources/image/위메프5.png">
													</div>
													<div class="areas">
														<div class="title">농심오뚜기 컵라면 6개입 84종 진라면 신라면 진짬뽕 육개장 새우탕 사발면 컵누들 참깨라면</div>
														<div class="prices">
															<span class="right"> 
																<span class="num">4,900</span>
																<span class="unit">원</span>
															</span>
														</div>
													</div>
												</a>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="tab-pane fade" id="pills-tmon" role="tabpanel" aria-labelledby="pills-tmon-tab" tabindex="0">
						<div class="contents">
							<div class="slider">
								<!-- top10 딜영역 -->
								<div class="slide">
									<ul class="deal-list">
										<li>
											<div class="deal">
												<a href="../item/itemView">
													<div class="img">
														<img src="/resources/image/위메프1.png">
													</div>
													<div class="areas">
														<div class="title">22만개 판매돌파! 1+3 리엔 물들임 새치커버 샴푸 450ml + 트릿 150ml + 샴푸 80 + 트릿 80 외</div>
														<div class="prices">
															<span class="left"> 
																<span class="num">10</span>
																<span class="unit">%</span>
															</span> 
															<span class="right"> 
																<span class="num">37,700</span>
																<span class="unit">원</span>
															</span>
														</div>
													</div>
												</a>
											</div>
										</li>
										<li>
											<div class="deal">
												<a href=" ">
													<div class="img">
														<img src="/resources/image/위메프2.jpg">
													</div>
													<div class="areas">
														<div class="title">아임웰 닭가슴살 볶음밥 1+1+1팩 외 아임닭/아임웰 BEST + 오늘 54%쿠폰</div>
														<div class="prices">
															<span class="right"> 
																<span class="num">5,980</span>
																<span class="unit">원</span>
															</span>
														</div>
													</div>
												</a>
											</div>
										</li>
										<li>
											<div class="deal">
												<a href=" ">
													<div class="img">
														<img src="/resources/image/위메프3.png">
													</div>
													<div class="areas">
														<div class="title">다우니 실내건조 섬유유연제 1L 3개+200ml, 덜마른 빨래 세균 번식 억제</div>
														<div class="prices">
															<span class="left"> 
																<span class="num">10</span>
																<span class="unit">%</span>
															</span> 
															<span class="right"> 
																<span class="num">16,740</span>
																<span class="unit">원</span>
															</span>
														</div>
													</div>
												</a>
											</div>
										</li>
										<li>
											<div class="deal">
												<a href=" ">
													<div class="img">
														<img src="/resources/image/위메프4.png">
													</div>
													<div class="areas">
														<div class="title">Jeep 1941 빅로고 반팔티셔츠 외 22S/S 신상 반팔티셔츠 모음 할인전</div>
														<div class="prices">
															<span class="left">
																<span class="num">20</span><span class="unit">%</span>
															</span> 
															<span class="right"> 
																<span class="num">11,920</span>
																<span class="unit">원</span>
															</span>
														</div>
													</div>
												</a>
											</div>
										</li>
										<li>
											<div class="deal">
												<a href=" ">
													<div class="img">
														<img src="/resources/image/위메프5.png">
													</div>
													<div class="areas">
														<div class="title">농심오뚜기 컵라면 6개입 84종 진라면 신라면 진짬뽕 육개장 새우탕 사발면 컵누들 참깨라면</div>
														<div class="prices">
															<span class="right"> 
																<span class="num">4,900</span>
																<span class="unit">원</span>
															</span>
														</div>
													</div>
												</a>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="tab-pane fade" id="pills-11st" role="tabpanel" aria-labelledby="pills-11st-tab" tabindex="0">
						<div class="contents">
							<div class="slider">
								<!-- top10 딜영역 -->
								<div class="slide">
									<ul class="deal-list">
										<li>
											<div class="deal">
												<a href="../item/itemView">
													<div class="img">
														<img src="/resources/image/위메프1.png">
													</div>
													<div class="areas">
														<div class="title">22만개 판매돌파! 1+3 리엔 물들임 새치커버 샴푸 450ml + 트릿 150ml + 샴푸 80 + 트릿 80 외</div>
														<div class="prices">
															<span class="left"> 
																<span class="num">10</span>
																<span class="unit">%</span>
															</span> 
															<span class="right"> 
																<span class="num">37,700</span>
																<span class="unit">원</span>
															</span>
														</div>
													</div>
												</a>
											</div>
										</li>
										<li>
											<div class="deal">
												<a href=" ">
													<div class="img">
														<img src="/resources/image/위메프2.jpg">
													</div>
													<div class="areas">
														<div class="title">아임웰 닭가슴살 볶음밥 1+1+1팩 외 아임닭/아임웰 BEST + 오늘 54%쿠폰</div>
														<div class="prices">
															<span class="right"> 
																<span class="num">5,980</span>
																<span class="unit">원</span>
															</span>
														</div>
													</div>
												</a>
											</div>
										</li>
										<li>
											<div class="deal">
												<a href=" ">
													<div class="img">
														<img src="/resources/image/위메프3.png">
													</div>
													<div class="areas">
														<div class="title">다우니 실내건조 섬유유연제 1L 3개+200ml, 덜마른 빨래 세균 번식 억제</div>
														<div class="prices">
															<span class="left"> 
																<span class="num">10</span>
																<span class="unit">%</span>
															</span> 
															<span class="right"> 
																<span class="num">16,740</span>
																<span class="unit">원</span>
															</span>
														</div>
													</div>
												</a>
											</div>
										</li>
										<li>
											<div class="deal">
												<a href=" ">
													<div class="img">
														<img src="/resources/image/위메프4.png">
													</div>
													<div class="areas">
														<div class="title">Jeep 1941 빅로고 반팔티셔츠 외 22S/S 신상 반팔티셔츠 모음 할인전</div>
														<div class="prices">
															<span class="left">
																<span class="num">20</span><span class="unit">%</span>
															</span> 
															<span class="right"> 
																<span class="num">11,920</span>
																<span class="unit">원</span>
															</span>
														</div>
													</div>
												</a>
											</div>
										</li>
										<li>
											<div class="deal">
												<a href=" ">
													<div class="img">
														<img src="/resources/image/위메프5.png">
													</div>
													<div class="areas">
														<div class="title">농심오뚜기 컵라면 6개입 84종 진라면 신라면 진짬뽕 육개장 새우탕 사발면 컵누들 참깨라면</div>
														<div class="prices">
															<span class="right"> 
																<span class="num">4,900</span>
																<span class="unit">원</span>
															</span>
														</div>
													</div>
												</a>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- //실시간 핫딜 TOP5 -->
		
		<!-- 베스트 -->
		<div class="section group-best">
			<form name="bestDealForm" id="bestDealForm" action="/" class="blind">
				<input type="hidden" name="tabKey" id="tabKey" value="TH_01" /> 
				<input type="hidden" name="curPageNo" id="curPageNo" value="1">
			</form>
			<div class="inner">
				<div class="title">베스트</div>
				<div class="contents" style="overflow-anchor: none;">
					<!-- 베스트 딜리스트 -->
					<ul class="deal-list" id="dealListDiv">
						<li>
							<div class="deal">
								<a href=" ">
									<div class="deal-inner-wrap">
										<div class="deal-inner">
											<div class="labels">
												<span class="ranking"><span class="blind">1</span></span>
											</div>
											<div class="img">
												<img src="/resources/image/베스트1.jpg">
											</div>
											<div class="areas">
												<div class="title">[복날몸보신] [배스킨라빈스x굽네치킨] 최대 23% 할인 초복 프로모션</div>
												<div class="prices">
													<span class="left"> 
														<span class="num">23</span>
														<span class="unit">%</span>
													</span> 
													<span class="right"> 
														<span class="num">27,700</span>
														<span class="unit">원</span>
													</span>
												</div>
											</div>
											<div class="aside">
												<span class="pay"> 
													<span class="easy-pay">
														<img src="http://images.coocha.co.kr/static/images/deal/easypay/spay-13.png?20200604" alt="">
													</span>
												</span> 
												<span class="shopping-mall">11번가 쇼킹딜</span>
											</div>
										</div>
									</div>
								</a>
							</div>
						</li>
						<li>
							<div class="deal">
								<a href=" ">
									<div class="deal-inner-wrap">
										<div class="deal-inner">
											<div class="labels">
												<span class="ranking">
													<span class="blind">2</span>
												</span>
											</div>
											<div class="img">
												<img src="/resources/image/베스트2.jpg">
											</div>
											<div class="areas">
												<div class="title">개당89원 초특가 KF94 ALL국산 소형/대형 새부리형/입체형컬러마스크/에어데이즈/이비에</div>
												<div class="prices">
													<span class="left"> 
														<span class="num">68</span>
														<span class="unit">%</span>
													</span> 
													<span class="right"> 
														<span class="num">6,750</span>
														<span class="unit">원</span>
													</span>
												</div>
											</div>
											<div class="aside">
												<span class="pay"> 
													<span class="easy-pay">
														<img src="http://images.coocha.co.kr/static/images/deal/easypay/spay-1.png?20200604" alt="">
													</span>
												</span> 
												<span class="shopping-mall">위메프</span>
											</div>
										</div>
									</div>
								</a>
							</div>
						</li>
						<li>
							<div class="deal">
								<a href=" ">
									<div class="deal-inner-wrap">
										<div class="deal-inner">
											<div class="labels">
												<span class="ranking"><span class="blind">3</span></span>
											</div>
											<div class="img">
												<img src="/resources/image/베스트3.jpg">
											</div>
											<div class="areas">
												<div class="title">[롯데리아] 1만원권 11% 할인</div>
												<div class="prices">
													<span class="left"> 
														<span class="num">11</span>
														<span class="unit">%</span>
													</span> 
													<span class="right"> 
														<span class="num">8,900</span>
														<span class="unit">원</span>
													</span>
												</div>
											</div>
											<div class="aside">
												<span class="pay"> 
													<span class="easy-pay">
														<img src="http://images.coocha.co.kr/static/images/deal/easypay/spay-11.png?20200604" alt="">
													</span>
												</span> 
												<span class="shopping-mall">티몬</span>
											</div>
										</div>
									</div>
								</a>
							</div>
						</li>
						<li>
							<div class="deal">
								<a href=" ">
									<div class="deal-inner-wrap">
										<div class="deal-inner">
											<div class="labels">
												<span class="ranking">
													<span class="blind">4</span>
												</span>
											</div>
											<div class="img">
												<img src="/resources/image/베스트4.jpg">
											</div>
											<div class="areas">
												<div class="title">[뉴발란스] 선착순쿠폰 뉴발란스/아디다스/나이키 외 스포츠 브랜드 의류/슈즈 총모음전</div>
												<div class="prices">
													<span class="left"> 
														<span class="num">80</span>
														<span class="unit">%</span>
													</span> 
													<span class="right"> 
														<span class="num">7,900</span>
														<span class="unit">원</span>
													</span>
												</div>
											</div>
											<div class="aside">
												<span class="pay"> 
													<span class="easy-pay">
														<img src="http://images.coocha.co.kr/static/images/deal/easypay/spay-11.png?20200604" alt="">
													</span>
												</span> 
												<span class="shopping-mall">티몬</span>
											</div>
										</div>
									</div>
								</a>
							</div>
						</li>
						<li>
							<div class="deal">
								<a href=" ">
									<div class="deal-inner-wrap">
										<div class="deal-inner">
											<div class="labels">
												<span class="ranking">
													<span class="blind">5</span>
												</span>
											</div>
											<div class="img">
												<img src="/resources/image/베스트5.jpg">
											</div>
											<div class="areas">
												<div class="title">[20%쿠폰] 양말폭탄 아동/성인 여름양말 메시 페이크삭스 스니커즈 선물세트</div>
												<div class="prices">
													<span class="right"> 
														<span class="num">4,900</span>
														<span class="unit">원</span>
													</span>
												</div>
											</div>
											<div class="aside">
												<span class="pay"> 
													<span class="easy-pay">
														<img src="http://images.coocha.co.kr/static/images/deal/easypay/spay-11.png?20200604" alt="">
													</span>
												</span> 
												<span class="shopping-mall">티몬</span>
											</div>
											<div class="btns">
												<button type="button" class="btn-like no-link" data-did="841602084" data-scid="2615">
													<span class="blind">좋아요</span>
												</button>
												<button type="button" data-target-did="ODQxNjAyMDg0" data-target-cid="TH_01" class="btn-details no-link">
													<span class="blind">상세</span>
												</button>
											</div>
										</div>
									</div>
								</a>
							</div>
						</li>
						<li>
							<div class="deal">
								<a href=" ">
									<div class="deal-inner-wrap">
										<div class="deal-inner">
											<div class="labels">
												<span class="ranking"><span class="blind">6</span></span>
											</div>
											<div class="img">
												<img src="/resources/image/베스트6.jpg">
											</div>
											<div class="areas">
												<div class="title">[타미힐피거] 마지막 특!가! 타미힐피거 반팔피게티 최.저.가.세.일</div>
												<div class="prices">
													<span class="left"> 
														<span class="num">7</span>
														<span class="unit">%</span>
													</span> 
													<span class="right"> 
														<span class="num">33,390</span>
														<span class="unit">원</span>
													</span>
												</div>
											</div>
											<div class="aside">
												<span class="pay"> 
													<span class="easy-pay">
														<img src="http://images.coocha.co.kr/static/images/deal/easypay/spay-13.png?20200604" alt="">
													</span>
												</span> 
												<span class="shopping-mall">11번가 쇼킹딜</span>
											</div>
										</div>
									</div>
								</a>
							</div>
						</li>
						<li>
							<div class="deal">
								<a href=" ">
									<div class="deal-inner-wrap">
										<div class="deal-inner">
											<div class="labels">
												<span class="ranking"><span class="blind">7</span></span>
											</div>
											<div class="img">
												<img src="/resources/image/베스트7.jpg">
											</div>
											<div class="areas">
												<div class="title">★최대40%쿠폰★ 온더바디 발을씻자 풋샴푸 385ml X 3개 외 샴푸, 바디워시</div>
												<div class="prices">
													<span class="left"> 
														<span class="num">10</span>
														<span class="unit">%</span>
													</span> 
													<span class="right"> 
														<span class="num">19,710</span>
														<span class="unit">원</span>
													</span>
												</div>
											</div>
											<div class="aside">
												<span class="pay"> 
													<span class="easy-pay">
														<img src="http://images.coocha.co.kr/static/images/deal/easypay/spay-13.png?20200604" alt="">
													</span>
												</span> 
												<span class="shopping-mall">11번가 쇼킹딜</span>
											</div>
										</div>
									</div>
								</a>
							</div>
						</li>
						<li>
							<div class="deal">
								<a href=" ">
									<div class="deal-inner-wrap">
										<div class="deal-inner">
											<div class="labels">
												<span class="ranking"><span class="blind">8</span></span>
											</div>
											<div class="img">
												<img src="/resources/image/베스트8.jpg">
											</div>
											<div class="areas">
												<div class="title">[크록스공식점]30%쿠폰! 성인/키즈 클로그 외 여름슈즈 단독가!</div>
												<div class="prices">
													<span class="right"> 
														<span class="num">19,900</span>
														<span class="unit">원</span>
													</span>
												</div>
											</div>
											<div class="aside">
												<span class="pay"> 
													<span class="easy-pay">
														<img src="http://images.coocha.co.kr/static/images/deal/easypay/spay-13.png?20200604" alt="">
													</span>
												</span> 
												<span class="shopping-mall">11번가 쇼킹딜</span>
											</div>
										</div>
									</div>
								</a>
							</div>
						</li>
						<li>
							<div class="deal">
								<a href=" ">
									<div class="deal-inner-wrap">
										<div class="deal-inner">
											<div class="labels">
												<span class="ranking"><span class="blind">9</span></span>
											</div>
											<div class="img">
												<img src="/resources/image/베스트9.jpg">
											</div>
											<div class="areas">
												<div class="title">[기프티콘] 파리바게뜨 우유팥빙수+꽃빙수(딸기망고)</div>
												<div class="prices">
													<span class="left"> 
														<span class="num">20</span>
														<span class="unit">%</span>
													</span> 
													<span class="right"> 
														<span class="num">15,040</span>
														<span class="unit">원</span>
													</span>
												</div>
											</div>
											<div class="aside">
												<span class="pay"> 
													<span class="easy-pay">
														<img src="http://images.coocha.co.kr/static/images/deal/easypay/spay-13.png?20200604" alt="">
													</span>
												</span> 
											<span class="shopping-mall">11번가 쇼킹딜</span>
											</div>
										</div>
									</div>
								</a>
							</div>
						</li>
						<li>
							<div class="deal">
								<a href=" ">
									<div class="deal-inner-wrap">
										<div class="deal-inner">
											<div class="labels">
												<span class="ranking">
													<span class="blind">10</span>
												</span>
											</div>
											<div class="img">
												<img src="/resources/image/베스트10.jpg">
											</div>
											<div class="areas">
												<div class="title">티젠 김태리 콤부차 30스틱 / 10스틱 파인애플 / 유자 / 레몬 / 피치 / 베리</div>
												<div class="prices">
													<span class="right"> 
														<span class="num">13,500</span>
														<span class="unit">원</span>
													</span>
												</div>
											</div>
											<div class="aside">
												<span class="pay"> 
													<span class="easy-pay">
														<img src="http://images.coocha.co.kr/static/images/deal/easypay/spay-11.png?20200604" alt="">
													</span>
												</span> 
											<span class="shopping-mall">티몬</span>
											</div>
										</div>
									</div>
								</a>
							</div>
						</li>
						<li>
							<div class="deal">
								<a href=" ">
									<div class="deal-inner-wrap">
										<div class="deal-inner">
											<div class="labels">
												<span class="ranking"><span class="blind">11</span></span>
											</div>
											<div class="img">
												<img src="/resources/image/베스트11.jpg">
											</div>
											<div class="areas">
												<div class="title">롯데 꼬깔콘 67gx8개 외 치토스,몽쉘,칙촉,가나,ABC,드림카카오,자일리톨모음</div>
												<div class="prices">
													<span class="left"> 
														<span class="num">8</span>
														<span class="unit">%</span>
													</span> 
													<span class="right"> 
														<span class="num">11,780</span>
														<span class="unit">원</span>
													</span>
												</div>
											</div>
											<div class="aside">
												<span class="pay"> 
													<span class="easy-pay"><img src="http://images.coocha.co.kr/static/images/deal/easypay/spay-1.png?20200604" alt=""></span>
												</span> 
												<span class="shopping-mall">위메프</span>
											</div>
										</div>
									</div>
								</a>
							</div>
						</li>
						<li>
							<div class="deal">
								<a href=" ">
									<div class="deal-inner-wrap">
										<div class="deal-inner">
											<div class="labels">
												<span class="ranking"><span class="blind">12</span></span>
											</div>
											<div class="img">
												<img src="/resources/image/베스트12.jpg">
											</div>
											<div class="areas">
												<div class="title">10%쿠폰 코렐 파이렉스 스누피 계량컵
													밀폐용기/저장용기/믹싱볼/텀블러 모음전</div>
												<div class="prices">
													<span class="left"> <span class="num">33</span><span
														class="unit">%</span>
													</span> <span class="right"> <span class="num">7,900</span><span
														class="unit">원</span>
													</span>
												</div>
											</div>
											<div class="aside">
												<span class="pay"> <span class="easy-pay"><img
														src="http://images.coocha.co.kr/static/images/deal/easypay/spay-13.png?20200604"
														alt=""></span>
												</span> <span class="shopping-mall">11번가 쇼킹딜</span>
											</div>
										</div>
									</div>
								</a>
							</div>
						</li>
						<form name="bestDealListForm" id="bestDealListForm" action="/" class="blind">
							<input type="hidden" name="bestDealResultCnt" id="bestDealResultCnt" value="208">
						</form>
					</ul>
				</div>
			</div>
		</div>
		<!-- //베스트 -->

		<!-- 주요쇼핑몰 -->
		<div class="section group-shopping">
			<div class="inner">
				<div class="title">주요 쇼핑몰</div>
				<div class="contents">
					<ul class="mall-list">
						<li>
							<p><a href="http://www.11st.co.kr/html/main.html" target="_blank" data-sid="11st" data-scid="2214">11번가</a></p>
							<p><a href="http://www.gmarket.co.kr/" target="_blank" data-sid="919" data-scid="2214">G마켓</a></p>
							<p><a href="http://www.auction.co.kr/" target="_blank" data-sid="2681" data-scid="2214">옥션</a></p>
						</li>
						<li>
							<p><a href="http://www.interpark.com/malls/index.html" target="_blank" data-sid="interpark1" data-scid="2214">인터파크</a></p>
							<p><a href="http://display.cjonstyle.com/p/homeTab/main?hmtabMenuId=000002&rPIC=Oclock" target="_blank" data-sid="cjonstyle" data-scid="2214">CJ온스타일</a></p>
							<p><a href="http://with.gsshop.com/jsp/jseis_withLGeshop.jsp?media=x4" target="_blank" data-sid="gsshop1" data-scid="2214">GS SHOP</a></p>
						</li>
						<li>
							<p><a href="http://shinsegaemall.ssg.com/?ckwhere=scoochacat" target="_blank" data-sid="happybuyrus" data-scid="2214">신세계몰</a></p>
							<p><a href="http://emart.ssg.com/main.ssg?ckwhere=ecoochacat" target="_blank" data-sid="emart" data-scid="2214">이마트몰</a></p>
						</li>
						<li>
							<p><a href="http://www.wemakeprice.com/?utm_source=coocha&utm_medium=META_af&utm_content=logo_pc&utm_campaign=r_sa" target="_blank" data-sid="WEMAKEPRICE" data-scid="2214">위메프</a></p>
							<p><a href="http://www.tmon.co.kr/entry/?jp=80002&ln=264113" target="_blank" data-sid="ticketmonster" data-scid="2214">티몬</a></p>
							<p><a href="https://www.coupang.com/" target="_blank" data-sid="coupanglp" data-scid="2214">쿠팡</a></p>
						</li>
						<li>
							<p><a href="http://www.halfclub.com/Main/index.html" target="_blank" data-sid="halfclub" data-scid="2214">하프클럽</a></p>
							<p><a href="http://www.boribori.co.kr/joins/coocha_logo.asp?/" target="_blank" data-sid="boribori" data-scid="2214">보리보리</a></p>
							<p><a href="https://mustit.co.kr/" target="_blank" data-sid="mustitep" data-scid="2214">머스트잇</a></p>
							<p><a href="https://www.wconcept.co.kr/" target="_blank" data-sid="wconcept" data-scid="2214">W컨셉</a></p>
						</li>
						<li>
							<p><a href="http://tour.interpark.com/" target="_blank" data-sid="interparkthou" data-scid="2214">인터파크투어</a></p>
							<p><a href="http://www.onlinetour.co.kr/" target="_blank" data-sid="onlinetour" data-scid="2214">온라인투어</a></p>
							<p><a href="https://www.myrealtrip.com/" target="_blank" data-sid="myrealtrip" data-scid="2214">마이리얼트립</a></p>
							<p><a href="https://www.kkday.com/ko/" target="_blank" data-sid="kkday" data-scid="2214">KKday</a></p>
						</li>
						<li>
							<p><a href="http://www.lotteimall.com/main/viewMain.lotte?dpml_no=1" target="_blank" data-sid="lotteimall" data-scid="2214">롯데홈쇼핑</a></p>
							<p><a href="http://www.shinsegaetvshopping.com?inMediaCode=MC04&ckwhere=cc_xml_pc" target="_blank" data-sid="ssgtvshop" data-scid="2214">신세계라이브쇼핑</a></p>
							<p><a href="http://www.hnsmall.com/" target="_blank" data-sid="hn_home2" data-scid="2214">홈앤쇼핑</a></p>
						</li>
						<li>
							<p><a href="http://www.1300k.com" target="_blank" data-sid="1300k" data-scid="2214">1300K</a></p>
							<p><a href="http://www.e-himart.co.kr/" target="_blank" data-sid="himart" data-scid="2214">하이마트</a></p>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- //주요쇼핑몰 -->
	</div>
	<!-- //main contents -->
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
<div class="bd-example">
  <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
    <li class="nav-item" role="presentation">
      <button class="nav-link active" id="pills-home-tab" data-bs-toggle="pill" data-bs-target="#pills-home" type="button" role="tab" aria-controls="pills-home" aria-selected="true">Home</button>
    </li>
    <li class="nav-item" role="presentation">
      <button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill" data-bs-target="#pills-profile" type="button" role="tab" aria-controls="pills-profile" aria-selected="false">Profile</button>
    </li>
    <li class="nav-item" role="presentation">
      <button class="nav-link" id="pills-contact-tab" data-bs-toggle="pill" data-bs-target="#pills-contact" type="button" role="tab" aria-controls="pills-contact" aria-selected="false">Contact</button>
    </li>
    <li class="nav-item" role="presentation">
      <button class="nav-link" id="pills-disabled-tab" data-bs-toggle="pill" data-bs-target="#pills-disabled" type="button" role="tab" aria-controls="pills-disabled" aria-selected="false" disabled>Disabled</button>
    </li>
  </ul>
  <div class="tab-content" id="pills-tabContent">
    <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab" tabindex="0">
      <p>This is some placeholder content the <strong>Home tab's</strong> associated content. Clicking another tab will toggle the visibility of this one for the next. The tab JavaScript swaps classes to control the content visibility and styling. You can use it with tabs, pills, and any other <code>.nav</code>-powered navigation.</p>
    </div>
    <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab" tabindex="0">
      <p>This is some placeholder content the <strong>Profile tab's</strong> associated content. Clicking another tab will toggle the visibility of this one for the next. The tab JavaScript swaps classes to control the content visibility and styling. You can use it with tabs, pills, and any other <code>.nav</code>-powered navigation.</p>
    </div>
    <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab" tabindex="0">
      <p>This is some placeholder content the <strong>Contact tab's</strong> associated content. Clicking another tab will toggle the visibility of this one for the next. The tab JavaScript swaps classes to control the content visibility and styling. You can use it with tabs, pills, and any other <code>.nav</code>-powered navigation.</p>
    </div>
    <div class="tab-pane fade" id="pills-disabled" role="tabpanel" aria-labelledby="pills-disabled-tab" tabindex="0">
      <p>This is some placeholder content the <strong>Disabled tab's</strong> associated content.</p>
    </div>
  </div>
</div>
	<!-- 탑으로 -->
	<a href="#top" class="btn-go-top" data-scid="2227"><span class="blind">탑으로</span></a>
	<!-- //탑으로 -->
	
	<script type="text/javascript">
	
	 $('.hamburger, .btn-close').on('click', function(){
        if($('.group-menu').css('display') === 'none'){
            $('header').addClass('fix');
            $('.hamburger').addClass('active');
            $('.group-menu').show();
            $('.main-container').addClass('fix');
            $('.link-categoty-all').val('8');
            mask();

            $(window).on('scroll', function() {
                $('.main-header').addClass('scroll fix');
                if ($(window).scrollTop() > 520) {
                    $('.main-header .header .search').hide();
                }
            });
        } else{
            hamburgerHide();
        }
    });
	 
	 function hamburgerHide(){
	        $('header').removeClass('fix');
	        $('.header').css('left', 0);
	        $('.hamburger').removeClass('active');
	        $('.group-menu').hide();
	        $('.dim-bg').hide();
	        $('.main-container').removeClass('fix');
	        $('.title-category').hide();
	        $('.menu-1depth > li > a').removeClass('on');
	        $('.menu-1depth > li:first > a').addClass('on');
	        $('.cate-con').removeClass('on');
	        $('.cate-con:first').addClass('on');
	 }
	 
	 $('.menu-1depth > li >a').on('click', function(){
	        var activeTab = $(this).attr('data-tab');
	        var activeTabText = $(this).text();
	        console.log(activeTabText);
	        $('.menu-1depth > li > a').removeClass('on');
	        $('.cate-con').removeClass('on');
	        $(this).addClass('on');
	        $('.' + activeTab).addClass('on');
	        $('.link-categoty-all .cate').html(activeTabText);

	        var cateAll = $(this).attr('value');
	        $('.link-categoty-all').attr('cid', cateAll);
	        $('.link-categoty-all').attr('data-cid', cateAll);
	    });
	
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
	
	const tabEl = document.querySelector('button[data-bs-toggle="pill"]')
	tabEl.addEventListener('hide.bs.tab', event => {
	  event.target // newly activated tab
	  event.relatedTarget // previous active tab
	})
	
	</script>
	
</body>
</html>