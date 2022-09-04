<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="false" %>
<html> 
<head>
	<title>Member List</title>
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

<style type="text/css">

	@import url('css/font.css');
	
	h1 {
		font-family: 'GilbeotRainbow';
	}
	
	h4, #myTab {
		font-family: 'MICEGothic Bold';
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
	
	.searchhead{
		font-family: 'MICEGothic';
		padding: 15px;
		margin: 10px 0 5% 0;
		border-radius: 6px;
		border: 1px solid mediumpurple;
	}
	
	.col-2 {
		max-width: 140px;
	}
	
	#search_input {
		width: 145px; 
	}
	
	#search_btn {
		margin: 0 0 0 15px;
	}
	
	input {
		font-size: small;
	}
	
	th, td {
		text-align : center;
		font-family: 'MICEGothic';
		vertical-align: middle;
	}
	
	.row {
		padding: 20px;
	}
	
	.member {
		margin: 2% 15%;
	}
	
	.form-check-input:checked {
	    background-color: #6900EF;
	    border-color: #6900EF;
	}
	
	#regbtn, #delbtn {
		font-family: 'MICEGothic Bold';
		float: right;
	}
	
	.bbb table {
		--bs-table-accent-bg: rgba(0, 0, 0, 0.05);
		--bs-table-striped-bg: #ffffff;
	}
	
	.nav-tabs {
		--bs-nav-tabs-link-active-color: #6900EF;
		--bs-nav-tabs-link-active-border-color: #6900EF #6900EF #fff; 
	}
	
	.nav {
		--bs-nav-link-hover-color: #9154f3;
	}
	
	.nav-link {
		color : gray;
	}
	
	.bbb {
		margin: 5% 10%;
	}
	
	.bbb td {
		text-align: left;
		padding: 15px;
	}
	
	.ccc {
		margin: 5% 10%;
	}
	
	.ccc th {
		background-color: rgba(0, 0, 0, 0.05);
	}
	
	.ccc td {
		text-align: left;
		padding: 15px;
	}
	
	.pagination {
		justify-content: center;
		--bs-pagination-color: mediumpurple;
		--bs-pagination-hover-color: mediumpurple;
		--bs-pagination-focus-color: #6900EF;
		--bs-pagination-active-bg: #6900EF;
    	--bs-pagination-active-border-color: #6900EF;
	}
	
	#modbtn {
		display: block;
		margin: auto;
		background-color: #9154f3;
		color: white;
		border: none;
		border-radius: 4px;
		width: 140px;
		height: 60px;
		font-size: 20px;
		font-family: 'MICEGothic Bold';
	}
	
</style>
	
<body>

<!-- start -->
	<div class="abc">
		<a href="../user/item/Mainpage.html">
			<h1 style="margin: 30px 0 0 10%">coocha</h1>
		</a>
		<br><hr><br>
		<div class="member">
			<ul class="nav nav-tabs" id="myTab" role="tablist">
				<li class="nav-item" role="presentation">
					<button class="nav-link active" id="memberlist" data-bs-toggle="tab" data-bs-target="#home-tab-pane" type="button" role="tab" aria-controls="home-tab-pane" aria-selected="true">회원 관리</button>
				</li>
				<li class="nav-item" role="presentation">
					<button class="nav-link" id="memberinfo" data-bs-toggle="tab" data-bs-target="#profile-tab-pane" type="button" role="tab" aria-controls="profile-tab-pane" aria-selected="false">회원 상세정보</button>
				</li>
				<li class="nav-item" role="presentation">
					<button class="nav-link" id="membermod" data-bs-toggle="tab" data-bs-target="#contact-tab-pane" type="button" role="tab" aria-controls="contact-tab-pane" aria-selected="false">회원정보 수정</button>
				</li>
			</ul>
			<div class="tab-content" id="myTabContent">
				<div class="tab-pane fade show active" id="home-tab-pane" role="tabpanel" aria-labelledby="home-tab" tabindex="0">
					<br>
					<div class="searchhead">
						<div class="row">
							<div class="col-1">
								<h5><b>검색분류</b></h5>
							</div>
							<div class="row justify-content-end">
								<div class="col-2">
									<select class="form-select" id="inputGroupSelect1">
										<option selected>구분</option>
										<option value="1">MANAGER</option>
										<option value="2">VVIP</option>
										<option value="3">VIP</option>
										<option value="4">일반</option>
									 </select>
								</div>
								<div class="col-2">
									<select class="form-select" id="inputGroupSelect1">
										<option selected>탈퇴여부</option>
										<option value="1">Y</option>
										<option value="2">N</option>
									 </select>
								</div>
								<div class="col-2">
									<select class="form-select" id="inputGroupSelect3">
										<option selected>날짜선택</option>
										<option value="1">생년월일</option>
										<option value="2">가입일</option>
									</select>
								</div>
								<div class="col-2">
									<input type="date" class="form-control">
								</div>
								<div class="col-6">
									<form method="post" action="/codeGroup/codeGroupList">
										<div class="col-4">
											<select class="form-select" id="inputGroupSelect2">
												<option selected>선택</option>
												<option value="1">이름</option>
												<option value="2">이메일</option>
												<option value="3">연락처</option>
											 </select>
										</div>
										<div class="col-6">
											<input class="form-control" type="search" id="search_input" placeholder="검색어 입력">
										</div>
										<div class="col-2">
											<button class="btn btn-outline-secondary" type="submit" id="search_btn">조회</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
					<h4>회원관리</h4>
					<button type="button" class="btn btn-danger" id="delbtn" style="margin: 0 0 0 20px"><i class="fa-solid fa-minus"></i><i class="fa-solid fa-user"></i></button>
					<a href="memberReg.html">
					<button type="button" class="btn btn-outline-success" id="regbtn"><i class="fa-solid fa-plus"></i><i class="fa-regular fa-user"></i></button>
					</a>
					<br><br>
					<table class="table table-light table-striped table-hover">
						<thead>
							<tr>
								<th scope="col"><input class="form-check-input" type="checkbox" name="check" id="allcheck"></th>
								<th scope="col">번호</th>
								<th scope="col">등급</th>
								<th scope="col">이름</th>
								<th scope="col">생년월일</th>
								<th scope="col">이메일</th>
								<th scope="col">연락처</th>
								<th scope="col">가입일</th>
								<th scope="col">탈퇴여부</th>
							</tr>
						</thead>
						<tbody class="table-group-divider">
<%-- 						
							<c:choose>
								<c:when test="${fn:length(list) eq 0}">
									<td class="text-center" colspan="10">There is no data!</td>
								</c:when>
								<c:otherwise>
 --%>								
									<c:forEach items="${list}" var="list" varStatus="status">
										<tr data-tr_value = "<c:out value="${list.seq }"/>">
											<td><input class="form-check-input" type="checkbox" name="check" value="<c:out value="${list.seq }"/>"></td>
											<td scope="row"><c:out value="${list.seq }"/></td>
											<td><c:out value="${list.seq }"/></td>
											<td><c:out value="${list.membership }"/></td>
											<td><c:out value="${list.name }"/></td>
											<td><c:out value="${list.dob }"/></td>
											<td><c:out value="${list.email }"/></td>
											<td><c:out value="${list.phone }"/></td>
											<td><c:out value="${list.regDate }"/></td>
											<td>
												<c:choose>
													<c:when test="${list.delNY eq 0 }">N</c:when>
													<c:otherwise>Y</c:otherwise>
												</c:choose>
											</td>
										</tr>
									</c:forEach>
<%-- 									
								</c:otherwise>
							</c:choose>
 --%>							
						</tbody>
					</table>
					<br><br>
					<nav aria-label="Page navigation example">
						<ul class="pagination">
							<li class="page-item">
								<a class="page-link" href="#" aria-label="Previous">
									<span aria-hidden="true">&laquo;</span>
								</a>
							</li>
							<li class="page-item active"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item">
								<a class="page-link" href="#" aria-label="Next">
									<span aria-hidden="true">&raquo;</span>
								</a>
							</li>
						</ul>
					</nav>
					<br><br>
				</div>
				<div class="tab-pane fade" id="profile-tab-pane" role="tabpanel" aria-labelledby="profile-tab" tabindex="0">
				<br>
					<div class="bbb">
						<h4>기본 정보</h4>
						<br>
						<table class="table table-striped-columns">
							<tbody class="table-group-divider">
								<tr>
									<th width="40" scope="col">아이디</th>
									<td width="60" scope="col" style="text-align: left">ysw</td>
								</tr>
								<tr>
									<th scope="row">이름</th>
									<td>임시완</td>
								</tr>
								<tr>
									<th scope="row">비밀번호</th>
									<td>12345</td>
								</tr>
								<tr>
									<th scope="row">휴대폰 번호</th>
									<td>010-2222-3333</td>
								</tr>
								<tr>
									<th scope="row">이메일</th>
									<td>ysw@gmail.com</td>
								</tr>
								<tr>
									<th scope="row">개인정보 유효기간</th>
									<td>
										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
											<label class="form-check-label" for="flexRadioDefault1">3년</label>
										</div>
										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
											<label class="form-check-label" for="flexRadioDefault2">1년</label>
										</div>
										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault3">
											<label class="form-check-label" for="flexRadioDefault1">탈퇴 시 파기</label>
										</div>
									</td>
								</tr>
								<tr>
									<th scope="row">닉네임</th>
									<td>null(선택사항)</td>
								</tr>
								<tr>
									<th scope="row">생년월일</th>
									<td>null(선택사항)</td>
								</tr>
								<tr>
									<th scope="row">성별</th>
									<td>
										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
											<label class="form-check-label" for="inlineRadio1">남</label>
										</div>
										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
											<label class="form-check-label" for="inlineRadio2">여</label>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="ccc">
						<br><br>
						<h4>환불 정보</h4>
						<br>
						<table class="table">
							<tbody class="table-group-divider">
								<tr>
									<th width="30" scope="col">예금주</th>
									<td width="70" scope="col" style="text-align: left"><b>김재이</b></td>
								</tr>
								<tr>
									<th rowspan="2">계좌정보</th>
									<td>우체국</td>
								</tr>
								<tr>
									<td>123-45-67890</td>
								</tr>
							</tbody>
						</table>
						<br><br>
						<a href="#contact-tab-pane" target="_self">
						<button type="button" id="modbtn">정보수정</button>
						</a>
					</div>
				</div>
				</a>
				<div class="tab-pane fade" id="contact-tab-pane" role="tabpanel" aria-labelledby="contact-tab" tabindex="0">
					<br>
					<div class="bbb">
						<h4>기본 정보</h4>
						<br>
						<table class="table table-striped-columns">
							<tbody class="table-group-divider">
								<tr>
									<th width="30" scope="col">아이디</th>
									<td width="70" scope="col"><input class="form-control" id="notmod" "type="text" placeholder="ysw" disabled></td>
								</tr>
								<tr>
									<th scope="row">이름</th>
									<td><input class="form-control" id="notmod" type="text" placeholder="임시완" disabled></td>
								</tr>
								<tr>
									<th scope="row">신규 비밀번호</th>
									<td><input class="form-control" type="password" placeholder="8~16자리 영문 대/소문자, 숫자, 특수문자 3가지 이상 사용"></td>
								</tr>
								<tr>
									<th scope="row">신규 비밀번호 확인</th>
									<td><input class="form-control" type="password" placeholder="위와 동일하게 입력"></td>
								</tr>
								<tr>
									<th scope="row">휴대폰 번호</th>
									<td><input class="form-control" type="text" value="010-2222-3333"></td>
								</tr>
								<tr>
									<th scope="row">이메일</th>
									<td><input class="form-control" type="text" value="ysw@gmail.com"></td>
								</tr>
								<tr>
									<th scope="row">개인정보 유효기간</th>
									<td>
										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
											<label class="form-check-label" for="flexRadioDefault1">3년</label>
										</div>
										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2">
											<label class="form-check-label" for="flexRadioDefault2">1년</label>
										</div>
										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault3">
											<label class="form-check-label" for="flexRadioDefault1">탈퇴 시 파기</label>
										</div>
									</td>
								</tr>
								<tr>
									<th scope="row">닉네임</th>
									<td><input class="form-control" type="text"></td>
								</tr>
								<tr>
									<th scope="row">생년월일</th>
									<td><input class="form-control" type="text" placeholder="YYYY-MM-DD"></td>
								</tr>
								<tr>
									<th scope="row">성별</th>
									<td>
										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
											<label class="form-check-label" for="inlineRadio1">남</label>
										</div>
										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
											<label class="form-check-label" for="inlineRadio2">여</label>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="ccc">
						<br><br>
						<h4>환불 정보</h4>
						<br>
						<table class="table">
							<tbody class="table-group-divider">
								<tr>
									<th width="30" scope="col">예금주</th>
									<td width="70" scope="col"><input class="form-control" type="text"></td>
								</tr>
								<tr>
									<th rowspan="2">계좌정보</th>
									<td>
										<select class="form-select" id="inputGroupSelect3">
											<option selected>은행명을 선택하세요</option>
											<option value="1">국민은행</option>
											<option value="2">기업은행</option>
											<option value="3">농협중앙회</option>
											<option value="4">신한은행</option>
											<option value="5">우리은행</option>
											<option value="6">새마을금고</option>
											<option value="7">하나은행</option>
											<option value="8">우체국</option>
										 </select>
									</td>
								</tr>
								<tr>
									<td><input class="form-control" type="text" placeholder="'-'없이 숫자만 입력하세요."></td>
								</tr>
							</tbody>
						</table>
						<br><br>
						<button type="button" id="modbtn">수정완료</button>
					</div>
				</div>
			</div>			
		</div>
	</div>

<script>

$(document).ready(function() {
	$("#allcheck").click(function() {
		if($("#allcheck").is(":checked")) $("input[name=check]").prop("checked", true);
		else $("input[name=check]").prop("checked", false);
	});

	$("input[name=check]").click(function() {
		var total = $("input[name=check]").length;
		var checked = $("input[name=check]:checked").length;

		if(total != checked) $("#allcheck").prop("checked", false);
		else $("#allcheck").prop("checked", true); 
	});
	
	$('#delbtn').click(function(){
        if(confirm("삭제하시겠습니까?")){
            $("input[name=check]:checked").each(function(){
                var tr_value =$(this).val();
                var tr=$("tr[data-tr_value='"+tr_value+"']");
                tr.remove();
            });
        }else{
            return false;
        }
    });
});

$(function(){
    if (location.hash == "#memberlist"){
        $('.nav-tabs').find('li').eq(0).addClass('active').siblings().removeClass();
        $('.tab-content').find('#memberlist').addClass('active in').siblings().removeClass('active in');
    } else if(location.hash == "#memberinfo"){
        $('.nav-tabs').find('li').eq(1).addClass('active').siblings().removeClass();
        $('.tab-content').find('#memberinfo').addClass('active in').siblings().removeClass('active in');
    } else if(location.hash == "#membermod"){
        $('.nav-tabs').find('li').eq(2).addClass('active').siblings().removeClass();
        $('.tab-content').find('#membermod').addClass('active in').siblings().removeClass('active in');
    }
})
/* 	
	button = document.querySelector('button');
	input = document.getElementById('search_btn')

	// 클릭,엔터키 이벤트 
	input.focus()
	input.addEventListener('keydown',function(e){
	    if(e.key === "Enter"){
	      Filter();
	    }
	})
	button.addEventListener('click',Filter);

	function Filter(){
	    var search_btn , item , name
	    
	    search_btn = document.getElementById('search_btn').value.toUpperCase();
	    item = document.getElementsByClassName('one_quarter')
	    
	  //indexOf()를 활용한 검색기능 구현
	  for(i=0;i<item.length;i++){
	      name = item[i].getElementsByClassName("name");
	      if(name[0].innerHTML.toUpperCase().indexOf(value) > -1){
	        item[i].style.display = "inline-block";
	      }else{
	        item[i].style.display = "none";
	      }
	    }
	}	
 */	
</script>
<!-- end -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/7d63ec3c0a.js" crossorigin="anonymous"></script>
</body>
</html>