<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>
<html> 
<head>
	<title>회원 탈퇴</title>
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

	h5, h6 {
		font-weight: bold;
	}
	
	h5 {
		margin-top: 10%;
	}
	
	h3 {
		font-weight: bold;
		font-size: 25px;
	}
	
	input[type='text'], input[type='password'] {
		border: 1px solid #ced4da;
		border-radius: 0.375rem;
		line-height: 1.5;
	}
	
	.row {
		margin: 4% 0;
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
	
	button {
		width: 75px;
		height: 50px;
		border-radius: 4px;
		float: right;
		margin: 10% 1%;
	}

	.abc {
		margin : 10% 20%;
	}
	
	input {
		height: 50px;
	}

	h4 {
		font-weight : bold;
	}
	
	p {
		line-height: 180%;
	}
	
	li {
		margin: 0 2%;
	}
	
	#realdelbtn {
		background-color: #6900EF; 
		color: white; 
		border-radius: 0.375rem;
	}

</style>

<body>

	<form method="post" name="form">
	<input type="hidden" name="seq" value="<c:out value="${sessSeq}"/>">
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

            <ul class="gnb login">
				<li>
					<a href="/member/mypage" class="btn-my btn-layer-open"><span class="blind">MY</span></a>
					<div class="area-my-page area-gnb-layer">
					    <div class="title">MY PAGE</div>
					    <ul>
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
				<a href="/member/mypage"><h3 style="font-size: 25px; margin-bottom: 8%"><b>마이쿠차</b></h3></a>
				<br>
				<a href="/member/shipping"><h6 style="font-size: 18px; margin: 4% 0">주문배송조회</h6></a>
				<br>
				<a href="/member/infoModForm"><h6 style="font-size: 18px; margin: 4% 0">회원정보 수정</h6></a>
				<br>
				<a href="/member/changePW"><h6 style="font-size: 18px; margin: 4% 0">비밀번호 변경</h6></a>
				<br>
				<a href="/member/unregister"><h6 style="color: #6900EF; font-size: 18px; margin: 4% 0">회원 탈퇴</h6></a>
			</div>
			<div class="col-9">
    			<h3>회원 탈퇴</h3>
				<hr style="border: 2px solid black">
				<br>
				<div class="row">
					<div class="col-7">
						<div class="row">
							<div class="col-3">
								<h5>아이디</h5>
							</div>
							<div class="col-9">
								<input class="form-control" type="text" id="id" name="id" value="<c:out value="${item.id}"/>" style="color: #6900EF" readonly>
							</div>
						</div>
						<div class="row">
							<div class="col-3">
								<h5>비밀번호</h5>
							</div>
							<div class="col-9">
								<input type="password" class="form-control">
							</div>
						</div>
					</div>
					<div class="col-5">
						<p>회원 탈퇴를 하시면 모든 정보가 삭제되며,</p>
						<p>탈퇴하신 아이디는 다시 이용할 수 없습니다.</p>
						<p>신중하게 결정하셔서 진행해주세요.</p>
						<br><br>
						<p>회원 탈퇴 시 보유하셨던 회원정보 등은 모두 삭제되나, </p>
						<p>탈퇴 후 부정 이용 방지를 목적으로 1개월 간</p>
						<p>성명, 실명 인증번호, 아이디, 비밀번호, </p>
						<p>이메일, 로그기록, 접속 IP를 보관합니다.</p>
					</div>
				</div>
				<br>
				<button type="button" class="btn btn-light" data-bs-toggle="modal" data-bs-target="#deleteModal" style="background-color: #6900EF; color: white; font-weight: bold">탈퇴</button>
				<a href="/member/mypage"><button type="button" class="btn btn-light" style="color: gray; font-weight: bold">취소</button></a>
				
				<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="deleteModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="deleteModalLabel"><b>COOCHA</b></h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							</div>
							<div class="modal-body">
							 정말로 탈퇴하시겠습니까? 탈퇴 시 30일 이후 재가입 하실 수 있습니다. 
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
								<button type="button" class="btn btn-dark" id="realdelbtn">탈퇴 </button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</form>
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
	
	var goUrlDel = "/member/unregister";	
	 
	var seq = $("input:hidden[name=seq]");				/* #-> */
	
	var form = $("form[name=form]");
 
	$("#realdelbtn").on("click", function() {
		form.attr("action", goUrlDel).submit();
	});
	
	</script>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/7d63ec3c0a.js" crossorigin="anonymous"></script>

</body>
</html>