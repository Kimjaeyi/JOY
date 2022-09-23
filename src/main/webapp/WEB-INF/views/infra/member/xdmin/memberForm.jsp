<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="false" %>
<html> 
<head>
	<title>회원 등록</title>
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
	<link rel="stylesheet" href="http://images.coocha.co.kr/static/css/coocha.css?ver=2022091023"/>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
	<script>
		const myModal = document.getElementById('myModal')
		const myInput = document.getElementById('myInput')
	
		myModal.addEventListener('shown.bs.modal', () => {
			myInput.focus()
		})
	</script>
	
	<style type="text/css">

	@font-face {
	    font-family: 'GilbeotRainbow';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2112@1.0/GilbeotRainbow.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
	}
	
	h1 {
		font-family: 'GilbeotRainbow';
		margin: 30px 0 0 10%;
		font-size: 40px;
		color: #6900EF;
	}
	
	h6 {
		font-weight: bold;
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
	
	input.form-control {
		border: 1px solid #ced4da;
		border-radius: 0.375rem;
	}
	
	input, select {
		height: 50px;
	}
	
	.aaa {
		margin: 2% 15%;
	}
	
	.col {
		margin: 5% 0;
	}
	
	#myTab {
		width: 215px;
	}
		
	#listtab button {
		width: 65px;
	}
	
	#regmodtab button {
		width: 150px;
	}
	
	.nav-tabs {
		--bs-nav-tabs-link-active-color: #6900EF;
		--bs-nav-tabs-link-active-border-color: #6900EF #6900EF #fff; 
	}
	
	.nav {
		--bs-nav-link-hover-color: #9154f3;
		width: 333px;
	}
	
	.nav-link {
		color : gray;
	}
	
	#listbtn, #savebtn, #clearbtn {
		width: 40px;
		height: 40px;
		display: inline;
	}
	
	#delbtn {
		background-color: #6900EF; 
		color: white; 
		border-radius: 0.375rem;
	}
	
	.ccc {
		display: inline;
		margin: 0 0 5% 0;
	}
	
</style>

<body>

<!-- start -->
	<div class="abc">
		<a href="/"><h1>coocha</h1></a>
		<br><hr><br>
		<div class="aaa">
			<!-- <form method="post" name="form" id="memberForm" method="/member/memberInst"> -->
			<form id="form" name="form" method="post">
				<!-- *Vo.jsp s -->
				<%@include file="memberVo.jsp"%>		<!-- #-> -->
				<!-- *Vo.jsp e -->
				<ul class="nav nav-tabs" id="myTab">
					<li class="nav-item">
						<button class="nav-link" id="listtab">회원 목록</button>
					</li>
					<li class="nav-item">
						<button class="nav-link active" id="regmodtab"><b>회원 등록 및 수정</b></button>
					</li>
				</ul>
				<div class="row">
					<div class="col">
						<h6>회원이름</h6>
						<br>
						<input class="form-control" type="text" name="name" id="name" value="<c:out value="${item.name }"/>">
						<br><br>
						<h6>아이디</h6>
						<br>
						<input type="hidden" id="idAllowedNy" name=idAllowedNy" value="0">
						<input class="form-control" type="text" placeholder="5~20 영문 대/소문자, 숫자, 일부 특수문자만 사용 가능" name="id" id="id" maxlength="20" <c:out value="${item.id}"/>"
						<c:if test="${not empty item.id}">readonly</c:if>
						>
						<div class="invalid-feedback" id="idFeedback"></div> 
						<br><br>
						<h6>생년월일</h6>
						<br>
						<input class="form-control" type="text" placeholder="생년월일 8자리(ex. 2000-01-01)" name="dob" id="dob" value="<c:out value="${item.dob }"/>">
						<br><br>
						<h6>이메일</h6>
						<br>
						<input class="form-control" type="text" name="email" id="email" value="<c:out value="${item.email }"/>">
						<br><br>
						<h6>사용여부</h6>
						<br>
						<select class="form-select">
							<option value="">선택하세요</option>
							<option value="1">Y</option>
							<option value="2">N</option>
						</select>
						<br><br>
						<h6>성별</h6>
						<br>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="gender" id="gender1" value="남자">
							<label class="form-check-label" for="inlineRadio1">남자</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="gender" id="gender2" value="여자">
							<label class="form-check-label" for="inlineRadio2">여자</label>
						</div>
						<br><br>
					</div>
					<div class="col">
						<h6>회원등급</h6>
						<br>
						<select class="form-select" name="membership" id="membership" value="<c:out value="${item.membership }"/>">
							<option selected>::선택::</option>
							<option value="1">MANAGER</option>
							<option value="2">일반</option>
							<option value="3">VIP</option>
							<option value="4">VVIP</option>
						</select>
						<br><br>
						<h6>비밀번호</h6>
						<br>
						<input class="form-control" type="text" placeholder="8~20자리 영문 대/소문자, 숫자, 특수문자 2가지 이상 사용" name="pwd" id="pwd">
						<br><br>
						<h6>휴대폰번호</h6>
						<br>
						<select class="form-select" style="width: 20%; display: inline" name="telecom" id="telecom">
							<option selected>::통신사::</option>
							<option value="1">SKT</option>
							<option value="2">KT</option>
							<option value="3">LG</option>
						</select>
						<input class="form-control" type="text" style="width: 50%; display: inline" value="<c:out value="${item.phone }"/>">
						<br><br><br>
						<h6>주소</h6>
						<br>
						<input class="form-control" type="text" name="address" id="address">
						<br><br>
						<h6>삭제여부</h6>
						<br>
						<select class="form-select">
							<option selected>선택하세요</option>
							<option value="1">Y</option>
							<option value="2">N</option>
						</select>
						<br><br>
						<h6>개인정보 유효기간</h6>
						<br>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="private" id="private1" value="option1">
							<label class="form-check-label" for="inlineRadio1">1년</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="private" id="private2" value="option2">
							<label class="form-check-label" for="inlineRadio2">3년</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="private" id="private3" value="option3">
							<label class="form-check-label" for="inlineRadio3">탈퇴 시 파기</label>
						</div>
						<br><br>
					</div>
				</div>
				<br><br>
				<div class="ccc">
					<button type="button" id="listbtn" class="btn btn-outline-dark">
						<i class="fa-solid fa-list"></i>
					</button>
					<button type="button" id="savebtn" class="btn btn-dark" style="float: right">
						<i class="fa-solid fa-circle-check"></i>
					</button>
					<button type="button" class="btn btn-warning" id="clearbtn" style="float: right; margin: 0 20px" data-bs-toggle="modal" data-bs-target="#exampleModal">
						<i class="fa-solid fa-rotate-left"></i>
					</button>
					<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabel">내용 취소</h5>
									<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
								</div>
								<div class="modal-body">입력한 데이터를 모두 삭제하시겠습니까?</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
									<button type="button" id="delbtn">삭제</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
			<form name="formVo" id="formVo" method="post">
			<!-- *Vo.jsp s -->
			<%@include file="memberVo.jsp"%>		<!-- #-> -->
			<!-- *Vo.jsp e -->
			</form>
		</div>
	</div>
	
	<script>
/* 	
	function test() {
		alert("테스트 중");
		
		alert(document.getElementById('name').value);
		alert(document.getElementById('membership').options[document.getElementById('membership').selectedIndex].value);
		alert(document.querySelector("input[name='gender']:checked").value);
		
		if(document.getElementById("name").value == '' || document.getElementById("name").value == null) {
			alert("이름을 입력해주세요");
			document.getElementById("name").value="";
			document.getElementById("name").focus();
			return false;
		}
		
		document.getElementById("groupForm").submit();
	}
 */	
 	var goUrlList = "/member/memberList";
	var goUrlInst = "/member/memberInst";
	var goUrlUpdt = "/member/memberUpdt";
	var goUrlUele = "/member/memberUele";
	var goUrlDele = "/member/memberDele";
	
	var seq = $("input:hidden[name=seq]");
	
	var form = $("form[name=form]");
	var formVo = $("form[name=formVo]");
	
	$("#savebtn").on("click", function(){
		if (seq.val() == "0" || seq.val() == ""){
	   		// insert
	   		//if (validationInst() == false) return false;
	   		form.attr("action", goUrlInst).submit();
	   	} else {
	   		// update
	   		/* keyName.val(atob(keyName.val())); */
	   		//if (validationUpdt() == false) return false;
	   		form.attr("action", goUrlUpdt).submit();
	   	}
	}); 
	$("#listbtn").on("click", function(){
		formVo.attr("action", goUrlList).submit();
	});
	
	$("#delbtn").on("click", function(){
		formVo.attr("action", goUrlList).submit();
	});
	
	$("#id").on("focusout", function(){
/* 		
		if(!checkId('id', 2, 0, "5~20자리의 영문 대/소문자, 숫자, 일부 특수문자만 입력 가능합니다.")) {
			return false;
		} else {
 */			
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				/* ,dataType:"json" */
				,url: "/member/idCheck"
				/* ,data : $("#formLogin").serialize() */
				,data : { "id" : $("#id").val() }
				,success: function(response) {
					if(response.rt == "success") {
						document.getElementById("id").classList.add('is-valid');
	
						document.getElementById("idFeedback").classList.remove('invalid-feedback');
						document.getElementById("idFeedback").classList.add('valid-feedback');
						document.getElementById("idFeedback").innerText = "사용 가능합니다.";
						
						document.getElementById("idAllowedNy").value = 1;
						
					} else {
						document.getElementById("id").classList.add('is-invalid');
						
						document.getElementById("idFeedback").classList.remove('valid-feedback');
						document.getElementById("idFeedback").classList.add('invalid-feedback');
						document.getElementById("idFeedback").innerText = "사용 불가합니다.";
						
						document.getElementById("idAllowedNy").value = 0;
					}
				}
			});
//		}
	});
	
	</script>
	<!-- end -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/7d63ec3c0a.js" crossorigin="anonymous"></script>
</body>
</html>