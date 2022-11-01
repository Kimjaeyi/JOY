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
	<link rel="stylesheet" href="http://images.coocha.co.kr/static/css/coocha.css?ver=2022082209" />
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
	
	.group-top5 .inner li > button {
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
	
	.group-top5 .inner li > button.nav-link.active {
		color: #6900EF;
	    border: 1px solid #6900EF;
	    margin: 0 3px;
	    display: block;
	    line-height: 1.57;
	    padding: 8.5px 14px;
	    -webkit-border-radius: 4px;
	    border-radius: 4px;
	}
	
	.group-top5 .inner li > button.nav-link {
		color: #616161;
	    border: 1px solid #e0e0e0;
	    margin: 0 3px;
	    display: block;
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
	
	.group-best {
		margin-top: 15rem;
	}
	
	.group-best .deal-list .deal .deal-inner {
	    position: relative;
	}
	
	.deal-list > * {
	    padding-left: 36px;
	    margin-bottom: 75px;
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
		
		<!-- mainHeadercate s -->
		<%@include file="../../../common/xdmin/includeV1/mainHeadercate.jsp"%>
		<!-- mainHeadercate e -->
		
	</header>
	<!-- //헤더 -->
	
	<!-- main contents -->
	<div class="main-container">
		<!-- 검색 -->
		<form method="post" name="formList">
		<input type="hidden" name="seq">
		<div class="section group-search" style="background-image: url(http://images.coocha.co.kr/WebStyleShopBanner/mainbg/img_20201224171334.jpg)">
			<div class="inner">
				<div class="contents">
					<p class="text">
						<a class="main-banner-link">‘밀키트’로 홈캉스 즐기기!</a>
					</p>
					<div class="search">
						<input type="hidden" name="shOption" value="1">
						<input type="search" class="input search-keyword" name="shValue" onkeyup="enterKey()" value="<c:out value="${vo.shValue }"/>">
					</div>
					<%-- <select name="shOption" id="shOption" style="display: none">
						<option value="${vo.shOption eq 1}" selected>상품명</select>
					</select> --%>
				</div>
			</div>
		</div>
		</form>
		<!-- //검색 -->
		<!-- 실시간 핫딜 TOP5 -->
		<div class="section group-top5">
			<div class="inner">
				<div class="title">실시간 핫딜 TOP 5</div>
				<!-- top5 업체영역 -->
				<ul class="nav nav-pills" id="pills-tab" role="tablist">
					<li class="nav-item" role="presentation">
						<button class="nav-link active" id="wmp-tab" data-bs-toggle="pill" data-bs-target="#wmp" type="button" role="tab" aria-controls="wmp" aria-selected="true">위메프</button>
					</li>
					<li class="nav-item" role="presentation">
						<button class="nav-link" id="tmon-tab" data-bs-toggle="pill" data-bs-target="#tmon" type="button" role="tab" aria-controls="tmon" aria-selected="false">티몬</button>
					</li>
					<li class="nav-item" role="presentation">
						<button class="nav-link" id="11st-tab" data-bs-toggle="pill" data-bs-target="#eleven" type="button" role="tab" aria-controls="eleven" aria-selected="false">11번가</button>
					</li>
				</ul>
				<!-- //top5 업체영역 -->
				<div class="tab-content" id="pills-tabContent">
					<div class="tab-pane fade show active" id="wmp" role="tabpanel" aria-labelledby="wmp-tab" tabindex="0">
						<div class="deal-list">
							<!-- top10 딜영역 -->
							<c:forEach items="${listHotdealwmp}" var="listHotdealwmp" varStatus="status">
								<div class="deal">
									<a href="javascript:goView('${listHotdealwmp.seq }')">
										<div class="img">
											<img src="${listHotdealwmp.path}${listHotdealwmp.uuidName}">
										</div>
										<div class="areas">
											<div class="title"><c:out value="${listHotdealwmp.title}"/></div>
										<div class="prices">
											<span class="left"> 
												<span class="num"><c:out value="${listHotdealwmp.discount}"/></span>
										<c:choose>
										<c:when test="${listHotdealwmp.discount eq null }"></c:when>
										<c:otherwise><span class="unit">%</span></c:otherwise>
										</c:choose>
										</span> 
										<span class="right"> 
											<span class="num"><fmt:formatNumber value="${listHotdealwmp.price}" pattern="#,###" /></span> 
													<span class="unit">원</span>
												</span>
											</div>
										</div>
									</a>
								</div>
							</c:forEach>
						</div>
					</div>
					<div class="tab-pane fade" id="tmon" role="tabpanel" aria-labelledby="tmon-tab" tabindex="0">
						<div class="deal-list">
							<!-- top10 딜영역 -->
							<c:forEach items="${listHotdealtmon}" var="listHotdealtmon" varStatus="status">
									<div class="deal">
										<a href="javascript:goView('${listHotdealtmon.seq }')">
											<div class="img">
												<img src="${listHotdealtmon.path}${listHotdealtmon.uuidName}">
											</div>
											<div class="areas">
												<div class="title"><c:out value="${listHotdealtmon.title}"/></div>
												<div class="prices">
													<span class="left"> 
														<span class="num"><c:out value="${listHotdealtmon.discount}"/></span>
														<c:choose>
															<c:when test="${listHotdealtmon.discount eq null }"></c:when>
															<c:otherwise><span class="unit">%</span></c:otherwise>
														</c:choose>
													</span> 
													<span class="right"> 
														<span class="num"><fmt:formatNumber value="${listHotdealtmon.price}" pattern="#,###" /></span> 
														<span class="unit">원</span>
													</span>
												</div>
											</div>
										</a>
									</div>
							</c:forEach>
						</div>
					</div>
					<div class="tab-pane fade" id="eleven" role="tabpanel" aria-labelledby="11st-tab" tabindex="0">
						<div class="deal-list">
							<!-- top10 딜영역 -->
							<c:forEach items="${listHotdeal11st}" var="listHotdeal11st" varStatus="status">
									<div class="deal">
										<a href="javascript:goView('${listHotdeal11st.seq }')">
											<div class="img">
												<img src="${listHotdeal11st.path}${listHotdeal11st.uuidName}">
											</div>
											<div class="areas">
												<div class="title"><c:out value="${listHotdeal11st.title}"/></div>
												<div class="prices">
													<span class="left"> 
														<span class="num"><c:out value="${listHotdeal11st.discount}"/></span>
														<c:choose>
															<c:when test="${listHotdeal11st.discount eq null }"></c:when>
															<c:otherwise><span class="unit">%</span></c:otherwise>
														</c:choose>
													</span> 
													<span class="right"> 
														<span class="num"><fmt:formatNumber value="${listHotdeal11st.price}" pattern="#,###" /></span> 
														<span class="unit">원</span>
													</span>
												</div>
											</div>
										</a>
									</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- //실시간 핫딜 TOP5 -->
		
		<!-- 베스트 -->
		<div class="section group-best">
			<div class="inner">
				<div class="title">베스트</div>
				<div class="contents" style="overflow-anchor: none;">
					<!-- 베스트 딜리스트 -->
					<div class="deal-list" id="dealListDiv">
						<c:forEach items="${listBest}" var="listBest" varStatus="status">
						<div class="deal">
							<a href="javascript:goView('${listBest.seq }')">
								<div class="deal-inner-wrap">
									<div class="deal-inner">
										<div class="img">
											<img src="${listBest.path}${listBest.uuidName}">
										</div>
										<div class="areas">
											<div class="title"><c:out value="${listBest.title}"/></div>
											<div class="prices">
												<span class="left"> 
													<span class="num"><c:out value="${listBest.discount}"/></span>
													<c:choose>
														<c:when test="${listBest.discount eq null }"></c:when>
														<c:otherwise><span class="unit">%</span></c:otherwise>
													</c:choose>
												</span> 
												<span class="right"> 
													<span class="num"><fmt:formatNumber value="${listBest.price}" pattern="#,###" /></span>
													<span class="unit">원</span>
												</span>
											</div>
										</div>
										<c:choose>
											<c:when test="${listBest.shoppingsite eq 48 }">
												<div class="aside">
													<span class="pay"> 
														<span class="easy-pay">
															<img src="http://images.coocha.co.kr/static/images/deal/easypay/spay-1.png?20200604" alt="">
														</span>
													</span> 
													<span class="shopping-mall">위메프</span>
												</div>
											</c:when>
											<c:when test="${listBest.shoppingsite eq 49 }">
												<div class="aside">
													<span class="pay"> 
														<span class="easy-pay">
															<img src="http://images.coocha.co.kr/static/images/deal/easypay/spay-11.png?20200604" alt="">
														</span>
													</span> 
													<span class="shopping-mall">티몬</span>
												</div>
											</c:when>
											<c:otherwise>
												<div class="aside">
													<span class="pay"> 
														<span class="easy-pay">
															<img src="http://images.coocha.co.kr/static/images/deal/easypay/spay-13.png?20200604" alt="">
														</span>
													</span>
													<span class="shopping-mall">11번가 쇼킹딜</span>
												</div>
											</c:otherwise>
										</c:choose>
									</div>
								</div>
							</a>
						</div>
						</c:forEach>
					</div>
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
	
	<!-- footer s -->
	<%@include file="../../../common/xdmin/includeV1/footer.jsp"%>
	<!-- footer e -->
	
	<!-- 탑으로 -->
	<a href="#top" class="btn-go-top" data-scid="2227"><span class="blind">탑으로</span></a>
	<!-- //탑으로 -->
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://kit.fontawesome.com/7d63ec3c0a.js" crossorigin="anonymous"></script>
	
	<script type="text/javascript">
	
		var goUrlSearch = "/item/mainSearch";
		var goUrlView = "/item/itemView";
		
		var form = $("form[name=formList]");
		var seq = $("input:hidden[name=seq]");
		
		/* $("#shOption option:eq(1)").prop("selected", true); */
		
		enterKey = function() {
			
			var keycode = event.keyCode;
			
			if(keycode == 13) { //Enter
				goSearch();
			}
		}
		
		goSearch = function() {
			form.attr("action", goUrlSearch).submit();
		}
		
		goView = function(pseq) {
			seq.val(pseq);
			form.attr("action", goUrlView).submit();
		}
	
	</script>
	
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
	
/* 	
		$("#searchbtn").on("click", function(){
			if(validationList() == false) return false;
			form.attr("action", goUrlList).submit();
		});
*/

	</script>
	
</body>
</html>