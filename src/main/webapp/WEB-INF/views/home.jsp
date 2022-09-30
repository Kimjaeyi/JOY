<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

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
	    right: 300px;
	    color: white;
	    padding: 10px 10px 9px;
	    font-weight: bold;
	    line-height: 1.5s7;
	    text-align: center;
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
	
	.managerLogin .managebtn {
		width: 65px;
		display: inline-block;
		position: absolute;
	    top: 35px;
	    right: 300px;
	    color: white;
	    padding: 10px 10px 9px;
	    font-weight: bold;
	    line-height: 1.5s7;
	    text-align: center;
	}
 */	
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

		<!-- 카테고리 -->
		<div class="group-menu">
			<div class="inner">
				<ul class="menu-1depth">
					<li><a href="#" class="on" data-tab="fashion" value="8">패션 · 뷰티</a></li>
					<li><a href="#" data-tab="shopping" value="9">쇼핑</a></li>
					<li><a href="#" data-tab="restaurant" value="E">맛집</a></li>
					<li><a href="#" data-tab="beauty" value="D">뷰티샵</a></li>
					<li><a href="#" data-tab="travel" value="T">여행</a></li>
					<li><a href="#" data-tab="culture" value="C">문화</a></li>
				</ul>

				<div class="menu-list">
					<!-- 패션뷰티 -->
					<div class="cate-con fashion on" value="8">
						<ul class="list">
							<li>
								<div class="menu-2depth">여성의류</div>
								<ul class="menu-3depth">
									<li>티셔츠</li>
									<li>블라우스/셔츠</li>
									<li>오피스룩/세트</li>
									<li>니트/스웨터</li>
									<li>원피스</li>
									<li>스커트</li>
									<li>바지</li>
									<li>재킷</li>
									<li>코트</li>
									<li>점퍼</li>
									<li>가디건</li>
									<li>조끼</li>
									<li>테마의류</li>
								</ul>
							</li>
							<li>
								<div class="menu-2depth">남성의류</div>
								<ul class="menu-3depth">
									<li>티셔츠</li>
									<li>셔츠</li>
									<li>니트/스웨터</li>
									<li>정장</li>
									<li>바지</li>
									<li>재킷</li>
									<li>코트</li>
									<li>점퍼</li>
									<li>가디건</li>
									<li>조끼</li>
									<li>테마의류</li>
								</ul>
							</li>
							<li>
								<div class="menu-2depth">패션잡화</div>
								<ul class="menu-3depth">
									<li>신발</li>
									<li>모자/헤어액세서리</li>
									<li>지갑/벨트</li>
									<li>가방</li>
									<li>시계</li>
									<li>선글라스/안경테</li>
									<li>주얼리/액세서리</li>
									<li>양말</li>
									<li>스카프/손수건</li>
									<li>우산/양산</li>
									<li>장갑</li>
								</ul>
							</li>
							<li>
								<div class="menu-2depth">뷰티</div>
								<ul class="menu-3depth">
									<li>스킨케어</li>
									<li>선케어</li>
									<li>베이스메이크업</li>
									<li>색조메이크업</li>
									<li>클렌징</li>
									<li>메이크업소품</li>
									<li>남성화장품</li>
									<li>바디케어</li>
									<li>헤어케어</li>
									<li>향수</li>
								</ul>
							</li>
							<li>
								<div class="menu-2depth">스포츠패션</div>
							</li>
							<li>
								<div class="menu-2depth">여성웨어/잠옷</div>
							</li>
							<li>
								<div class="menu-2depth">시즌의류</div>
							</li>
						</ul>
					</div>
					<!-- //패션뷰티 -->

					<!-- 쇼핑 -->
					<div class="cate-con shopping" value="9">
						<ul class="list">
							<li>
								<div class="menu-2depth">식품건강</div>
								<ul class="menu-3depth">
									<li>농산물</li>
									<li>축산물</li>
									<li>수산물</li>
									<li>생수/음료</li>
									<li>발효식품/소스</li>
									<li>홍삼/건강식품</li>
								</ul>
							</li>
							<li>
								<div class="menu-2depth">가구 / 인테리어</div>
								<ul class="menu-3depth">
									<li>침실가구</li>
									<li>거실가구</li>
									<li>주방가구</li>
									<li>사무/학생용품</li>
									<li>수납가구</li>
									<li>침구</li>
								</ul>
							</li>
							<li>
								<div class="menu-2depth">레저 / 자동차</div>
								<ul class="menu-3depth">
									<li>자동차용품</li>
									<li>오토바이용품</li>
									<li>골프용품</li>
									<li>자전거용품</li>
									<li>스키/보드용품</li>
									<li>헬스/다이어트</li>
								</ul>
							</li>
							<li>
								<div class="menu-2depth">생활 / 주방</div>
								<ul class="menu-3depth">
									<li>주방/식기</li>
									<li>욕실용품</li>
									<li>세제/세탁용품</li>
									<li>청소용품</li>
									<li>생활용품</li>
									<li>문구/사무/용지</li>
								</ul>
							</li>
							<li>
								<div class="menu-2depth">유아</div>
								<ul class="menu-3depth">
									<li>임산부용품</li>
									<li>기저귀/물티슈</li>
									<li>수유/이유용품</li>
									<li>분유/이유식</li>
									<li>유모차/카시트/외출</li>
									<li>유아동패션</li>
								</ul>
							</li>
							<li>
								<div class="menu-2depth">디지털 / 가전</div>
								<ul class="menu-3depth">
									<li>휴대폰/휴대기기</li>
									<li>카메라/캠코더</li>
									<li>TV/영상가전</li>
									<li>음향가전</li>
									<li>컴퓨터/주변기기</li>
									<li>냉장고/주방가전</li>
								</ul>
							</li>
							<li>
								<div class="menu-2depth">선물 / e쿠폰 / 상품권</div>
								<ul class="menu-3depth">
									<li>선물/이벤트</li>
									<li>카페</li>
									<li>베이커리/아이스크림</li>
									<li>패스트푸드</li>
									<li>백화점상품권</li>
									<li>도서/문화상품권</li>
								</ul>
							</li>
							<li>
								<div class="menu-2depth">중고차</div>
								<ul class="menu-3depth">
									<li>국산차</li>
									<li>수입차</li>
								</ul>
							</li>
							<li>
								<div class="menu-2depth">해외쇼핑</div>
							</li>
						</ul>
					</div>
					<!-- //쇼핑 -->

					<!-- 맛집 -->
					<div class="cate-con restaurant" value="E">
						<ul class="list">
							<li>
								<div class="menu-2depth">카페</div>
								<ul class="menu-3depth">
									<li>카페</li>
									<li>베이커리/빵</li>
									<li>아이스크림/빙수</li>
									<li>케이크/초콜릿</li>
									<li>전통차/떡</li>
								</ul>
							</li>
							<li>
								<div class="menu-2depth">식사</div>
								<ul class="menu-3depth">
									<li>뷔페식</li>
									<li>한식</li>
									<li>양식</li>
									<li>일식</li>
									<li>아시아/기타식</li>
									<li>중식</li>
								</ul>
							</li>
							<li>
								<div class="list no-3depth">
									<div class="menu-2depth">배달</div>
								</div>
							</li>
						</ul>
					</div>
					<!-- //맛집 -->

					<!-- 뷰티샵 -->
					<div class="cate-con beauty" value="D">
						<ul class="list">
							<li>
								<div class="menu-2depth">피부샵</div>
								<ul class="menu-3depth">
									<li>에스테틱</li>
									<li>여드름/케어관리</li>
									<li>테라피</li>
									<li>미백/화이트닝</li>
								</ul>
							</li>
							<li>
								<div class="menu-2depth">미용/네일샵</div>
								<ul class="menu-3depth">
									<li>네일아트/케어</li>
									<li>속눈썹</li>
									<li>왁싱</li>
									<li>메이크업</li>
									<li>태닝</li>
								</ul>
							</li>
							<li>
								<div class="menu-2depth">마사지</div>
								<ul class="menu-3depth">
									<li>스포츠마사지</li>
									<li>경락/체형관리</li>
									<li>다이어트</li>
								</ul>
							</li>
							<li>
								<div class="menu-2depth">헤어샵</div>
								<ul class="menu-3depth">
									<li>염색</li>
									<li>펌</li>
									<li>케어</li>
									<li>컷트</li>
								</ul>
							</li>
						</ul>
					</div>
					<!-- //뷰티샵 -->

					<!-- 여행 -->
					<div class="cate-con travel" value="T">
						<ul class="list">
							<li>
								<div class="menu-2depth">제주여행</div>
								<ul class="menu-3depth">
									<li>편도항공권</a></li>
									<li>왕복항공권</a></li>
									<li>지방출발항공권</a></li>
									<li>렌터카</a></li>
									<li>제주호텔</a></li>
									<li>제주리조트</a></li>
									<li제주펜션
									</a>
							</li>
							<li>글램핑/캠핑</a></li>
							<li>게스트하우스</a></li>
							<li>레저/입장권</a></li>
							<li>맛집/카페</a></li>
							<li>여행패키지</a></li>
						</ul>
						</li>
						<li>
							<div class="menu-2depth">국내여행</div>
							<ul class="menu-3depth">
								<li>레저</li>
								<li>테마파크</li>
								<li>워터파크/스파</li>
								<li>호텔</li>
								<li>펜션</li>
								<li>글램핑/캠핑</li>
								<li>게스트하우스</li>
								<li>모텔</li>
								<li>리조트</li>
								<li>국내렌터카</li>
								<li>내륙여행</li>
								<li>스키장</li>
								<li>관광지/입장권</li>
							</ul>
						</li>
						<li>
							<div class="menu-2depth">해외항공권</div>
							<ul class="menu-3depth">
								<li>일본</li>
								<li>홍콩/마카오</li>
								<li>중국/대만</li>
								<li>동남아</li>
								<li>괌/사이판/호주</li>
								<li>미주/하와이/중남미</li>
								<li>유럽/기타</li>
							</ul>
						</li>
						<li>
							<div class="menu-2depth">해외패키지/자유</div>
							<ul class="menu-3depth">
								<li>일본</li>
								<li>홍콩/마카오</li>
								<li>중국/대만</li>
								<li>동남아</li>
								<li>괌/사이판/호주</li>
								<li>미주/하와이/중남미</li>
								<li>유럽/기타</li>
								<li>부산/지방출발</li>
							</ul>
						</li>
						<li>
							<div class="menu-2depth">해외호텔/숙박</div>
						</li>
						<li>
							<div class="menu-2depth">와이파이/유심</div>
						</li>
						<li>
							<div class="menu-2depth">해외투어/입장권</div>
						</li>
						</ul>
					</div>
					<!-- //여행 -->

					<!-- 문화 -->
					<div class="cate-con culture" value="C">
						<ul class="list">
							<li>
								<div class="menu-2depth">공연/전시</div>
								<ul class="menu-3depth">
									<li>연극</li>
									<li>뮤지컬</li>
									<li>콘서트</li>
									<li>공연</li>
									<li>전시</li>
									<li>스포츠</li>
									<li>체험</li>
								</ul>
							</li>
							<li>
								<div class="menu-2depth">생활서비스</div>
								<ul class="menu-3depth">
									<li>키즈카페/놀이방</li>
									<li>찜질방/사우나</li>
									<li>자동차</li>
									<li>포토스튜디오</li>
									<li>멀티방/노래방</li>
									<li>웨딩/돌잔치</li>
									<li>의류/잡화매장</li>
								</ul>
							</li>
							<li>
								<div class="menu-2depth">교육서비스</div>
								<ul class="menu-3depth">
									<li>어학</li>
									<li>강습</li>
									<li>컨설팅</li>
								</ul>
							</li>
						</ul>
					</div>
					<!-- //문화 -->

					<div class="bottom">
						<a href="javascript:;" onclick="viewCategoryAll($(this).attr('cid'))" data-scid="406005" data-cid="8" class="link-categoty-all" cid="8">
							<span class="cate">패션 · 뷰티</span> 
						카테고리 전체보기</a>
					</div>
				</div>
			</div>
		</div>
		<!-- 카테고리 -->
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

		<!-- 실시간 핫딜 TOP10 -->
		<div class="section group-top10">
			<div class="inner">
				<div class="title">실시간 핫딜 TOP 10</div>
				<div class="deal-tab">
					<div class="tab-1depth">
						<!-- top10 업체영역 -->
						<ul id="topDealShopList">
							<li><a href="#" class="top-WEMAKEPRICE on" onclick="showTab('wmplist');">위메프</a></li>
							<li><a href="javascript:topDealShopClick('ticketmonster', '2');" class="top-ticketmonster">티몬</a></li>
							<li><a href="javascript:topDealShopClick('11st', '3');" class="top-11st">11번가</a></li>
						</ul>
							<!-- //top10 업체영역 -->
					</div>
				</div>
				<div class="contents" id="wmplist">
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
		<!-- //실시간 핫딜 TOP10 -->

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
	
	</script>
	
</body>
</html>
