<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>
<%@ page session="false"%>
<html>
<head>
<title>쿠차 | 시간을 줄여주는 쇼핑검색</title>
<script src="https://kit.fontawesome.com/15c84217dd.js"
	crossorigin="anonymous"></script>
<!-- Bootstrap CSS -->
<link
	href="/resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Bootstrap extra CSS -->
<link href="/resources/xdmin/css/bootstrap/sidebars.css"
	rel="stylesheet">
<!-- jquery ui CSS -->
<link
	href="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css"
	rel="stylesheet">
<!-- user css -->
<link rel="stylesheet" href="/resources/xdmin/css/commonXdmin.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<link rel="shortcut icon" type="image/x-icon"
	href="https://cdn.icon-icons.com/icons2/2091/PNG/512/settings_icon_128522.png">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<link rel="stylesheet"
	href="http://images.coocha.co.kr/static/css/coocha.css?ver=2022082209" />
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
</head>

<body>

	<!-- 헤더 -->
	<header class="main-header" id="top">
		<!-- main에 붙는 경우 :: main-header 클래스 추가 -->
		<div class="header">
			<div class="inner">
				<h1 class="logo">
					<a href="Mainpage.html" data-scid="2220"><span class="blind">COOCHA</span></a>
					<span class="title-category">카테고리</span>
				</h1>

				<div class="search">
					<div class="search-input">
						<input type="search" class="input">
					</div>
					<div class="search-results" style="display: none">
						<ul class="search-tab">
							<li><a href="javascript:void(0);" class="on"
								data-tab="recent-searches">최근검색어</a></li>
							<li><a href="javascript:void(0);"
								data-tab="popular-searches">인기검색어</a></li>
						</ul>
						<div class="search-tab-con recent-searches on">
							<ul>
								<li><span class="no-word">최근 검색어가 없습니다.</span></li>
							</ul>
							<div class="btns">
								<a href="javascript:void(0);" class="btn-all-delete">전체삭제</a>
							</div>
						</div>
						<div class="search-tab-con popular-searches">
							<ul>
							</ul>
							<div class="btns">
								<a href="javascript:void(0);" class="btn-prev"><span
									class="blind">이전</span></a> <a href="javascript:void(0);"
									class="btn-next"><span class="blind">다음</span></a>
							</div>
						</div>
						<ul class="related-searches"></ul>
						<ul class="category-searches"></ul>
					</div>
					<!-- //검색어 미 입력 시 :: 인풋창에 마우스 클릭만 한 경우 -->
				</div>

				<div class="hamburger">
					<div class="hamburger-box">
						<div class="hamburger-inner"></div>
					</div>
				</div>

				<!-- 로그인 전 -->
				<ul class="gnb">
					<li><a href="../member/LoginForm.html" class="btn-login">로그인</a>
					</li>
					<li><a href="javascript:void(0);" class="btn-like"><span
							class="blind">좋아요</span></a></li>
					<li><a href="javascript:void(0);"
						class="btn-sc btn-layer-open"><span class="blind">더보기</span></a>
						<div class="area-servic-center area-gnb-layer">
							<div class="title">고객센터</div>
							<ul>
								<li><a href="/customer/boardList">공지사항</a></li>
								<li><a href="/customer/faqList">FAQ</a></li>
								<li><a href="/customer/inquiryList">1:1 문의</a></li>
							</ul>
						</div></li>
				</ul>
				<!-- 로그인 전 -->
				<!-- 로그인 후 -->
				<!-- 로그인 후 -->
			</div>
		</div>

		<!-- 카테고리 -->
		<div class="group-menu">
			<div class="inner">
				<ul class="menu-1depth">
					<li><a href="#" class="on" data-tab="fashion" value="8">패션
							· 뷰티</a></li>
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
								<div class="menu-2depth">
									<a href="/search/searchDealList?cid=9_51&area=C"
										data-scid="406004" data-cid="9_51">여성의류</a>
								</div>
								<ul class="menu-3depth">
									<li>티셔츠</li>
									<li><a href="/search/searchDealList?cid=9_51_02&area=C"
										data-scid="406004" data-cid="9_51_02">블라우스/셔츠</a></li>
									<li><a href="/search/searchDealList?cid=9_51_13&area=C"
										data-scid="406004" data-cid="9_51_13">오피스룩/세트</a></li>
									<li><a href="/search/searchDealList?cid=9_51_03&area=C"
										data-scid="406004" data-cid="9_51_03">니트/스웨터</a></li>
									<li><a href="/search/searchDealList?cid=9_51_04&area=C"
										data-scid="406004" data-cid="9_51_04">원피스</a></li>
									<li><a href="/search/searchDealList?cid=9_51_05&area=C"
										data-scid="406004" data-cid="9_51_05">스커트</a></li>
									<li><a href="/search/searchDealList?cid=9_51_06&area=C"
										data-scid="406004" data-cid="9_51_06">바지</a></li>
									<li><a href="/search/searchDealList?cid=9_51_07&area=C"
										data-scid="406004" data-cid="9_51_07">재킷</a></li>
									<li><a href="/search/searchDealList?cid=9_51_08&area=C"
										data-scid="406004" data-cid="9_51_08">코트</a></li>
									<li><a href="/search/searchDealList?cid=9_51_09&area=C"
										data-scid="406004" data-cid="9_51_09">점퍼</a></li>
									<li><a href="/search/searchDealList?cid=9_51_10&area=C"
										data-scid="406004" data-cid="9_51_10">가디건</a></li>
									<li><a href="/search/searchDealList?cid=9_51_11&area=C"
										data-scid="406004" data-cid="9_51_11">조끼</a></li>
									<li><a href="/search/searchDealList?cid=9_51_12&area=C"
										data-scid="406004" data-cid="9_51_12">테마의류</a></li>
								</ul>
							</li>
							<li>
								<div class="menu-2depth">
									<a href="/search/searchDealList?cid=9_52&area=C"
										data-scid="406004" data-cid="9_52">남성의류</a>
								</div>
								<ul class="menu-3depth">
									<li><a href="/search/searchDealList?cid=9_52_01&area=C"
										data-scid="406004" data-cid="9_52_01">티셔츠</a></li>
									<li><a href="/search/searchDealList?cid=9_52_02&area=C"
										data-scid="406004" data-cid="9_52_02">셔츠</a></li>
									<li><a href="/search/searchDealList?cid=9_52_03&area=C"
										data-scid="406004" data-cid="9_52_03">니트/스웨터</a></li>
									<li><a href="/search/searchDealList?cid=9_52_04&area=C"
										data-scid="406004" data-cid="9_52_04">정장</a></li>
									<li><a href="/search/searchDealList?cid=9_52_05&area=C"
										data-scid="406004" data-cid="9_52_05">바지</a></li>
									<li><a href="/search/searchDealList?cid=9_52_06&area=C"
										data-scid="406004" data-cid="9_52_06">재킷</a></li>
									<li><a href="/search/searchDealList?cid=9_52_07&area=C"
										data-scid="406004" data-cid="9_52_07">코트</a></li>
									<li><a href="/search/searchDealList?cid=9_52_08&area=C"
										data-scid="406004" data-cid="9_52_08">점퍼</a></li>
									<li><a href="/search/searchDealList?cid=9_52_09&area=C"
										data-scid="406004" data-cid="9_52_09">가디건</a></li>
									<li><a href="/search/searchDealList?cid=9_52_10&area=C"
										data-scid="406004" data-cid="9_52_10">조끼</a></li>
									<li><a href="/search/searchDealList?cid=9_52_11&area=C"
										data-scid="406004" data-cid="9_52_11">테마의류</a></li>
								</ul>
							</li>
							<li>
								<div class="menu-2depth">
									<a href="/search/searchDealList?cid=9_55&area=C"
										data-scid="406004" data-cid="9_55">패션잡화</a>
								</div>
								<ul class="menu-3depth">
									<li><a href="/search/searchDealList?cid=9_55_01&area=C"
										data-scid="406004" data-cid="9_55_01">신발</a></li>
									<li><a href="/search/searchDealList?cid=9_55_02&area=C"
										data-scid="406004" data-cid="9_55_02">모자/헤어액세서리</a></li>
									<li><a href="/search/searchDealList?cid=9_55_03&area=C"
										data-scid="406004" data-cid="9_55_03">지갑/벨트</a></li>
									<li><a href="/search/searchDealList?cid=9_55_04&area=C"
										data-scid="406004" data-cid="9_55_04">가방</a></li>
									<li><a href="/search/searchDealList?cid=9_55_05&area=C"
										data-scid="406004" data-cid="9_55_05">시계</a></li>
									<li><a href="/search/searchDealList?cid=9_55_06&area=C"
										data-scid="406004" data-cid="9_55_06">선글라스/안경테</a></li>
									<li><a href="/search/searchDealList?cid=9_55_07&area=C"
										data-scid="406004" data-cid="9_55_07">주얼리/액세서리</a></li>
									<li><a href="/search/searchDealList?cid=9_55_08&area=C"
										data-scid="406004" data-cid="9_55_08">양말</a></li>
									<li><a href="/search/searchDealList?cid=9_55_09&area=C"
										data-scid="406004" data-cid="9_55_09">스카프/손수건</a></li>
									<li><a href="/search/searchDealList?cid=9_55_10&area=C"
										data-scid="406004" data-cid="9_55_10">우산/양산</a></li>
									<li><a href="/search/searchDealList?cid=9_55_11&area=C"
										data-scid="406004" data-cid="9_55_11">장갑</a></li>
								</ul>
							</li>
							<li>
								<div class="menu-2depth">
									<a href="/search/searchDealList?cid=9_56&area=C"
										data-scid="406004" data-cid="9_56">뷰티</a>
								</div>
								<ul class="menu-3depth">
									<li><a href="/search/searchDealList?cid=9_56_01&area=C"
										data-scid="406004" data-cid="9_56_01">스킨케어</a></li>
									<li><a href="/search/searchDealList?cid=9_56_02&area=C"
										data-scid="406004" data-cid="9_56_02">선케어</a></li>
									<li><a href="/search/searchDealList?cid=9_56_03&area=C"
										data-scid="406004" data-cid="9_56_03">베이스메이크업</a></li>
									<li><a href="/search/searchDealList?cid=9_56_04&area=C"
										data-scid="406004" data-cid="9_56_04">색조메이크업</a></li>
									<li><a href="/search/searchDealList?cid=9_56_05&area=C"
										data-scid="406004" data-cid="9_56_05">클렌징</a></li>
									<li><a href="/search/searchDealList?cid=9_56_06&area=C"
										data-scid="406004" data-cid="9_56_06">메이크업소품</a></li>
									<li><a href="/search/searchDealList?cid=9_56_07&area=C"
										data-scid="406004" data-cid="9_56_07">남성화장품</a></li>
									<li><a href="/search/searchDealList?cid=9_56_08&area=C"
										data-scid="406004" data-cid="9_56_08">바디케어</a></li>
									<li><a href="/search/searchDealList?cid=9_56_09&area=C"
										data-scid="406004" data-cid="9_56_09">헤어케어</a></li>
									<li><a href="/search/searchDealList?cid=9_56_10&area=C"
										data-scid="406004" data-cid="9_56_10">향수</a></li>
								</ul>
							</li>
							<li>
								<div class="menu-2depth">
									<a href="/search/searchDealList?cid=9_53&area=C"
										data-scid="406004" data-cid="9_53">스포츠패션</a>
								</div>
							</li>
							<li>
								<div class="menu-2depth">
									<a href="/search/searchDealList?cid=9_54&area=C"
										data-scid="406004" data-cid="9_54">여성웨어/잠옷</a>
								</div>
							</li>
							<li>
								<div class="menu-2depth">
									<a href="/search/searchDealList?cid=9_69&area=C"
										data-scid="406004" data-cid="9_69">시즌의류</a>
								</div>
							</li>
						</ul>
					</div>
					<!-- //패션뷰티 -->

					<!-- 쇼핑 -->
					<div class="cate-con shopping" value="9">
						<ul class="list">
							<li>
								<div class="menu-2depth">
									<a href="/search/searchDealList?cid=9_57&area=C"
										data-scid="406004" data-cid="9_57">식품건강</a>
								</div>
								<ul class="menu-3depth">
									<li><a href="/search/searchDealList?cid=9_57_01&area=C"
										data-scid="406004" data-cid="9_57_01">농산물</a></li>
									<li><a href="/search/searchDealList?cid=9_57_02&area=C"
										data-scid="406004" data-cid="9_57_02">축산물</a></li>
									<li><a href="/search/searchDealList?cid=9_57_03&area=C"
										data-scid="406004" data-cid="9_57_03">수산물</a></li>
									<li><a href="/search/searchDealList?cid=9_57_04&area=C"
										data-scid="406004" data-cid="9_57_04">생수/음료</a></li>
									<li><a href="/search/searchDealList?cid=9_57_06&area=C"
										data-scid="406004" data-cid="9_57_06">발효식품/소스</a></li>
									<li><a href="/search/searchDealList?cid=9_57_07&area=C"
										data-scid="406004" data-cid="9_57_07">홍삼/건강식품</a></li>
								</ul>
							</li>
							<li>
								<div class="menu-2depth">
									<a href="/search/searchDealList?cid=9_60&area=C"
										data-scid="406004" data-cid="9_60">가구 / 인테리어</a>
								</div>
								<ul class="menu-3depth">
									<li><a href="/search/searchDealList?cid=9_60_01&area=C"
										data-scid="406004" data-cid="9_60_01">침실가구</a></li>
									<li><a href="/search/searchDealList?cid=9_60_02&area=C"
										data-scid="406004" data-cid="9_60_02">거실가구</a></li>
									<li><a href="/search/searchDealList?cid=9_60_03&area=C"
										data-scid="406004" data-cid="9_60_02">주방가구</a></li>
									<li><a href="/search/searchDealList?cid=9_60_04&area=C"
										data-scid="406004" data-cid="9_60_04">사무/학생용품</a></li>
									<li><a href="/search/searchDealList?cid=9_60_05&area=C"
										data-scid="406004" data-cid="9_60_05">수납가구</a></li>
									<li><a href="/search/searchDealList?cid=9_60_06&area=C"
										data-scid="406004" data-cid="9_60_06">침구</a></li>
								</ul>
							</li>
							<li>
								<div class="menu-2depth">
									<a href="/search/searchDealList?cid=9_62&area=C"
										data-scid="406004" data-cid="9_62">레저 / 자동차</a>
								</div>
								<ul class="menu-3depth">
									<li><a href="/search/searchDealList?cid=9_62_01&area=C"
										data-scid="406004" data-cid="9_62_01">자동차용품</a></li>
									<li><a href="/search/searchDealList?cid=9_62_02&area=C"
										data-scid="406004" data-cid="9_62_02">오토바이용품</a></li>
									<li><a href="/search/searchDealList?cid=9_62_03&area=C"
										data-scid="406004" data-cid="9_62_03">골프용품</a></li>
									<li><a href="/search/searchDealList?cid=9_62_04&area=C"
										data-scid="406004" data-cid="9_62_04">자전거용품</a></li>
									<li><a href="/search/searchDealList?cid=9_62_05&area=C"
										data-scid="406004" data-cid="9_62_05">스키/보드용품</a></li>
									<li><a href="/search/searchDealList?cid=9_62_07&area=C"
										data-scid="406004" data-cid="9_62_07">헬스/다이어트</a></li>
								</ul>
							</li>
							<li>
								<div class="menu-2depth">
									<a href="/search/searchDealList?cid=9_64&area=C"
										data-scid="406004" data-cid="9_64">생활 / 주방</a>
								</div>
								<ul class="menu-3depth">
									<li><a href="/search/searchDealList?cid=9_64_01&area=C"
										data-scid="406004" data-cid="9_64_01">주방/식기</a></li>
									<li><a href="/search/searchDealList?cid=9_64_02&area=C"
										data-scid="406004" data-cid="9_64_02">욕실용품</a></li>
									<li><a href="/search/searchDealList?cid=9_64_03&area=C"
										data-scid="406004" data-cid="9_64_03">세제/세탁용품</a></li>
									<li><a href="/search/searchDealList?cid=9_64_04&area=C"
										data-scid="406004" data-cid="9_64_04">청소용품</a></li>
									<li><a href="/search/searchDealList?cid=9_64_05&area=C"
										data-scid="406004" data-cid="9_64_05">생활용품</a></li>
									<li><a href="/search/searchDealList?cid=9_64_07&area=C"
										data-scid="406004" data-cid="9_64_07">문구/사무/용지</a></li>
								</ul>
							</li>
							<li>
								<div class="menu-2depth">
									<a href="/search/searchDealList?cid=9_58&area=C"
										data-scid="406004" data-cid="9_58">유아</a>
								</div>
								<ul class="menu-3depth">
									<li><a href="/search/searchDealList?cid=9_58_01&area=C"
										data-scid="406004" data-cid="9_58_01">임산부용품</a></li>
									<li><a href="/search/searchDealList?cid=9_58_02&area=C"
										data-scid="406004" data-cid="9_58_02">기저귀/물티슈</a></li>
									<li><a href="/search/searchDealList?cid=9_58_03&area=C"
										data-scid="406004" data-cid="9_58_03">수유/이유용품</a></li>
									<li><a href="/search/searchDealList?cid=9_58_04&area=C"
										data-scid="406004" data-cid="9_58_04">분유/이유식</a></li>
									<li><a href="/search/searchDealList?cid=9_58_06&area=C"
										data-scid="406004" data-cid="9_58_06">유모차/카시트/외출</a></li>
									<li><a href="/search/searchDealList?cid=9_58_07&area=C"
										data-scid="406004" data-cid="9_58_07">유아동패션</a></li>
								</ul>
							</li>
							<li>
								<div class="menu-2depth">
									<a href="/search/searchDealList?cid=9_61&area=C"
										data-scid="406004" data-cid="9_61">디지털 / 가전</a>
								</div>
								<ul class="menu-3depth">
									<li><a href="/search/searchDealList?cid=9_61_01&area=C"
										data-scid="406004" data-cid="9_61_01">휴대폰/휴대기기</a></li>
									<li><a href="/search/searchDealList?cid=9_61_02&area=C"
										data-scid="406004" data-cid="9_61_02">카메라/캠코더</a></li>
									<li><a href="/search/searchDealList?cid=9_61_03&area=C"
										data-scid="406004" data-cid="9_61_03">TV/영상가전</a></li>
									<li><a href="/search/searchDealList?cid=9_61_04&area=C"
										data-scid="406004" data-cid="9_61_04">음향가전</a></li>
									<li><a href="/search/searchDealList?cid=9_61_05&area=C"
										data-scid="406004" data-cid="9_61_05">컴퓨터/주변기기</a></li>
									<li><a href="/search/searchDealList?cid=9_61_06&area=C"
										data-scid="406004" data-cid="9_61_06">냉장고/주방가전</a></li>
								</ul>
							</li>
							<li>
								<div class="menu-2depth">
									<a href="/search/searchDealList?cid=9_63&area=C"
										data-scid="406004" data-cid="9_63">선물 / e쿠폰 / 상품권</a>
								</div>
								<ul class="menu-3depth">
									<li><a href="/search/searchDealList?cid=9_63_03&area=C"
										data-scid="406004" data-cid="9_63_03">선물/이벤트</a></li>
									<li><a href="/search/searchDealList?cid=9_63_05&area=C"
										data-scid="406004" data-cid="9_63_05">카페</a></li>
									<li><a href="/search/searchDealList?cid=9_63_06&area=C"
										data-scid="406004" data-cid="9_63_06">베이커리/아이스크림</a></li>
									<li><a href="/search/searchDealList?cid=9_63_07&area=C"
										data-scid="406004" data-cid="9_63_07">패스트푸드</a></li>
									<li><a href="/search/searchDealList?cid=9_63_09&area=C"
										data-scid="406004" data-cid="9_63_09">백화점상품권</a></li>
									<li><a href="/search/searchDealList?cid=9_63_10&area=C"
										data-scid="406004" data-cid="9_63_10">도서/문화상품권</a></li>
								</ul>
							</li>
							<li>
								<div class="menu-2depth">
									<a href="/search/searchDealList?cid=9_71&area=C"
										data-scid="406004" data-cid="9_71">중고차</a>
								</div>
								<ul class="menu-3depth">
									<li><a href="/search/searchDealList?cid=9_71_01&area=C"
										data-scid="406004" data-cid="9_71_01">국산차</a></li>
									<li><a href="/search/searchDealList?cid=9_71_02&area=C"
										data-scid="406004" data-cid="9_71_02">수입차</a></li>
								</ul>
							</li>
							<li>
								<div class="menu-2depth">
									<a href="/search/searchDealList?cid=9_68&area=C"
										data-scid="406004" data-cid="9_68">해외쇼핑</a>
								</div>
							</li>
						</ul>
					</div>
					<!-- //쇼핑 -->

					<!-- 맛집 -->
					<div class="cate-con restaurant" value="E">
						<ul class="list">
							<li>
								<div class="menu-2depth">
									<a href="/search/searchDealList?cid=E_11&area=C"
										data-scid="406004" data-cid="E_11">카페</a>
								</div>
								<ul class="menu-3depth">
									<li><a href="/search/searchDealList?cid=E_11_03&area=C"
										data-scid="406004" data-cid="E_11_03">카페</a></li>
									<li><a href="/search/searchDealList?cid=E_11_01&area=C"
										data-scid="406004" data-cid="E_11_01">베이커리/빵</a></li>
									<li><a href="/search/searchDealList?cid=E_11_04&area=C"
										data-scid="406004" data-cid="E_11_04">아이스크림/빙수</a></li>
									<li><a href="/search/searchDealList?cid=E_11_05&area=C"
										data-scid="406004" data-cid="E_11_05">케이크/초콜릿</a></li>
									<li><a href="/search/searchDealList?cid=E_11_02&area=C"
										data-scid="406004" data-cid="E_11_02">전통차/떡</a></li>
								</ul>
							</li>
							<li>
								<div class="menu-2depth">
									<a href="/search/searchDealList?cid=E_13&area=C"
										data-scid="406004" data-cid="E_13">식사</a>
								</div>
								<ul class="menu-3depth">
									<li><a href="/search/searchDealList?cid=E_13_06&area=C"
										data-scid="406004" data-cid="E_13_06">뷔페식</a></li>
									<li><a href="/search/searchDealList?cid=E_13_01&area=C"
										data-scid="406004" data-cid="E_13_01">한식</a></li>
									<li><a href="/search/searchDealList?cid=E_13_04&area=C"
										data-scid="406004" data-cid="E_13_04">양식</a></li>
									<li><a href="/search/searchDealList?cid=E_13_03&area=C"
										data-scid="406004" data-cid="E_13_03">일식</a></li>
									<li><a href="/search/searchDealList?cid=E_13_05&area=C"
										data-scid="406004" data-cid="E_13_05">아시아/기타식</a></li>
									<li><a href="/search/searchDealList?cid=E_13_02&area=C"
										data-scid="406004" data-cid="E_13_02">중식</a></li>
								</ul>
							</li>
							<li>
								<div class="list no-3depth">
									<div class="menu-2depth">
										<a href="/search/searchDealList?cid=E_12&area=C"
											data-scid="406004" data-cid="E_12">배달</a>
									</div>
								</div>
							</li>
						</ul>
					</div>
					<!-- //맛집 -->

					<!-- 뷰티샵 -->
					<div class="cate-con beauty" value="D">
						<ul class="list">
							<li>
								<div class="menu-2depth">
									<a href="/search/searchDealList?cid=D_11&area=C"
										data-scid="406004" data-cid="D_11">피부샵</a>
								</div>
								<ul class="menu-3depth">
									<li><a href="/search/searchDealList?cid=D_11_01&area=C"
										data-scid="406004" data-cid="D_11_01">에스테틱</a></li>
									<li><a href="/search/searchDealList?cid=D_11_03&area=C"
										data-scid="406004" data-cid="D_11_03">여드름/케어관리</a></li>
									<li><a href="/search/searchDealList?cid=D_11_04&area=C"
										data-scid="406004" data-cid="D_11_04">테라피</a></li>
									<li><a href="/search/searchDealList?cid=D_11_02&area=C"
										data-scid="406004" data-cid="D_11_02">미백/화이트닝</a></li>
								</ul>
							</li>
							<li>
								<div class="menu-2depth">
									<a href="/search/searchDealList?cid=D_12&area=C"
										data-scid="406004" data-cid="D_12">미용/네일샵</a>
								</div>
								<ul class="menu-3depth">
									<li><a href="/search/searchDealList?cid=D_12_01&area=C"
										data-scid="406004" data-cid="D_12_01">네일아트/케어</a></li>
									<li><a href="/search/searchDealList?cid=D_12_05&area=C"
										data-scid="406004" data-cid="D_12_05">속눈썹</a></li>
									<li><a href="/search/searchDealList?cid=D_12_03&area=C"
										data-scid="406004" data-cid="D_12_03">왁싱</a></li>
									<li><a href="/search/searchDealList?cid=D_12_04&area=C"
										data-scid="406004" data-cid="D_12_04">메이크업</a></li>
									<li><a href="/search/searchDealList?cid=D_12_02&area=C"
										data-scid="406004" data-cid="D_12_02">태닝</a></li>
								</ul>
							</li>
							<li>
								<div class="menu-2depth">
									<a href="/search/searchDealList?cid=D_13&area=C"
										data-scid="406004" data-cid="D_13">마사지</a>
								</div>
								<ul class="menu-3depth">
									<li>스포츠마사지</li>
									<li>경락/체형관리</li>
									<li>다이어트</li>
								</ul>
							</li>
							<li>
								<div class="menu-2depth">
									<a href="/search/searchDealList?cid=D_15&area=C"
										data-scid="406004" data-cid="D_15">헤어샵</a>
								</div>
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
								<div class="menu-2depth">
									<a href="/search/searchDealList?cid=T_25&area=C"
										data-scid="406004" data-cid="T_25">제주여행</a>
								</div>
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
							<div class="menu-2depth">
								<a href="/search/searchDealList?cid=T_21&area=C"
									data-scid="406004" data-cid="T_21">국내여행</a>
							</div>
							<ul class="menu-3depth">
								<li><a href="/search/searchDealList?cid=T_21_06&area=C"
									data-scid="406004" data-cid="T_21_06">레저</a></li>
								<li><a href="/search/searchDealList?cid=T_21_07&area=C"
									data-scid="406004" data-cid="T_21_07">테마파크</a></li>
								<li><a href="/search/searchDealList?cid=T_21_09&area=C"
									data-scid="406004" data-cid="T_21_09">워터파크/스파</a></li>
								<li><a href="/search/searchDealList?cid=T_21_10&area=C"
									data-scid="406004" data-cid="T_21_10">호텔</a></li>
								<li><a href="/search/searchDealList?cid=T_21_11&area=C"
									data-scid="406004" data-cid="T_21_11">펜션</a></li>
								<li><a href="/search/searchDealList?cid=T_21_12&area=C"
									data-scid="406004" data-cid="T_21_12">글램핑/캠핑</a></li>
								<li><a href="/search/searchDealList?cid=T_21_13&area=C"
									data-scid="406004" data-cid="T_21_13">게스트하우스</a></li>
								<li><a href="/search/searchDealList?cid=T_21_14&area=C"
									data-scid="406004" data-cid="T_21_14">모텔</a></li>
								<li><a href="/search/searchDealList?cid=T_21_15&area=C"
									data-scid="406004" data-cid="T_21_15">리조트</a></li>
								<li><a href="/search/searchDealList?cid=T_21_03&area=C"
									data-scid="406004" data-cid="T_21_03">국내렌터카</a></li>
								<li><a href="/search/searchDealList?cid=T_21_01&area=C"
									data-scid="406004" data-cid="T_21_01">내륙여행</a></li>
								<li><a href="/search/searchDealList?cid=T_21_08&area=C"
									data-scid="406004" data-cid="T_21_08">스키장</a></li>
								<li><a href="/search/searchDealList?cid=T_21_05&area=C"
									data-scid="406004" data-cid="T_21_05">관광지/입장권</a></li>
							</ul>
						</li>
						<li>
							<div class="menu-2depth">
								<a href="/search/searchDealList?cid=T_26&area=C"
									data-scid="406004" data-cid="T_26">해외항공권</a>
							</div>
							<ul class="menu-3depth">
								<li><a href="/search/searchDealList?cid=T_26_01&area=C"
									data-scid="406004" data-cid="T_26_01">일본</a></li>
								<li><a href="/search/searchDealList?cid=T_26_02&area=C"
									data-scid="406004" data-cid="T_26_02">홍콩/마카오</a></li>
								<li><a href="/search/searchDealList?cid=T_26_03&area=C"
									data-scid="406004" data-cid="T_26_03">중국/대만</a></li>
								<li><a href="/search/searchDealList?cid=T_26_04&area=C"
									data-scid="406004" data-cid="T_26_04">동남아</a></li>
								<li><a href="/search/searchDealList?cid=T_26_05&area=C"
									data-scid="406004" data-cid="T_26_05">괌/사이판/호주</a></li>
								<li><a href="/search/searchDealList?cid=T_26_06&area=C"
									data-scid="406004" data-cid="T_26_06">미주/하와이/중남미</a></li>
								<li><a href="/search/searchDealList?cid=T_26_07&area=C"
									data-scid="406004" data-cid="T_26_07">유럽/기타</a></li>
							</ul>
						</li>
						<li>
							<div class="menu-2depth">
								<a href="/search/searchDealList?cid=T_27&area=C"
									data-scid="406004" data-cid="T_27">해외패키지/자유</a>
							</div>
							<ul class="menu-3depth">
								<li><a href="/search/searchDealList?cid=T_27_01&area=C"
									data-scid="406004" data-cid="T_27_01">일본</a></li>
								<li><a href="/search/searchDealList?cid=T_27_02&area=C"
									data-scid="406004" data-cid="T_27_02">홍콩/마카오</a></li>
								<li><a href="/search/searchDealList?cid=T_27_03&area=C"
									data-scid="406004" data-cid="T_27_03">중국/대만</a></li>
								<li><a href="/search/searchDealList?cid=T_27_04&area=C"
									data-scid="406004" data-cid="T_27_04">동남아</a></li>
								<li><a href="/search/searchDealList?cid=T_27_05&area=C"
									data-scid="406004" data-cid="T_27_05">괌/사이판/호주</a></li>
								<li><a href="/search/searchDealList?cid=T_27_06&area=C"
									data-scid="406004" data-cid="T_27_06">미주/하와이/중남미</a></li>
								<li><a href="/search/searchDealList?cid=T_27_07&area=C"
									data-scid="406004" data-cid="T_27_07">유럽/기타</a></li>
								<li><a href="/search/searchDealList?cid=T_27_08&area=C"
									data-scid="406004" data-cid="T_27_08">부산/지방출발</a></li>
							</ul>
						</li>
						<li>
							<div class="menu-2depth">
								<a href="/search/searchDealList?cid=T_28&area=C"
									data-scid="406004" data-cid="T_28">해외호텔/숙박</a>
							</div>
						</li>
						<li>
							<div class="menu-2depth">
								<a href="/search/searchDealList?cid=T_30&area=C"
									data-scid="406004" data-cid="T_30">와이파이/유심</a>
							</div>
						</li>
						<li>
							<div class="menu-2depth">
								<a href="/search/searchDealList?cid=T_29&area=C"
									data-scid="406004" data-cid="T_29">해외투어/입장권</a>
							</div>
						</li>
						</ul>
					</div>
					<!-- //여행 -->

					<!-- 문화 -->
					<div class="cate-con culture" value="C">
						<ul class="list">
							<li>
								<div class="menu-2depth">
									<a href="/search/searchDealList?cid=C_21&area=C"
										data-scid="406004" data-cid="C_21">공연/전시</a>
								</div>
								<ul class="menu-3depth">
									<li><a href="/search/searchDealList?cid=C_21_01&area=C"
										data-scid="406004" data-cid="C_21_01">연극</a></li>
									<li><a href="/search/searchDealList?cid=C_21_02&area=C"
										data-scid="406004" data-cid="C_21_02">뮤지컬</a></li>
									<li><a href="/search/searchDealList?cid=C_21_03&area=C"
										data-scid="406004" data-cid="C_21_03">콘서트</a></li>
									<li><a href="/search/searchDealList?cid=C_21_04&area=C"
										data-scid="406004" data-cid="C_21_04">공연</a></li>
									<li><a href="/search/searchDealList?cid=C_21_05&area=C"
										data-scid="406004" data-cid="C_21_05">전시</a></li>
									<li><a href="/search/searchDealList?cid=C_21_08&area=C"
										data-scid="406004" data-cid="C_21_08">스포츠</a></li>
									<li><a href="/search/searchDealList?cid=C_21_09&area=C"
										data-scid="406004" data-cid="C_21_09">체험</a></li>
								</ul>
							</li>
							<li>
								<div class="menu-2depth">
									<a href="/search/searchDealList?cid=C_22&area=C"
										data-scid="406004" data-cid="C_22">생활서비스</a>
								</div>
								<ul class="menu-3depth">
									<li><a href="/search/searchDealList?cid=C_22_03&area=C"
										data-scid="406004" data-cid="C_22_03">키즈카페/놀이방</a></li>
									<li><a href="/search/searchDealList?cid=C_22_01&area=C"
										data-scid="406004" data-cid="C_22_01">찜질방/사우나</a></li>
									<li><a href="/search/searchDealList?cid=C_22_07&area=C"
										data-scid="406004" data-cid="C_22_07">자동차</a></li>
									<li><a href="/search/searchDealList?cid=C_22_05&area=C"
										data-scid="406004" data-cid="C_22_05">포토스튜디오</a></li>
									<li><a href="/search/searchDealList?cid=C_22_02&area=C"
										data-scid="406004" data-cid="C_22_02">멀티방/노래방</a></li>
									<li><a href="/search/searchDealList?cid=C_22_06&area=C"
										data-scid="406004" data-cid="C_22_06">웨딩/돌잔치</a></li>
									<li><a href="/search/searchDealList?cid=C_22_04&area=C"
										data-scid="406004" data-cid="C_22_04">의류/잡화매장</a></li>
								</ul>
							</li>
							<li>
								<div class="menu-2depth">
									<a href="/search/searchDealList?cid=C_23&area=C"
										data-scid="406004" data-cid="C_23">교육서비스</a>
								</div>
								<ul class="menu-3depth">
									<li><a href="/search/searchDealList?cid=C_23_01&area=C"
										data-scid="406004" data-cid="C_23_01">어학</a></li>
									<li><a href="/search/searchDealList?cid=C_23_02&area=C"
										data-scid="406004" data-cid="C_23_02">강습</a></li>
									<li><a href="/search/searchDealList?cid=C_23_03&area=C"
										data-scid="406004" data-cid="C_23_03">컨설팅</a></li>
								</ul>
							</li>
						</ul>
					</div>
					<!-- //문화 -->

					<div class="bottom">
						<a href="javascript:;"
							onclick="viewCategoryAll($(this).attr('cid'))" data-scid="406005"
							data-cid="8" class="link-categoty-all" cid="8"><span
							class="cate">패션 · 뷰티</span> 카테고리 전체보기</a>
					</div>
				</div>
			</div>
		</div>
		<!-- 카테고리 -->
	</header>
	<!-- gnb 팝업 -->
	<div class="layer-popup gnb-popup" style="display: none">
		<div class="layer-popup-inner">
			<div class="contents">
				<div class="pop-header">
					<ul class="pop-tab">
						<li><a href="javascript:void(0);" class="on"
							data-tab="my-like">좋아요 한 상품</a></li>
						<li><a href="javascript:void(0);" class data-tab="my-view">내가
								본 상품</a></li>
					</ul>
					<a href="javascript:;" class="btn-pop-close"><span
						class="blind">닫기</span></a>
				</div>
				<div class="tab-con my-like on">
					<div class="pop-con nano">
						<div class="content">
							<div class="con" id="likeExcept">
								<!-- 좋아요 한 상품 -->
								<div class="con-deal">
									<ul class="deal-list small" id="likePopup">
									</ul>
								</div>
								<!-- //좋아요 한 상품 -->
							</div>
						</div>
					</div>
					<div class="pop-footer">
						<div class="btns" id="like">
							<a href="javascript:void(0);" class="btn-edit">편집</a> <a
								href="javascript:void(0);" class="btn-cancel"
								style="display: none;">취소</a> <a href="javascript:void(0);"
								class="btn-delete" style="display: none;">삭제</a>
						</div>
					</div>
				</div>
				<!-- 내가 본 상품 -->
				<div class="tab-con my-view">
					<div class="pop-con nano">
						<div class="content">
							<div class="con" id="viewExcept">
								<div class="con-deal">
									<ul class="deal-list small" id="viewPopup">
									</ul>
								</div>
							</div>
							<!-- //내가 본 상품 -->
						</div>
					</div>
					<div class="pop-footer">
						<div class="btns" id="view">
							<a href="javascript:void(0);" class="btn-edit">편집</a> <a
								href="javascript:void(0);" class="btn-cancel"
								style="display: none;">취소</a> <a href="javascript:void(0);"
								class="btn-delete" style="display: none;">삭제</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //gnb 팝업 -->

	<div class="layer-popup login-popup" style="display: none">
		<div class="layer-popup-inner">
			<div class="contents">
				<div class="pop-con">
					<div class="txt">
						로그인이 필요한 기능이에요. <br> 로그인 후 더 많은 기능을 만나보세요!
					</div>
				</div>
				<div class="pop-footer">
					<div class="btns">
						<a href="javascript:void(0);" class="btn-cancel">취소</a> <a
							href="javascript:void(0);" class="btn-confirm">로그인</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- //헤더 -->

	<!-- main contents -->
	<div class="main-container">
		<!-- 검색 -->
		<div class="section group-search"
			style="background-image: url(http://images.coocha.co.kr/WebStyleShopBanner/mainbg/img_20201224171334.jpg)">
			<div class="inner">
				<div class="contents">
					<p class="text">
						<a class="main-banner-link"
							href="/search/searchDealList?keyword=%EB%B0%80%ED%82%A4%ED%8A%B8"
							data-scid="402001" data-keyword="밀키트">‘밀키트’로 홈캉스 즐기기!</a>
					</p>
					<div class="search">
						<input type="search" class="input search-keyword">
					</div>

					<div class="search-results float" style="display: none">
						<div class="recent-searches" style="display: none">
							<div class="title">최근검색어</div>
							<ul>
							</ul>
							<div class="btns">
								<a href="javascript:void(0);" class="btn-all-delete">전체삭제</a>
							</div>
						</div>
						<div class="popular-searches">
							<div class="title">인기검색어</div>
							<ul>
							</ul>
							<div class="btns">
								<a href="javascript:void(0);" class="btn-prev"><span
									class="blind">이전</span></a> <a href="javascript:void(0);"
									class="btn-next"><span class="blind">다음</span></a>
							</div>
						</div>
						<ul class="related-searches">
						</ul>
						<ul class="category-searches">
						</ul>
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
							<li><a href="#" class="top-WEMAKEPRICE on"
								onclick="showTab('wmplist');">위메프</a></li>
							<li><a
								href="javascript:topDealShopClick('ticketmonster', '2');"
								class="top-ticketmonster">티몬</a></li>
							<li><a href="javascript:topDealShopClick('11st', '3');"
								class="top-11st">11번가</a></li>
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
										<a href="itemView.html">
											<div class="img">
												<img src="./image/위메프1.png">
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
											<div class="btns">
												<button type="button" class="btn-like no-link "
													data-did="845173282" data-scid="2620">
													<span class="blind" data-value="845173282">좋아요</span>
												</button>
											</div>
										</a>
									</div>
								</li>
								<li>
									<div class="deal">
										<a href=" ">
											<div class="img">
												<img src="../image/위메프2.jpg">
											</div>
											<div class="areas">
												<div class="title">아임웰 닭가슴살 볶음밥 1+1+1팩 외 아임닭/아임웰 BEST
													+ 오늘 54%쿠폰</div>
												<div class="prices">
													<span class="right"> <span class="num">5,980</span><span
														class="unit">원</span>
													</span>
												</div>
											</div>
											<div class="btns">
												<button type="button" class="btn-like no-link "
													data-did="844486488" data-scid="2620">
													<span class="blind" data-value="844486488">좋아요</span>
												</button>
											</div>
										</a>
									</div>
								</li>
								<li>
									<div class="deal">
										<a href=" ">
											<div class="img">
												<img src="../image/위메프3.png">
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
											<div class="btns">
												<button type="button" class="btn-like no-link" data-did="845173575" data-scid="2620">
													<span class="blind" data-value="845173575">좋아요</span>
												</button>
											</div>
										</a>
									</div>
								</li>
								<li>
									<div class="deal">
										<a href=" ">
											<div class="img">
												<img src="../image/위메프4.png">
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
											<div class="btns">
												<button type="button" class="btn-like no-link "
													data-did="845173334" data-scid="2620">
													<span class="blind" data-value="845173334">좋아요</span>
												</button>
											</div>
										</a>
									</div>
								</li>
								<li>
									<div class="deal">
										<a href=" ">
											<div class="img">
												<img src="../image/위메프5.png">
											</div>
											<div class="areas">
												<div class="title">농심오뚜기 컵라면 6개입 84종 진라면 신라면 진짬뽕 육개장
													새우탕 사발면 컵누들 참깨라면</div>
												<div class="prices">
													<span class="right"> <span class="num">4,900</span><span
														class="unit">원</span>
													</span>
												</div>
											</div>
											<div class="btns">
												<button type="button" class="btn-like no-link "
													data-did="845173652" data-scid="2620">
													<span class="blind" data-value="845173652">좋아요</span>
												</button>
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
				<input type="hidden" name="tabKey" id="tabKey" value="TH_01" /> <input
					type="hidden" name="curPageNo" id="curPageNo" value="1">
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
												<img src="../image/베스트1.jpg">
											</div>
											<div class="areas">
												<div class="title">[복날몸보신] [배스킨라빈스x굽네치킨] 최대 23% 할인 초복
													프로모션</div>
												<div class="prices">
													<span class="left"> <span class="num">23</span><span
														class="unit">%</span>
													</span> <span class="right"> <span class="num">27,700</span><span
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
											<div class="btns">
												<button type="button" class="btn-like no-link "
													data-did="819946186" data-scid="2615">
													<span class="blind">좋아요</span>
												</button>
												<button type="button" data-target-did="ODE5OTQ2MTg2"
													data-target-cid="TH_01" class="btn-details no-link">
													<span class="blind">상세</span>
												</button>
											</div>
										</div>
										<div class="bottom">
											<div class="etc">
												<span class="like">좋아요 <span class="num">0</span></span> <span
													class="buy">구매 <span class="num">60</span></span>
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
												<span class="ranking"><span class="blind">2</span></span>
											</div>
											<div class="img">
												<img src="../image/베스트2.jpg">
											</div>
											<div class="areas">
												<div class="title">개당89원 초특가 KF94 ALL국산 소형/대형
													새부리형/입체형컬러마스크/에어데이즈/이비에</div>
												<div class="prices">
													<span class="left"> <span class="num">68</span><span
														class="unit">%</span>
													</span> <span class="right"> <span class="num">6,750</span><span
														class="unit">원</span>
													</span>
												</div>
											</div>
											<div class="aside">
												<span class="pay"> <span class="easy-pay"><img
														src="http://images.coocha.co.kr/static/images/deal/easypay/spay-1.png?20200604"
														alt=""></span>
												</span> <span class="shopping-mall">위메프</span>
											</div>
											<div class="btns">
												<button type="button" class="btn-like no-link "
													data-did="845173642" data-scid="2615">
													<span class="blind">좋아요</span>
												</button>
												<button type="button" data-target-did="ODQ1MTczNjQy"
													data-target-cid="TH_01" class="btn-details no-link">
													<span class="blind">상세</span>
												</button>
											</div>
										</div>
										<div class="bottom">
											<div class="etc">
												<span class="like">좋아요 <span class="num">0</span></span> <span
													class="delivery">무료배송</span><span class="buy">구매 <span
													class="num">10,469</span></span>
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
												<img src="../image/베스트3.jpg">
											</div>
											<div class="areas">
												<div class="title">[롯데리아] 1만원권 11% 할인</div>
												<div class="prices">
													<span class="left"> <span class="num">11</span><span
														class="unit">%</span>
													</span> <span class="right"> <span class="num">8,900</span><span
														class="unit">원</span>
													</span>
												</div>
											</div>
											<div class="aside">
												<span class="pay"> <span class="easy-pay"><img
														src="http://images.coocha.co.kr/static/images/deal/easypay/spay-11.png?20200604"
														alt=""></span>
												</span> <span class="shopping-mall">티몬</span>
											</div>
											<div class="btns">
												<button type="button" class="btn-like no-link "
													data-did="845203946" data-scid="2615">
													<span class="blind">좋아요</span>
												</button>
												<button type="button" data-target-did="ODQ1MjAzOTQ2"
													data-target-cid="TH_01" class="btn-details no-link">
													<span class="blind">상세</span>
												</button>
											</div>
										</div>
										<div class="bottom">
											<div class="etc">
												<span class="like">좋아요 <span class="num">0</span></span>
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
												<span class="ranking"><span class="blind">4</span></span>
											</div>
											<div class="img">
												<img src="../image/베스트4.jpg">
											</div>
											<div class="areas">
												<div class="title">[뉴발란스] 선착순쿠폰 뉴발란스/아디다스/나이키 외 스포츠
													브랜드 의류/슈즈 총모음전</div>
												<div class="prices">
													<span class="left"> <span class="num">80</span><span
														class="unit">%</span>
													</span> <span class="right"> <span class="num">7,900</span><span
														class="unit">원</span>
													</span>
												</div>
											</div>
											<div class="aside">
												<span class="pay"> <span class="easy-pay"><img
														src="http://images.coocha.co.kr/static/images/deal/easypay/spay-11.png?20200604"
														alt=""></span>
												</span> <span class="shopping-mall">티몬</span>
											</div>
											<div class="btns">
												<button type="button" class="btn-like no-link "
													data-did="845203958" data-scid="2615">
													<span class="blind">좋아요</span>
												</button>
												<button type="button" data-target-did="ODQ1MjAzOTU4"
													data-target-cid="TH_01" class="btn-details no-link">
													<span class="blind">상세</span>
												</button>
											</div>
										</div>
										<div class="bottom">
											<div class="etc">
												<span class="like">좋아요 <span class="num">0</span></span>
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
												<span class="ranking"><span class="blind">5</span></span>
											</div>
											<div class="img">
												<img src="../image/베스트5.jpg">
											</div>
											<div class="areas">
												<div class="title">[20%쿠폰] 양말폭탄 아동/성인 여름양말 메시 페이크삭스
													스니커즈 선물세트</div>
												<div class="prices">
													<span class="right"> <span class="num">4,900</span><span
														class="unit">원</span>
													</span>
												</div>
											</div>
											<div class="aside">
												<span class="pay"> <span class="easy-pay"><img
														src="http://images.coocha.co.kr/static/images/deal/easypay/spay-11.png?20200604"
														alt=""></span>
												</span> <span class="shopping-mall">티몬</span>
											</div>
											<div class="btns">
												<button type="button" class="btn-like no-link "
													data-did="841602084" data-scid="2615">
													<span class="blind">좋아요</span>
												</button>
												<button type="button" data-target-did="ODQxNjAyMDg0"
													data-target-cid="TH_01" class="btn-details no-link">
													<span class="blind">상세</span>
												</button>
											</div>
										</div>
										<div class="bottom">
											<div class="etc">
												<span class="like">좋아요 <span class="num">0</span></span>
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
												<img src="../image/베스트6.jpg">
											</div>
											<div class="areas">
												<div class="title">[타미힐피거] 마지막 특!가! 타미힐피거 반팔피게티
													최.저.가.세.일</div>
												<div class="prices">
													<span class="left"> <span class="num">7</span><span
														class="unit">%</span>
													</span> <span class="right"> <span class="num">33,390</span><span
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
											<div class="btns">
												<button type="button" class="btn-like no-link "
													data-did="845168417" data-scid="2615">
													<span class="blind">좋아요</span>
												</button>
												<button type="button" data-target-did="ODQ1MTY4NDE3"
													data-target-cid="TH_01" class="btn-details no-link">
													<span class="blind">상세</span>
												</button>
											</div>
										</div>
										<div class="bottom">
											<div class="etc">
												<span class="like">좋아요 <span class="num">0</span></span> <span
													class="buy">구매 <span class="num">367</span></span>
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
												<img src="../image/베스트7.jpg">
											</div>
											<div class="areas">
												<div class="title">★최대40%쿠폰★ 온더바디 발을씻자 풋샴푸 385ml X 3개
													외 샴푸, 바디워시</div>
												<div class="prices">
													<span class="left"> <span class="num">10</span><span
														class="unit">%</span>
													</span> <span class="right"> <span class="num">19,710</span><span
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
											<div class="btns">
												<button type="button" class="btn-like no-link "
													data-did="753820821" data-scid="2615">
													<span class="blind">좋아요</span>
												</button>
												<button type="button" data-target-did="NzUzODIwODIx"
													data-target-cid="TH_01" class="btn-details no-link">
													<span class="blind">상세</span>
												</button>
											</div>
										</div>
										<div class="bottom">
											<div class="etc">
												<span class="like">좋아요 <span class="num">0</span></span> <span
													class="buy">구매 <span class="num">7,379</span></span>
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
												<img src="../image/베스트8.jpg">
											</div>
											<div class="areas">
												<div class="title">[크록스공식점]30%쿠폰! 성인/키즈 클로그 외 여름슈즈
													단독가!</div>
												<div class="prices">
													<span class="right"> <span class="num">19,900</span><span
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
											<div class="btns">
												<button type="button" class="btn-like no-link "
													data-did="842542681" data-scid="2615">
													<span class="blind">좋아요</span>
												</button>
												<button type="button" data-target-did="ODQyNTQyNjgx"
													data-target-cid="TH_01" class="btn-details no-link">
													<span class="blind">상세</span>
												</button>
											</div>
										</div>
										<div class="bottom">
											<div class="etc">
												<span class="like">좋아요 <span class="num">0</span></span> <span
													class="buy">구매 <span class="num">2,172</span></span>
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
												<img src="../image/베스트9.jpg">
											</div>
											<div class="areas">
												<div class="title">[기프티콘] 파리바게뜨 우유팥빙수+꽃빙수(딸기망고)</div>
												<div class="prices">
													<span class="left"> <span class="num">20</span><span
														class="unit">%</span>
													</span> <span class="right"> <span class="num">15,040</span><span
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
											<div class="btns">
												<button type="button" class="btn-like no-link "
													data-did="841823887" data-scid="2615">
													<span class="blind">좋아요</span>
												</button>
												<button type="button" data-target-did="ODQxODIzODg3"
													data-target-cid="TH_01" class="btn-details no-link">
													<span class="blind">상세</span>
												</button>
											</div>
										</div>
									</div>
									<div class="bottom">
										<div class="etc">
											<span class="like">좋아요 <span class="num">0</span></span> <span
												class="buy">구매 <span class="num">2,940</span></span>
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
												<span class="ranking"><span class="blind">10</span></span>
											</div>
											<div class="img">
												<img src="../image/베스트10.jpg">
											</div>
											<div class="areas">
												<div class="title">티젠 김태리 콤부차 30스틱 / 10스틱 파인애플 / 유자 /
													레몬 / 피치 / 베리</div>
												<div class="prices">
													<span class="right"> <span class="num">13,500</span><span
														class="unit">원</span>
													</span>
												</div>
											</div>
											<div class="aside">
												<span class="pay"> <span class="easy-pay"><img
														src="http://images.coocha.co.kr/static/images/deal/easypay/spay-11.png?20200604"
														alt=""></span>
												</span> <span class="shopping-mall">티몬</span>
											</div>
											<div class="btns">
												<button type="button" class="btn-like no-link "
													data-did="844529295" data-scid="2615">
													<span class="blind">좋아요</span>
												</button>
												<button type="button" data-target-did="ODQ0NTI5Mjk1"
													data-target-cid="TH_01" class="btn-details no-link">
													<span class="blind">상세</span>
												</button>
											</div>
										</div>
										<div class="bottom">
											<div class="etc">
												<span class="like">좋아요 <span class="num">0</span></span> <span
													class="delivery">무료배송</span>
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
												<img src="../image/베스트11.jpg">
											</div>
											<div class="areas">
												<div class="title">롯데 꼬깔콘 67gx8개 외
													치토스,몽쉘,칙촉,가나,ABC,드림카카오,자일리톨모음</div>
												<div class="prices">
													<span class="left"> <span class="num">8</span><span
														class="unit">%</span>
													</span> <span class="right"> <span class="num">11,780</span><span
														class="unit">원</span>
													</span>
												</div>
											</div>
											<div class="aside">
												<span class="pay"> <span class="easy-pay"><img
														src="http://images.coocha.co.kr/static/images/deal/easypay/spay-1.png?20200604"
														alt=""></span>
												</span> <span class="shopping-mall">위메프</span>
											</div>
											<div class="btns">
												<button type="button" class="btn-like no-link "
													data-did="844486448" data-scid="2615">
													<span class="blind">좋아요</span>
												</button>
												<button type="button" data-target-did="ODQ0NDg2NDQ4"
													data-target-cid="TH_01" class="btn-details no-link">
													<span class="blind">상세</span>
												</button>
											</div>
										</div>
										<div class="bottom">
											<div class="etc">
												<span class="like">좋아요 <span class="num">0</span></span> <span
													class="delivery">유료배송</span><span class="buy">구매 <span
													class="num">72</span></span>
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
												<img src="../image/베스트12.jpg">
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
											<div class="btns">
												<button type="button" class="btn-like no-link "
													data-did="829748774" data-scid="2615">
													<span class="blind">좋아요</span>
												</button>
												<button type="button" data-target-did="ODI5NzQ4Nzc0"
													data-target-cid="TH_01" class="btn-details no-link">
													<span class="blind">상세</span>
												</button>
											</div>
										</div>
										<div class="bottom">
											<div class="etc">
												<span class="like">좋아요 <span class="num">0</span></span> <span
													class="buy">구매 <span class="num">903</span></span>
											</div>
										</div>
									</div>
								</a>
							</div>
						</li>
						<form name="bestDealListForm" id="bestDealListForm" action="/"
							class="blind">
							<input type="hidden" name="bestDealResultCnt"
								id="bestDealResultCnt" value="208">
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
							<p>
								<a href="http://www.11st.co.kr/html/main.html" target="_blank"
									data-sid="11st" data-scid="2214">11번가</a>
							</p>
							<p>
								<a href="http://www.gmarket.co.kr/" target="_blank"
									data-sid="919" data-scid="2214">G마켓</a>
							</p>
							<p>
								<a href="http://www.auction.co.kr/" target="_blank"
									data-sid="2681" data-scid="2214">옥션</a>
							</p>
						</li>
						<li>
							<p>
								<a href="http://www.interpark.com/malls/index.html"
									target="_blank" data-sid="interpark1" data-scid="2214">인터파크</a>
							</p>
							<p>
								<a
									href="http://display.cjonstyle.com/p/homeTab/main?hmtabMenuId=000002&rPIC=Oclock"
									target="_blank" data-sid="cjonstyle" data-scid="2214">CJ온스타일</a>
							</p>
							<p>
								<a
									href="http://with.gsshop.com/jsp/jseis_withLGeshop.jsp?media=x4"
									target="_blank" data-sid="gsshop1" data-scid="2214">GS SHOP</a>
							</p>
						</li>
						<li>
							<p>
								<a href="http://shinsegaemall.ssg.com/?ckwhere=scoochacat"
									target="_blank" data-sid="happybuyrus" data-scid="2214">신세계몰</a>
							</p>
							<p>
								<a href="http://emart.ssg.com/main.ssg?ckwhere=ecoochacat"
									target="_blank" data-sid="emart" data-scid="2214">이마트몰</a>
							</p>
						</li>
						<li>
							<p>
								<a
									href="http://www.wemakeprice.com/?utm_source=coocha&utm_medium=META_af&utm_content=logo_pc&utm_campaign=r_sa"
									target="_blank" data-sid="WEMAKEPRICE" data-scid="2214">위메프</a>
							</p>
							<p>
								<a href="http://www.tmon.co.kr/entry/?jp=80002&ln=264113"
									target="_blank" data-sid="ticketmonster" data-scid="2214">티몬</a>
							</p>
							<p>
								<a href="https://www.coupang.com/" target="_blank"
									data-sid="coupanglp" data-scid="2214">쿠팡</a>
							</p>
						</li>
						<li>
							<p>
								<a href="http://www.halfclub.com/Main/index.html"
									target="_blank" data-sid="halfclub" data-scid="2214">하프클럽</a>
							</p>
							<p>
								<a href="http://www.boribori.co.kr/joins/coocha_logo.asp?/"
									target="_blank" data-sid="boribori" data-scid="2214">보리보리</a>
							</p>
							<p>
								<a href="https://mustit.co.kr/" target="_blank"
									data-sid="mustitep" data-scid="2214">머스트잇</a>
							</p>
							<p>
								<a href="https://www.wconcept.co.kr/" target="_blank"
									data-sid="wconcept" data-scid="2214">W컨셉</a>
							</p>
						</li>
						<li>
							<p>
								<a href="http://tour.interpark.com/" target="_blank"
									data-sid="interparkthou" data-scid="2214">인터파크투어</a>
							</p>
							<p>
								<a href="http://www.onlinetour.co.kr/" target="_blank"
									data-sid="onlinetour" data-scid="2214">온라인투어</a>
							</p>
							<p>
								<a href="https://www.myrealtrip.com/" target="_blank"
									data-sid="myrealtrip" data-scid="2214">마이리얼트립</a>
							</p>
							<p>
								<a href="https://www.kkday.com/ko/" target="_blank"
									data-sid="kkday" data-scid="2214">KKday</a>
							</p>
						</li>
						<li>
							<p>
								<a
									href="http://www.lotteimall.com/main/viewMain.lotte?dpml_no=1"
									target="_blank" data-sid="lotteimall" data-scid="2214">롯데홈쇼핑</a>
							</p>
							<p>
								<a
									href="http://www.shinsegaetvshopping.com?inMediaCode=MC04&ckwhere=cc_xml_pc"
									target="_blank" data-sid="ssgtvshop" data-scid="2214">신세계라이브쇼핑</a>
							</p>
							<p>
								<a href="http://www.hnsmall.com/" target="_blank"
									data-sid="hn_home2" data-scid="2214">홈앤쇼핑</a>
							</p>
						</li>
						<li>
							<p>
								<a href="http://www.1300k.com" target="_blank" data-sid="1300k"
									data-scid="2214">1300K</a>
							</p>
							<p>
								<a href="http://www.e-himart.co.kr/" target="_blank"
									data-sid="himart" data-scid="2214">하이마트</a>
							</p>
						</li>

					</ul>
				</div>
			</div>
		</div>
		<!-- //주요쇼핑몰 -->
		<script>
			Tracker.clickLog({
				scid : 2000
			})
		</script>
	</div>
	<!-- //main contents -->
	<footer>
		<div class="footer">
			<div class="inner">
				<ul class="area-link">
					<li><a href="http://www.coocha.co.kr/community/app/download"
						class="app-download">앱다운로드</a></li>
					<li><a
						href="https://coocha.notion.site/coocha/SearchFy-47587151461d490c86bd7243357b5ffe">회사소개</a></li>
					<li><a href="/customer/boardList">고객센터</a></li>
					<li><a href="/customer/customerTerms?type=01">서비스이용약관</a></li>
					<li><a href="/customer/customerTerms?type=02">위치정보이용약관</a></li>
					<li><a href="/customer/customerTerms?type=03"><b>개인정보처리방침</b></a></li>
					<li><a href="http://shop.coocha.co.kr/manager/mc/login.do">마케팅센터</a></li>
					<li><a href="/partner/intro" data-scid="2509">입점 및 광고 안내</a></li>
				</ul>
				<div class="area-text">
					<p>쿠차는 상품에 직접 관여하지 않으며 상품 주문, 배송 및 환불의 의무와 책임은 각 판매업체에 있습니다.</p>
				</div>
				<div class="area-bottom">
					<div class="info">
						<span>(주)서치파이</span> <span>대표 김태묵</span> <span>사업자등록번호
							388-81-01489</span>
					</div>
					<div class="address">
						<span>서울특별시 중구 삼일대로6길 2, 조양빌딩 별관 10층</span> <span>고객센터 <a
							href="mailto:cs_coocha@coocha.com">cs_coocha@coocha.com</a></span> <span>입점
							· 광고 <a href="mailto:business@coocha.com">business@coocha.com</a>
						</span>
					</div>
					<div class="copyright">
						<p>© 2020. SearchFy Inc. All Rights Reserved.</p>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- 탑으로 -->
	<a href="#top" class="btn-go-top" data-scid="2227"><span
		class="blind">탑으로</span></a>
	<!-- //탑으로 -->

	<!-- 공통 스크립트 PARAM -->
	<script>
		var _LOGIN_YN = 'N';
		var _PATH = '';
		var _IMG_SERVER_PATH_DOMAIN = 'http://images.coocha.co.kr/static/images';
		var _PAGEING_SCROLL = 2000;
		var _COOCHA_LOGIN_DOMAIN = 'https://member.coocha.co.kr';
	</script>

	<script src="/static/js/lib/jquery.bxslider.js"></script>
	<script src="/static/js/lib/jquery.nanoscroller.js"></script>
	<script src="/static/js/lib/jquery.cookie.js"></script>
	<script src="/static/js/common/common.js"></script>
	<script src="/static/js/common/util.js"></script>
	<script src="/static/js/main/main.ui.js"></script>
	<script src="/static/js/main/main.js"></script>
	<script src="/static/js/search/keyword.js"></script>

	<script>
		(function() {
			var _fbq = window._fbq || (window._fbq = []);
			if (!_fbq.loaded) {
				var fbds = document.createElement('script');
				fbds.async = true;
				fbds.src = '//connect.facebook.net/en_US/fbds.js';
				var s = document.getElementsByTagName('script')[0];
				s.parentNode.insertBefore(fbds, s);
				_fbq.loaded = true;
			}
			_fbq.push([ 'addPixelId', '751408661596154' ]);
		})();
		window._fbq = window._fbq || [];
		window._fbq.push([ 'track', 'PixelInitialized', {} ]);
	</script>

	<noscript>
		<img height="1" width="1" alt="" style="display: none"
			src="https://www.facebook.com/tr?id=751408661596154&amp;ev=NoScript" />
	</noscript>

	<script type="text/javascript" src="https://wcs.naver.net/wcslog.js"></script>
	<script type="text/javascript">
		if (!wcs_add)
			var wcs_add = {};
		wcs_add["wa"] = "s_7667e8c0217";
		if (!_nasa)
			var _nasa = {};
		wcs.inflow("coocha.co.kr");
		wcs_do(_nasa);
	</script>

	<script type="text/javascript">
		
	</script>

</body>
</html>
