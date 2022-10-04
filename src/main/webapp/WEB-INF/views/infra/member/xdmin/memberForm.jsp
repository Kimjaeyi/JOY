<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>
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
	
	#findaddress {
		border : none;
		background-color : blueviolet;
		color : white;
		border-radius : 6px;
		width : 150px;
		height : 50px;
		margin : 0 0 2px 0;
	}
	
	#resetbtn {
		border: none;
		background-color : lightgray;
		color : blueviolet;
		border-radius : 6px;
		width : 50px;
		height : 50px;
	}
	
	#zipcode, #findaddress, #resetbtn, #addr1, #addr2, #addr3 {
		 display: inline;
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
	
	.form-check-input:checked {
	    background-color: #6900EF;
	    border-color: #6900EF;
	}
	
</style>

<body>

<!-- start -->
	<div class="abc">
		<a href="/member/managerLogin"><h1>coocha</h1></a>
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
						<input class="form-control" type="text" placeholder="5~20자리 영문 대/소문자 + 숫자" name="id" id="id" maxlength="20" value="<c:out value="${item.id}"/>"
						<c:if test="${not empty item.id}">readonly</c:if>
						>
						<div class="invalid-feedback" id="idFeedback"></div> 
						<br><br>
						<h6>비밀번호</h6>
						<br>
						<input type="password" class="form-control" id="pwd" name="pwd" placeholder="비밀번호를 입력해주세요" value="<c:out value="${item.pwd}"/>">
						<br>
						<br><br>
						<h6>생년월일</h6>
						<br>
						<input type="text" class="form-control" id="dob" name="dob" placeholder="생년월일 8자리 (YYYY-MM-DD)" value="<c:out value="${item.dob}"/>">
						<br><br>
						<h6>주소</h6>
						<br>
						<input type="text" class="form-control" id="zipcode" name="zipcode" placeholder="우편번호" style="display: inline; width: 20%" value="<c:out value="${item.zipcode}"/>" readonly>
						<button type="button" id="resetbtn"><i class="fa-solid fa-rotate-left"></i></button>
						<button type="button" id="findaddress">우편번호 찾기</button>
						<input type="text" class="form-control" id="addr1" name="addr1" placeholder="도로명 주소" value="<c:out value="${item.addr1}"/>" readonly>
						<br><br><br>
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
						<div class="form-check form-check-inline" name="gender">
							<input class="form-check-input" type="radio" name="gender" id="gender1" value="43" <c:if test="${item.gender eq 43 }"> checked</c:if>>
							<label class="form-check-label" for="gender1">남자</label>
						</div>
						<div class="form-check form-check-inline" name="gender">
							<input class="form-check-input" type="radio" name="gender" id="gender2" value="44" <c:if test="${item.gender eq 44 }"> checked</c:if>>
							<label class="form-check-label" for="gender2">여자</label>
						</div>
						<br><br>
					</div>
					<div class="col">
						<h6>회원등급</h6>
						<br>
						<select class="form-select" name="grade" id="grade">
							<option selected>::회원 등급::</option>
							<option value="1" <c:if test="${item.grade eq 1}">selected</c:if>>MANAGER</option>
							<option value="2" <c:if test="${item.grade eq 2}">selected</c:if>>FRIEND</option>
							<option value="3" <c:if test="${item.grade eq 3}">selected</c:if>>VIP</option>
							<option value="4" <c:if test="${item.grade eq 4}">selected</c:if>>VVIP</option>
						</select>
						<br><br>
						<h6>이메일</h6>
						<br>
						<input type="text" class="form-control" id="emailID" name="emailID" placeholder="이메일아이디를 입력해주세요" value="<c:out value="${item.emailID}"/>" style="width: 54%; display: inline">
						<select class="form-select" name="emailDomain" id="emailDomain" style="width: 45%; display: inline">
							<option selected>::이메일도메인::</option>
							<option value="8" <c:if test="${item.emailDomain eq 8}">selected</c:if>>@naver.com</option>
							<option value="9" <c:if test="${item.emailDomain eq 9}">selected</c:if>>@gmail.com</option>
							<option value="10" <c:if test="${item.emailDomain eq 10}">selected</c:if>>@hanmail.net</option>
							<option value="11" <c:if test="${item.emailDomain eq 11}">selected</c:if>>@daum.com</option>
							<option value="12" <c:if test="${item.emailDomain eq 12}">selected</c:if>>@nate.com</option>
							<option value="13" <c:if test="${item.emailDomain eq 13}">selected</c:if>>@coocha.com</option>
						</select>
						<br><br><br>
						<h6>비밀번호 확인</h6>
						<br>
						<input type="password" class="form-control" id="pwd2" name="pwd2" placeholder="비밀번호를 다시 한번 입력해주세요">
						<span id="alert-success" style="display: none; color: green; font-size: 13px; text-align: left;"><i class="fa-solid fa-check"></i> 비밀번호가 일치합니다.</span>
						<span id="alert-danger" style="display: none; color: red; font-size: 13px; text-align: left;"><i class="fa-solid fa-xmark"></i> 비밀번호가 일치하지 않습니다.</span>
						<br><br><br>
						<h6>휴대폰번호</h6>
						<br>
						<select class="form-select" name="telecom" id="telecom" style="width: 20%; display: inline">
							<option selected>::통신사::</option>
							<option value="5" <c:if test="${item.telecom eq 5}">selected</c:if>>SKT</option>
							<option value="6" <c:if test="${item.telecom eq 6}">selected</c:if>>KT</option>
							<option value="7" <c:if test="${item.telecom eq 7}">selected</c:if>>LG</option>
						</select>
						<input type="text" class="form-control" id="phone" name="phone" style="width: 79%; display: inline" placeholder="ex. 010-0000-0000" value="<c:out value="${item.phone}"/>">
						<br><br><br>
						<h6>&nbsp;</h6>
						<br>
						<input type="text" class="form-control" id="addr2" name="addr2" placeholder="상세주소" value="<c:out value="${item.addr2}"/>">
						<input type="text" class="form-control" id="addr3" name="addr3" placeholder="참고항목" value="<c:out value="${item.addr3}"/>" readonly>
						<br><br><br>
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
						<div class="form-check form-check-inline" name="validity">
							<input class="form-check-input" type="radio" name="validity" id="validity1" value="45" <c:if test="${item.validity eq 45 }"> checked</c:if>>
							<label class="form-check-label" for="validity1">1년</label>
						</div>
						<div class="form-check form-check-inline" name="validity">
							<input class="form-check-input" type="radio" name="validity" id="validity2" value="46" <c:if test="${item.validity eq 46 }"> checked</c:if>>
							<label class="form-check-label" for="validity2">3년</label>
						</div>
						<div class="form-check form-check-inline" name="validity">
							<input class="form-check-input" type="radio" name="validity" id="validity3" value="47" <c:if test="${item.validity eq 47 }"> checked</c:if>>
							<label class="form-check-label" for="validity3">탈퇴 시 파기</label>
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
									<button type="button" class="btn btn-secondary" id="delbtn">삭제</button>
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
			<br><br>
		</div>
	</div>
	
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="/resources/js/validation.js"></script>
	
	<script type="text/javascript">
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
	var goUrlForm = "/member/memberForm";
	
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
		formVo.attr("action", goUrlForm).submit();
	});
	
	$("#findaddress").on("click", function() {
		here();
	});
	
	function here() {
	    new daum.Postcode({
	          oncomplete: function(data) {
	       	    var addr = '';
	  		    var extraAddr = '';
	
				if (data.userSelectedType === 'R') { 
	                  addr = data.roadAddress;
	              } else { 
	                  addr = data.jibunAddress;
	              }
	
	              if(data.userSelectedType === 'R'){
	                  if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                      extraAddr += data.bname;
	                  }
	                  if(data.buildingName !== '' && data.apartment === 'Y'){
	                      extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                  }
	                  if(extraAddr !== ''){
	                      extraAddr = ' (' + extraAddr + ')';
	                  }
	                  document.getElementById("addr3").value = extraAddr;
	              
	              } else {
	                  document.getElementById("addr3").value = '';
	              }
	
	              document.getElementById('zipcode').value = data.zonecode;
	              document.getElementById('addr1').value = addr;
	              document.getElementById('addr2').focus();
	              
				}
	    
	    }).open();
	}
	
	$("#resetbtn").on("click", function() {
		$("#zipcode").val('');
		$("#addr1").val('');
		$("#addr2").val('');
		$("#addr3").val('');
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
	
	$('#pwd').focusout(function () {
        var pwd1 = $("#pwd").val();
        var pwd2 = $("#pwd2").val();
  
        if ( pwd1 != '' && pwd2 == '' ) {
            null;
        } else if (pwd1 != "" || pwd2 != "") {
            if (pwd1 == pwd2) {
                $("#alert-success").css('display', 'inline-block');
                $("#alert-danger").css('display', 'none');
            } else {
                $("#alert-success").css('display', 'none');
                $("#alert-danger").css('display', 'inline-block');
            }
        }
    });
	
	</script>
	<!-- end -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/7d63ec3c0a.js" crossorigin="anonymous"></script>
</body>
</html>