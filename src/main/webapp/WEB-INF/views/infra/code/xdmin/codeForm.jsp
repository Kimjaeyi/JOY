<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="false" %>
<html> 
<head>
	<title>Code Form</title>
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
	<link rel="shortcut icon" type="image/x-icon" href="https://cdn.icon-icons.com/icons2/2091/PNG/512/settings_icon_128522.png">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
	
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
	
	@font-face {
	    font-family: 'MICEGothic';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2206-01@1.0/MICEGothic.woff2') format('woff2');
	    font-weight: 400;
	    font-style: normal;
	}
	
	h1 {
		font-family: 'GilbeotRainbow';
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
	
	h4, h6 {
		font-family: 'MICEGothic Bold';
	}
	
	input, select {
		font-family: 'MICEGothic';
		height: 50px;
	}
	
	.aaa {
		margin: 2% 15%;
	}
	
	button {
		width: 50px;
		height: 50px;
		display: inline;
	}
	
	
</style>

<body>

<!-- start -->
	<div class="abc">
		<a href="../user/item/Mainpage.html">
			<h1 style="margin: 30px 0 0 10%">coocha</h1>
		</a>
		<br><hr><br>
		<form method="post" action="/code/codeInst">
			<div class="aaa">
				<h4>코드 관리</h4>
				<br><br>
				<div class="row">
					<div class="col">
						<h6>코드그룹 코드</h6>
						<input class="form-control" type="text" disabled readonly/>
						<br>
						<h6>코드 이름(한글)</h6>
						<input class="form-control" type="text" name="cdname_ko">
						<br>
						<h6>코드</h6>
						<input class="form-control" type="text" name="codeNum">
						<br>
					</div>
					<div class="col">
						<h6>코드그룹 이름</h6>
						<select class="form-select" name="codeGroup_seq">
							<option selected>::선택::</option>
							<option value="1">등급</option>
							<option value="2">통신사</option>
							<option value="3">이메일도메인</option>
							<option value="4">배송비</option>
							<option value="5">택배사</option>
							<option value="6">출고가능일</option>
							<option value="7">배송가능지역</option>
							<option value="8">교환반품배송비</option>
							<option value="9">반품가능기간</option>
							<option value="10">진행상황</option>
							<option value="11">문의종류</option>
						</select>
						<br>
						<h6>코드 이름(영문)</h6>
						<input class="form-control" type="text" name="name_eng">
						<br>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<h6>설명</h6>
						<textarea class="form-control" rows="3"></textarea>
						<br>
					</div>
					<div class="col">
						<h6>순서</h6>
						<input class="form-control" type="text" name="order">
						<br>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<h6>사용여부</h6>
						<select class="form-select">
							<option selected>선택하세요</option>
							<option value="1">Y</option>
							<option value="2">N</option>
						</select>
						<br>
						<h6>예비1(varchar type)</h6>
						<input class="form-control" type="text">
						<br>
						<h6>예비3(varchar type)</h6>
						<input class="form-control" type="text">
						<br>
					</div>
					<div class="col">
						<h6>삭제여부</h6>
						<select class="form-select">
							<option selected>선택하세요</option>
							<option value="1">Y</option>
							<option value="2">N</option>
						</select>
						<br>
						<h6>예비2(varchar type)</h6>
						<input class="form-control" type="text">
						<br>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<h6>예비1(int type)</h6>
						<input class="form-control" type="text">
						<br>
						<h6>예비3(int type)</h6>
						<input class="form-control" type="text">
						<br>
					</div>
					<div class="col">
						<h6>예비2(int type)</h6>
						<input class="form-control" type="text">
					</div>
				</div>
				<br><br>
				<a href="/code/codeList">
					<button type="button" class="btn btn-outline-dark"><i class="fa-solid fa-list"></i></button>
				</a>
				<button type="submit" class="btn btn-outline-dark" style="float: right"><i class="fa-solid fa-circle-check"></i></button>
			</div>
		</form>
	</div>
	
	<script>
	
	$(function(){
	    if (location.hash == "#codegrouptab"){
	        $('.nav-tabs').find('li').eq(0).addClass('active').siblings().removeClass();
	        $('.tab-content').find('#codegrouptab').addClass('active in').siblings().removeClass('active in');
	    } else if(location.hash == "#codetab"){
	        $('.nav-tabs').find('li').eq(1).addClass('active').siblings().removeClass();
	        $('.tab-content').find('#codetab').addClass('active in').siblings().removeClass('active in');
	    }
	})
	
	</script>
	<!-- end -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/7d63ec3c0a.js" crossorigin="anonymous"></script>
</body>
</html>