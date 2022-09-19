<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="false" %>
<html> 
<head>
	<title>회원 목록</title>
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

<style type="text/css">

	a:link {
		color:black;
		text-decoration: none;
	}
	a:visited {
		color: none;
		text-decoration: none;
	}
	a:hover {
		color:mediumpurple;
		text-decoration: none;
	}
	
	.searchhead {
		padding: 15px;
		margin: 10px 0 5% 0;
		border-radius: 6px;
		border: 1px solid mediumpurple;
	}
	
	.col-2 {
		max-width: 140px;
	}
	
	.btn-outline-secondary {
		width: 35px;
		height: 35px;
	}
	
	input {
		font-size: small;
	}
	
	table {
		margin: 5% 0;
	}
	
	th, td {
		text-align : center;
		vertical-align: middle;
		height: 35px;
	}
	
	th {
		font-weight: bold;
	}
	
	.row {
		padding: 20px;
	}
	
	.abc {
		margin: 2% 15%;
	}
	
	.form-check-input:checked {
	    background-color: #6900EF;
	    border-color: #6900EF;
	}
	
	#viewsel {
		width: 70px; 
		height: 40px; 
		float: right;
	}
	
	#regbtn, #delbtn {
		float: right;
		width: 53px;
		height: 40px;
	}
	
	.nav-tabs {
		--bs-nav-tabs-link-active-color: #6900EF;
		--bs-nav-tabs-link-active-border-color: #6900EF #6900EF #fff; 
	}
	
	.nav {
		--bs-nav-link-hover-color: #9154f3;
		width: 280px;
	}
	
	.nav-link {
		color : gray;
	}
	
	#lefttab.nav-link.active {
		color: #6900EF;
	}

	.pagination {
		justify-content: center;
		--bs-pagination-color: mediumpurple;
		--bs-pagination-hover-color: mediumpurple;
		--bs-pagination-focus-color: #6900EF;
		--bs-pagination-active-bg: #6900EF;
    	--bs-pagination-active-border-color: #6900EF;
    	margin: 3% 0;
	}
	
	.page-link {
		height: 30px;
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
	}
	
	.flex-column {
		width: 200px;
		height: 100vh;
		margin: 3% 0 0 0;
	} 
	
	#lefttab {
		height: 100px;
		font-size: 1.4rem;
		font-weight: bold;
		vertical-align: middle;
	}
	
</style>
	
<body>

<!-- start -->
	<div class="header" style="left: 0px">
        <div class="inner">
            <h1 class="logo">
                <a href="/"><span class="blind">COOCHA</span></a>
                <span class="title-category">카테고리</span>
            </h1>

            <div class="search">
                <div class="search-input"><input type="search" class="input"></div>
            </div>

            <div class="hamburger">
                <div class="hamburger-box">
                    <div class="hamburger-inner"></div>
                </div>
            </div>

            <ul class="gnb login">
				<li>
					<a href="javascript:;" class="btn-my btn-layer-open"><span class="blind">MY</span></a>
					<div class="area-my-page area-gnb-layer">
					    <div class="title">MY PAGE</div>
					    <ul>
					        <li><div id="likeTab">내가 좋아요 한 상품</div></li>
					        <li><a href="javascript:void(0);" id="viewTab">내가 본 상품</a></li>
					        <li><a href="https://member.coocha.co.kr/member/join/myinfo.do">내 정보 수정</a></li>
					        <li class="logout"><a href="javascript:fn_logout('');">로그아웃</a></li>
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
	    		<nav class="nav flex-column">
					<a class="nav-link" href="../codeGroup/codeGroupList" id="lefttab">코드그룹 관리</a>
					<a class="nav-link" href="../code/codeList" id="lefttab">코드 관리</a>
					<a class="nav-link active" href="memberList" aria-current="page" id="lefttab">회원 관리</a>
					<a class="nav-link" href="#" id="lefttab">상품 관리</a>
				</nav>
	    	</div>
    		<div class="col-9">
				<ul class="nav nav-tabs" id="myTab">
					<li class="nav-item">
						<button class="nav-link active" id="listtab">회원 관리</button>
					</li>
					<li class="nav-item">
						<button class="nav-link" id="regtab">회원 등록</button>
					</li>
					<li class="nav-item">
						<button class="nav-link" id="modtab">회원정보 수정</button>
					</li>
				</ul>
				<br>
				<form method="post" name="formList">
					<input type="hidden" name="seq">
					<input type="hidden" name="thisPage" vlaue="<c:out value="${vo.thisPage}" default="1"/>">
					<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
					<input type="hidden" name="checkboxSeqArray">
					
					<div class="searchhead">
						<div class="row">
							<div class="col-2">
								<b>검색분류</b>
							</div>
							<div class="row justify-content-center">
								<div class="col-2">
									<select class="form-select" name="shOptionMem">
										<option value="" <c:if test="${empty vo.shOptionMem}">selected</c:if>>구분</option>
										<option value="1" <c:if test="${vo.shOptionMem eq 1}">selected</c:if>>MANAGER</option>
										<option value="2" <c:if test="${vo.shOptionMem eq 2}">selected</c:if>>일반</option>
										<option value="3" <c:if test="${vo.shOptionMem eq 3}">selected</c:if>>VIP</option>
										<option value="4" <c:if test="${vo.shOptionMem eq 4}">selected</c:if>>VVIP</option>
									 </select>
								</div>
								<div class="col-2">
									<select class="form-select" name="shOptionDate">
										<option value="">날짜선택</option>
										<option value="1">생년월일</option>
										<option value="2">가입일</option>
									</select>
								</div>
								<div class="col-3" style="max-width: 150px">
									<input type="text" id="shstartDate" name="shstartDate" class="form-control shDate" value="${vo.shstartDate}" placeholder="시작일" autocomplete="off">
								</div>
								<div class="col-1" style="max-width: 30px">
									<font>~</font>
								</div>
								<div class="col-3" style="max-width: 150px">
									<input type="text" id="shendDate" name="shendDate" class="form-control shDate" value="${vo.shendDate}" placeholder="종료일" autocomplete="off">
								</div>
							</div>
							<div class="row justify-content-center">
								<div class="col-2">
									<select class="form-select" name="shDelNy">
										<option value="" <c:if test="${empty vo.shDelNy }">selected</c:if>>탈퇴여부</option>
										<option value="1" <c:if test="${vo.shDelNy eq 1 }">selected</c:if>>Y</option>
										<option value="0" <c:if test="${vo.shDelNy eq 0 }">selected</c:if>>N</option>
									 </select>
								</div>
								<div class="col-2">
									<select class="form-select" name="shOption" id="selectfield">
										<option value="" <c:if test="${empty vo.shOption}"></c:if>>선택</option>
										<option value="1" <c:if test="${vo.shOption eq 1}"></c:if>>이름</option>
										<option value="2" <c:if test="${vo.shOption eq 2}"></c:if>>이메일</option>
										<option value="3" <c:if test="${vo.shOption eq 3}"></c:if>>연락처</option>
									 </select>
								</div>
								<div class="col-3">
									<input class="form-control" type="search" id="search_input" name="shValue" value="<c:out value="${vo.shValue }"/>" placeholder="검색어 입력">
								</div>
								<div class="col-1" style="max-width: 55px">
									<button type="button" class="btn btn-outline-secondary" id="reset_btn"><i class="fa-solid fa-rotate-left"></i></button>
								</div>
								<div class="col-1" style="max-width: 55px">
									<button class="btn btn-outline-secondary" type="submit" id="search_btn"><i class="fa-solid fa-magnifying-glass"></i></button>
								</div>
							</div>
						</div>
					</div>
				</form>
				<font style="font-size: 20px"><b>회원관리</b></font>
				<br>
				<select class="form-select" id="viewsel">
					<option selected>10</option>
					<option value="1">15</option>
					<option value="2">30</option>
				</select>
				<br>
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
						<c:choose>
							<c:when test="${fn:length(list) eq 0}">
								<td class="text-center" colspan="10">There is no data!</td>
							</c:when>
							<c:otherwise>
								<c:forEach items="${list}" var="list" varStatus="status">
									<tr data-tr_value = "<c:out value="${list.seq }"/>">
										<td><input class="form-check-input" type="checkbox" name="check" value="<c:out value="${list.seq }"/>"></td>
										<td scope="row"><c:out value="${list.seq }"/></td>
										<td><c:out value="${list.membership }"/></td>
										<td><a href="javascript:goForm(<c:out value="${list.seq }"/>)"><c:out value="${list.name }"/></td>
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
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>
				<button type="button" class="btn btn-danger" id="delbtn" style="margin: 0 0 0 20px"><i class="fa-solid fa-minus"></i><i class="fa-solid fa-user"></i></button>
				<a href="memberForm">
					<button type="button" class="btn btn-outline-success" id="regbtn"><i class="fa-solid fa-plus"></i><i class="fa-regular fa-user"></i></button>
				</a>
				<!-- pagination s -->
				<%@include file="../../../common/xdmin/includeV1/pagination.jsp"%>
				<!-- pagination e -->
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
	        } else {
	            return false;
	        }
	    });
	});
	
	var goUrlList = "/member/memberList"; 			/* #-> */
	var goUrlInst = "/member/memberInst"; 			/* #-> */
	var goUrlUpdt = "/member/memberUpdt";				/* #-> */
	var goUrlUele = "/member/memberUele";				/* #-> */
	var goUrlDele = "/member/memberDele";				/* #-> */
	var goUrlForm = "/member/memberForm";
	
	var excelUri = "/member/excelDownload";
	
	var mainKey = $("input:hidden[name=mainKey]");
	
	var form = $("form[name=formList]");
	
	var seq = $("input:hidden[name=seq]");
	
	var checkboxSeqArray = [];
	
	$("#search_btn").on("click", function(){
		if(validationList() == false) return false;
		form.attr("action", goUrlList).submit();
	});
	
	$("#reset_btn").on("click", function(){
		$(location).attr("href", goUrlList);
	});
	
	$(document).ready(function() {
		$("input.shDate").datepicker();
	});
	
	goForm = function(keyValue) {
		mainKey.val(keyValue);
		form.attr("action", goUrlForm).submit();
	}
	
	goList = function(thisPage) {
		$("input:hidden[name=thisPage]").val(thisPage);
		form.attr("action", goUrlList).submit();
	}
	
	$.datepicker.setDefaults({
		dateFormat : 'yy-mm-dd',
		prevText : '이전 달',
		nextText : '다음 달',
		monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월',
				'9월', '10월', '11월', '12월' ],
		monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월',
				'9월', '10월', '11월', '12월' ],
		dayNames : [ '일', '월', '화', '수', '목', '금', '토' ],
		dayNamesShort : [ '일', '월', '화', '수', '목', '금', '토' ],
		dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
		showMonthAfterYear : true,
		yearSuffix : '년'
	});

</script>
<!-- end -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/7d63ec3c0a.js" crossorigin="anonymous"></script>
</body>
</html>