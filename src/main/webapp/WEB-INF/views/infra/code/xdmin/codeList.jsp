<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="false" %>
<html>
<head> 
	<title>Code List</title>
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
	
	h4, #myTab {
		font-family: 'MICEGothic Bold';
	}
	
	a:link {
			color:black;
			text-decoration: none;
	}
	a:visited {
			color:gray;
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
			<ul class="nav nav-tabs" id="myTab">
				<li class="nav-item">
					<button class="nav-link" id="codegrouptab">코드그룹 관리</button>
				</li>
				<li class="nav-item">
					<button class="nav-link active" aria-current="page" id="codetab">코드 관리</button>
				</li>
			</ul>
			<br>
			<div class="searchhead">
				<div class="row">
					<div class="col-1">
						<h5><b>검색분류</b></h5>
					</div>
					<div class="row justify-content-end">
						<div class="col-2">
							<select class="form-select">
								<option selected>사용여부</option>
								<option value="1">Y</option>
								<option value="2">N</option>
							 </select>
						</div>
						<div class="col-2">
							<select class="form-select">
								<option selected>날짜선택</option>
								<option value="1">등록일</option>
								<option value="2">수정일</option>
							</select>
						</div>
						<div class="col-2">
							<input type="date" class="form-control">
						</div>
						<div class="col-1" style="max-width: 30px">
							<font>~</font>
						</div>
						<div class="col-2">
							<input type="date" class="form-control">
						</div>
						<div class="col-2">
							<select class="form-select" id="inputGroupSelect2">
								<option selected>선택</option>
								<option value="1">코드그룹 코드</option>
								<option value="2">코드그룹 이름</option>
								<option value="3">코드이름(한글)</option>
								<option value="4">코드이름(영문)</option>
							 </select>
						</div>
						<div class="col-3">
							<input class="form-control" type="search" id="search_input" placeholder="검색어 입력">
						</div>
						<div class="col-1">
							<button class="btn btn-outline-secondary" type="submit" id="search_btn">조회</button>
						</div>
					</div>
				</div>
			</div>
			<h4>코드관리</h4>
			<button type="button" class="btn btn-danger" id="delbtn" style="margin: 0 0 0 20px"><i class="fa-solid fa-minus"></i></button>
			<a href="CodeForm.html">
			<button type="button" class="btn btn-outline-success" id="regbtn"><i class="fa-solid fa-plus"></i></button>
			</a>
			<br><br>
			<table class="table table-light table-striped table-hover">
				<thead>
					<tr>
						<th scope="col"><input class="form-check-input" type="checkbox" name="check" id="allcheck"></th>
						<th scope="col">번호</th>
						<th scope="col">코드그룹 코드</th>
						<th scope="col">코드그룹 이름(한글)</th>
						<th scope="col">코드</th>
						<th scope="col">대체코드</th>
						<th scope="col">코드 이름(한글)</th>
						<th scope="col">코드 이름(영문)</th>
						<th scope="col">순서</th>
						<th scope="col">등록일</th>
						<th scope="col">수정일</th>
						<th scope="col">사용</th>
						<th scope="col">삭제</th>
					</tr>
				</thead>
				<tbody class="table-group-divider">
				<c:forEach items="${list}" var="list" varStatus="status">
					<tr data-tr_value = "<c:out value="${list.seq }"/>">
						<td><input class="form-check-input" type="checkbox" name="check" value="<c:out value="${list.seq }"/>"></td>
						<td scope="row"><c:out value="${list.seq }"/></td>
						<td><c:out value="${list.codeGroup_seq }"/></td>
						<td><c:out value="${list.name_ko }"/></td>
						<td><c:out value="${list.codeNum }"/></td>
						<td><c:out value="${list.anotherCode }"/></td>
						<td><c:out value="${list.cdname_ko }"/></td>
						<td><c:out value="${list.name_eng }"/></td>
						<td><c:out value="${list.order }"/></td>
						<td></td>
						<td></td>
						<td>
							<c:choose>
								<c:when test="${list.useNY eq 0 }">N</c:when>
								<c:otherwise>Y</c:otherwise>
							</c:choose>
						</td>
						<td>
							<c:choose>
								<c:when test="${list.delNY eq 0 }">N</c:when>
								<c:otherwise>Y</c:otherwise>
							</c:choose>
						</td>
					</tr>
					</c:forEach>
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