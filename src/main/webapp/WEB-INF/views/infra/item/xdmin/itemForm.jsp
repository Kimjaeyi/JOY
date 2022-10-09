<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>
<html> 
<head>
	<title>상품 등록</title>
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
		margin: 1% 0;
	}
	
	#myTab {
		width: 215px;
		margin-bottom: 4%;
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
		width: 255px;
	}
	
	.nav-link {
		color : gray;
	}
	
	#listbtn, #savebtn, #clearbtn, #delbtn, #uelbtn {
		width: 40px;
		height: 40px;
		display: inline;
		margin: 0 5px;
	}
	
	#realclearbtn, #realdelbtn, #realuelbtn {
		background-color: #6900EF; 
		color: white; 
		border-radius: 0.375rem;
	}
	
	.ccc {
		display: inline;
		margin: 0 0 5% 0;
	}
	
	.addScroll{
		overflow-y:auto;
		height: 150px;
		background-color:#E9ECEF;
		padding-top:5px; 
		padding-left:5px;
	}
	
</style>

<body>

<!-- start -->
	<div class="abc">
		<a href="/"><h1>coocha</h1></a>
		<br><hr><br>
		<div class="aaa">
			<!-- <form method="post" name="form" action="/code/codeInst"> -->
				<form id="form" name="form" method="post" enctype="multipart/form-data">
				<!-- *Vo.jsp s -->
				<%@include file="itemVo.jsp"%>		<!-- #-> -->
				<!-- *Vo.jsp e -->
				<ul class="nav nav-tabs" id="myTab">
					<li class="nav-item">
						<button class="nav-link" id="listtab">상품 목록</button>
					</li>
					<li class="nav-item">
						<button class="nav-link active" id="regmodtab"><b>상품 등록 및 수정</b></button>
					</li>
				</ul>
				<div class="row">
					<div class="col">
						<h6>사용여부</h6>
						<br>
						<select class="form-select" name="useNY">
							<option selected>::선택::</option>
							<option value="1" <c:if test="${item.useNY eq 1}">selected</c:if>>Y</option>
							<option value="0" <c:if test="${item.useNY eq 0}">selected</c:if>>N</option>
						</select>
					</div>
					<div class="col">
						<h6>삭제여부</h6>
						<br>
						<select class="form-select" name="delNY">
							<option selected>::선택::</option>
							<option value="1" <c:if test="${item.delNY eq 1}">selected</c:if>>Y</option>
							<option value="0" <c:if test="${item.delNY eq 0}">selected</c:if>>N</option>
						</select>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<h6>번호</h6>
						<br>
						<input class="form-control" type="text" name="seq" value="<c:out value="${item.seq }"/>" readonly/>
					</div>
					<div class="col">
						<h6>재고</h6>
						<br>
						<input class="form-control" type="text" name="stock" value="<c:out value="${item.stock }"/>">
					</div>
				</div>
				<div class="row">
					<div class="col">
						<h6>상품 이름</h6>
						<br>
						<input class="form-control" type="text" name="title" value="<c:out value="${item.title }"/>">
					</div>
					<div class="col">
						<h6>출고일</h6>
						<br>
						<input class="form-control" type="text" name="release" value="<c:out value="${item.release }"/>">
					</div>
				</div>
				<div class="row">
					<div class="col">
						<h6>할인율</h6>
						<br>
						<input class="form-control" type="text" name="discount" value="<c:out value="${item.discount }"/>">
					</div>
					<div class="col">
						<h6>가격</h6>
						<br>
						<input class="form-control" type="text" name="price" value="<c:out value="${item.price }"/>">
					</div>
				</div>
				<div class="row">
					<div class="col">
						<h6>배송비</h6>
						<br>
						<select class="form-select" name="shippingfee">
							<option selected>::선택::</option>
							<option value="14" <c:if test="${item.shippingfee eq 14}">selected</c:if>>무료</option>
							<option value="15" <c:if test="${item.shippingfee eq 15}">selected</c:if>>3만원 이상 구매시 무료배송</option>
							<option value="16" <c:if test="${item.shippingfee eq 16}">selected</c:if>>5만원 이상 구매시 무료배송</option>
							<option value="17" <c:if test="${item.shippingfee eq 17}">selected</c:if>>3,000원</option>
						</select>
					</div>
					<div class="col">
						<h6>택배사</h6>
						<br>
						<select class="form-select" name="delivery">
							<option selected>::선택::</option>
							<option value="18" <c:if test="${item.deliverymethod eq 18}">selected</c:if>>CJ대한통운</option>
							<option value="19" <c:if test="${item.deliverymethod eq 19}">selected</c:if>>우체국택배</option>
							<option value="20" <c:if test="${item.deliverymethod eq 20}">selected</c:if>>롯데택배</option>
							<option value="21" <c:if test="${item.deliverymethod eq 21}">selected</c:if>>한진택배</option>
						</select>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<h6>이미지 첨부</h6>
						<br>
						<input type="file" multiple="multiple" name="imgfile" id="imgfile">
					</div>
					<div class="col">
						<h6><!-- 설명 --></h6>
						<br>
						<div class="addScroll">
							<ul id="ulFile1" class="list-group">
							</ul>
						</div>
						<!-- <textarea class="form-control" rows="3"></textarea> -->
					</div>
				</div>
				<button type="button" class="btn btn-success" onclick="uploadValidation()">
				
				<div class="ccc">
					<div class="ccc">
					<button type="button" id="listbtn" class="btn btn-outline-dark">
						<i class="fa-solid fa-list"></i>
					</button>
					<button type="button" id="savebtn" class="btn btn-dark" style="float: right">
						<i class="fa-solid fa-circle-check"></i>
					</button>
					<button type="button" class="btn btn-danger" id="delbtn" style="float: right" data-bs-toggle="modal" data-bs-target="#deleteModal">
						<i class="fa-solid fa-trash"></i>
					</button>
					<button type="button" class="btn btn-outline-danger" id="uelbtn" style="float: right" data-bs-toggle="modal" data-bs-target="#ueleteModal">
						<i class="fa-solid fa-x"></i>
					</button>
					<button type="button" class="btn btn-warning" id="clearbtn" style="float: right" data-bs-toggle="modal" data-bs-target="#clearModal">
						<i class="fa-solid fa-rotate-left"></i>
					</button>
				</div>
				<div class="modal fade" id="ueleteModal" tabindex="-1" aria-labelledby="ueleteModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="ueleteModalLabel">내용 취소</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							</div>
							<div class="modal-body">해당 데이터를 비활성화하시겠습니까?</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
								<button type="button" class="btn btn-secondary" id="realuelbtn">삭제</button>
							</div>
						</div>
					</div>
				</div>
				<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="deleteModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="deleteModalLabel">내용 취소</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							</div>
							<div class="modal-body">해당 데이터를 삭제하시겠습니까?</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
								<button type="button" class="btn btn-secondary" id="realdelbtn">삭제</button>
							</div>
						</div>
					</div>
				</div>
				<div class="modal fade" id="clearModal" tabindex="-1" aria-labelledby="clearModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="clearModalLabel">내용 취소</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							</div>
							<div class="modal-body">입력한 데이터를 모두 삭제하시겠습니까?</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
								<button type="button" class="btn btn-secondary" id="realclearbtn">삭제</button>
							</div>
						</div>
					</div>
				</div>
			</form>
			<form name="formVo" id="formVo" method="post">
			<!-- *Vo.jsp s -->
			<%@include file="itemVo.jsp"%>		<!-- #-> -->
			<!-- *Vo.jsp e -->
			</form>
			<br><br>
		</div>
	</div>
	
	<script>
	
	var goUrlList = "/item/itemList";
	var goUrlInst = "/item/itemInst";
	var goUrlUpdt = "/item/itemUpdt";
	var goUrlUele = "/item/itemUele";
	var goUrlDele = "/item/itemDele";
	var goUrlForm = "/item/itemForm";
	
	var seq = $("input:hidden[name=seq]"); 

	var form = $("form[name=form]");
	var formVo = $("form[name=formVo]");

	$("#savebtn").on("click", function(){
		if (seq.val() == "0" || seq.val() == ""){
	   		// insert
	   		//if (validationInst() == false) return false;
	   		
	   		
	   		
	   		
	   		return false;
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
	
	$("#realclearbtn").on("click", function(){
		formVo.attr("action", goUrlForm).submit();
	});
	
	$("#realdelbtn").on("click", function(){
		formVo.attr("action", goUrlDele).submit();
	});
	
	$("#realuelbtn").on("click", function(){
		formVo.attr("action", goUrlUele).submit();
	});
	
/*	uploadValidation = function(){
    	
    	var obj = document.getElementById("imgfile").files;
    	var fileNum = obj.length;
    	var ext = objName.split('.').pop().toLowerCase();
    	var extArray = eval("extArray" + div);
    	var totalSize = 0;
    	
    	if(extArray.indexOf(ext) == -1) {
    		alert("허용된 확장자가 아닙니다.");
//    		$("#file"+seq).val("");
    		return false;
    	}
    	
    	if (fileNum > 2) {
    		alert("최대 2개까지 업로드 가능합니다");
    		return false;
    	}
    	
    	alert(obj);
    	alert(obj.length);
    	
    	for(var i=0; i<obj.length; i++){
    		alert(obj[i].name + " : " + obj[i].size);
    		totalSize += obj[i].size;
    	}
    	
    	
    	alert(totalSize);
    }
*/

	</script>
	<!-- end -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/7d63ec3c0a.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</body>
</html>