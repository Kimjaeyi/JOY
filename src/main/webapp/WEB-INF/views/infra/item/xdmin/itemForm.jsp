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
	$(document).ready(function() {
		const myModal = document.getElementById('myModal')
		const myInput = document.getElementById('myInput')
		
		myModal.addEventListener('shown.bs.modal', () => {
			myInput.focus()
		})
	});
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
		
		.addScroll {
			overflow-y:auto;
			height: 200px;
			background-color:#E9ECEF;
			padding-top:5px; 
			padding-left:5px;
		}
	 	
		.input-file-button {
			padding: 4px 25px;
			background-color:#FF6600;
			border-radius: 4px;
			color: white;
			cursor: pointer;
		}
		
		img {
			width: 100px;
			height: 100px;
		}
		
	</style>
</head>

<body>

<!-- start -->
	<div class="abc">
		<a href="/item/mainPage"><h1>coocha</h1></a>
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
						<h6>사이트</h6>
						<br>
						<select class="form-select" name="shoppingsite">
							<option selected>::선택::</option>
							<option value="48" <c:if test="${item.shoppingsite eq 48}">selected</c:if>>위메프</option>
							<option value="49" <c:if test="${item.shoppingsite eq 49}">selected</c:if>>티몬</option>
							<option value="50" <c:if test="${item.shoppingsite eq 50}">selected</c:if>>11번가</option>
						</select>
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
						<select class="form-select" name="released">
							<option selected>::선택::</option>
							<option value="22" <c:if test="${item.released eq 22}">selected</c:if>>즉시 발송</option>
							<option value="23" <c:if test="${item.released eq 23}">selected</c:if>>당일출고(오후 12시 이전 주문 건까지)</option>
							<option value="24" <c:if test="${item.released eq 24}">selected</c:if>>당일출고(오후 3시 이전 주문 건까지)</option>
							<option value="25" <c:if test="${item.released eq 25}">selected</c:if>>2일 이내 출고</option>
							<option value="26" <c:if test="${item.released eq 26}">selected</c:if>>3일 이내 출고</option>
						</select>
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
						<select class="form-select" name="deliverymethod">
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
						<input class="form-control" id="imagefile" name="imagefile" type="file" multiple="multiple">
					</div>
					<div class="col">
						<h6><!-- 설명 --></h6>
						<br>
						<div id="UploadedImagePreview" class="addScroll">
							<img src="${listimg.path }${listimg.uuidName}">
						</div>
						<!-- <textarea class="form-control" rows="3"></textarea> -->
					</div>
				</div>
				<!-- <button type="button" class="btn btn-success" onclick="uploadValidation()"> -->
				
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
	
	<script type="text/javascript">
	
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
		
/* 		
		upload = function(objName, seq, allowedMaxTotalFileNumber, allowedExtdiv, allowedEachFileSize, allowedTotalFileSize, uiType) {
//			objName 과 seq 는 jsp 내에서 유일 하여야 함.
//			memberProfileImage: 0
//			memberImage: 1
//			memberFile : 2
//			uiType: 1 => 이미지형
//			uiType: 2 => 파일형
//			uiType: 3 => 프로파일형
			
			var files = $("#" + objName +"")[0].files;
			var filePreview = $("#" + objName +"Preview");
			var numbering = [];
			var maxNumber = 0;
			
			if(uiType == 1) {
				var uploadedFilesCount = document.querySelectorAll("#" + objName + "Preview > div > img").length;
				var tagIds = document.querySelectorAll("#" + objName + "Preview > div");
				
				for(var i=0; i<tagIds.length; i++){
					var tagId = tagIds[i].getAttribute("id").split("_");
					numbering.push(tagId[2]);
				}
				
				if(uploadedFilesCount > 0){
					numbering.sort();
					maxNumber = parseInt(numbering[numbering.length-1]) + parseInt(1);
				}
			} else if(uiType == 2){
				var uploadedFilesCount = document.querySelectorAll("#" + objName + "Preview > li").length;
				var tagIds = document.querySelectorAll("#" + objName + "Preview > li");
				for(var i=0; i<tagIds.length; i++){
					var tagId = tagIds[i].getAttribute("id").split("_");
					numbering.push(tagId[2]);
				}
				
				if(uploadedFilesCount > 0){
					numbering.sort();
					maxNumber = parseInt(numbering[numbering.length-1]) + parseInt(1);
				}
			} else {
				// by pass
			}
			
			var totalFileSize = 0;
			var filesCount = files.length;
			var filesArray = [];
			
			allowedMaxTotalFileNumber = allowedMaxTotalFileNumber == 0 ? MAX_TOTAL_FILE_NUMBER : allowedMaxTotalFileNumber;
			allowedEachFileSize = allowedEachFileSize == 0 ? MAX_EACH_FILE_SIZE : allowedEachFileSize;
			allowedTotalFileSize = allowedTotalFileSize == 0 ? MAX_TOTAL_FILE_SIZE : allowedTotalFileSize;
			
			if(checkUploadedTotalFileNumber(files, allowedMaxTotalFileNumber, filesCount, uploadedFilesCount) == false) { return false; }
			
			for (var i=0; i<filesCount; i++) {
				if(checkUploadedExt(files[i].name, seq, allowedExtdiv) == false) { return false; }
				if(checkUploadedEachFileSize(files[i], seq, allowedEachFileSize) == false) { return false; }
				totalFileSize += files[i].size;
				
				filesArray.push(files[i]);
			}
			if(checkUploadedTotalFileSize(seq, totalFileSize, allowedTotalFileSize) == false) { return false; }
			
			if (uiType == 1) {
				for (var i=0; i<filesArray.length; i++) {
					var file = filesArray[i];
				
				    var picReader = new FileReader();
				    picReader.addEventListener("load", addEventListenerCustom (seq, i, file, filePreview, maxNumber));
				    picReader.readAsDataURL(file);
				}			
			} else if(uiType == 2) {
				for (var i = 0 ; i < filesCount ; i++) {
					addUploadLi(seq, i, $("#" + objName +"")[0].files[i].name, filePreview, maxNumber);
				}
			} else if (uiType == 3) {
				var fileReader = new FileReader();
				 fileReader.onload = function () {
					 $("#imgProfile").attr("src", fileReader.result);
				 }	
				 fileReader.readAsDataURL($("#" + objName +"")[0].files[0]);
			} else {
				return false;
			}
			return false;
		}
		
		
		addEventListenerCustom = function (seq, i, file, filePreview, maxNumber) { 
			return function(event) {
				var imageFile = event.target;
				var index = parseInt(i) + parseInt(maxNumber);
				
		        var divImage = "";
				divImage += '<div id="imgDiv_'+seq+'_'+ index +'" style="display: inline-block; height: 95px;">';
				divImage += '	<img src="'+ imageFile.result +'" class="rounded" width= "85px" height="85px">';
				divImage += '	<div style="position: relative; top:-85px; left:5px"><span style="color: red; cursor:pointer;" onClick="delImgDiv('+ seq +','+ index +')">X</span></div>';
				divImage += '</div> ';
				
				filePreview.append(divImage);
		    };
		}
		
		
		delImgDiv = function(seq, index) {
			$("#imgDiv_"+seq+"_"+index).remove();
		}
		
		
		addUploadLi = function (seq, i, name, filePreview, maxNumber){
			var index = parseInt(i) + parseInt(maxNumber);
			
			var li ="";
			li = '<li id="li_'+seq+'_'+index+'" class="list-group-item d-flex justify-content-between align-items-center">';
			li += name;
			li +='<span class="badge bg-danger rounded-pill" onClick="delLi('+ seq +','+ index +')"><i class="fa-solid fa-x" style="cursor: pointer;"></i></span>';
			li +='</li>';
			
			filePreview.append(li);
		}
		
		
		delLi = function(seq, index) {
			$("#li_"+seq+"_"+index).remove();
		}
		
		checkUploadedTotalFileNumber = function(obj, allowedMaxTotalFileNumber, filesCount, uploadedFilesCount) {
			if(allowedMaxTotalFileNumber < (filesCount + uploadedFilesCount)){
				alert("전체 파일 개수는 "+ allowedMaxTotalFileNumber +"개 까지 허용됩니다.");
//				$("#file"+seq).val("");
//				obj.val("");
				return false;
			}
		}


		checkUploadedExt = function(objName, seq, div) {
			var ext = objName.split('.').pop().toLowerCase();
			var extArray = eval("extArray" + div);
			
			if(extArray.indexOf(ext) == -1) {
				alert("허용된 확장자가 아닙니다.");
//				$("#file"+seq).val("");
				return false;
			}
		}


		checkUploadedEachFileSize = function(obj, seq, allowedEachFileSize) {

			if(obj.size > allowedEachFileSize){
				alert("각 첨부 파일 사이즈는 "+kbToMb(allowedEachFileSize)+"MB 이내로 등록 가능합니다.");
				$("#file"+seq).val("");
				return false;
			}
		}


		checkUploadedTotalFileSize = function(seq, totalSize, allowedTotalFileSize) {
			if(totalSize > allowedTotalFileSize){
				alert("전체 용량은 "+kbToMb(allowedTotalFileSize)+"M를 넘을 수 없습니다.");
				$("#file"+seq).val("");
				return false;
			}
		}
 */	
	</script>
	
	<!-- end -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/7d63ec3c0a.js" crossorigin="anonymous"></script>
</body>
</html>