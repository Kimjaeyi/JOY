<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>
<html> 
<head>
	<title>상품 결제</title>
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

	h2 {
		text-align : center;
	}
	
	h3 {
		font-size: 25px;
	}
	
	h4 {
		font-weight : bold;
		font-size: 23px;
	}
	
	h5 {
		font-size: 20px;
	}
	
	h6 {
		font-size: 16px;
	}
	
	h3, h5 {
		font-weight: bold;
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

	.aaa {
		margin : 5% 15%;
	}
	
	input[type='text'] {
		border: 1px solid #ced4da;
		border-radius: 0.375rem;
	}
	
	input, select {
		height: 50px;
	}
	
	#inputphone {
		display: inline;
	}
	
	#findzipcode {
		border : none;
		background-color : #6900EF;
		color : white;
		border-radius : 6px;
		width : 9%;
		height : 50px;
		font-weight: bold;
		font-size: 15px;
	}
	
	.form-check-input p {
		font-size: 15px;
	}
	
	#inputdetailaddr, #inputextraaddr {
		display: inline;
	}
	
	#coupon1, #coupon2 {
		border : none;
		background-color : #6900EF;
		color : white;
		border-radius : 6px;
		width: 100px;
		height : 30px;
		font-weight: bold;
		font-size: 14px;
	}
	
	table, tr {
		border: 1px solid black;
		border-collapse: collaspe;
		text-align: center;
		width: 100%;
	}
	
	td {
		padding: 20px;
		border: 1px solid black;
	}
	
	.paycheck {
		margin: 0 5%;
	}
	
	.d-grid button {
		color: white; 
		background-color: #6900EF; 
		height: 70px; 
		border: none; 
		border-radius: 4px;
		font-size: 18px;
	}
	
	.form-check-input:checked {
	    background-color: #6900EF;
	    border-color: #6900EF;
	}
	
	.container {
		margin : 0 15%;
		width : 100%;
		height: 100%;
	}
	
	li {
		margin: 0 2%;
	}
	

</style>
	
	
<body>

<!-- start -->
	<div class="header" style="left: 0px;">
        <div class="inner">
            <h1 class="logo">
                <a href="/item/mainPage"><span class="blind">COOCHA</span></a>
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
					<a href="/member/mypage" class="btn-my btn-layer-open"><span class="blind">MY</span></a>
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
	<input type="hidden" id="rtCount" name="rtCount">
	<input type="hidden" id="rtFinalPrice" name="rtFinalPrice">
	
	<div class="abc">
		<br><br>
		<a href="/">
			<h1>coocha</h1>
		</a>
		<br><br><br>
		<hr style="color: gray">
		<br><br><br>
		<h3 style="margin: 0 0 0 280px; display: inline">상품결제</h3>
		<h6 style="float: right; margin: 0 300px 0 0; display: inline">>&nbsp;&nbsp;03 주문완료</h6>
		<h6 style="float: right; display: inline; color: #6900EF">02 주문/결제&nbsp;&nbsp;</h6>
		<h6 style="float: right; display: inline">01 장바구니&nbsp;&nbsp;>&nbsp;&nbsp;</h6>
		<br>
		<hr style="border: 2px solid black">
		<div class="aaa">
			<h5>배송정보</h5>
			<hr><br>
			<input type="text" class="form-control" id="inputname" placeholder="이름" style="width: 25%">
			<br>
			<input type="text" class="form-control" id="inputphone" placeholder="휴대폰" style="width: 9%; margin: 0 3% 0 0">
			<input type="text" class="form-control" id="inputphone" style="width: 15%; margin: 0 3% 0 0">
			<input type="text" class="form-control" id="inputphone" style="width: 15%">
			<br><br>
			<button type="button" id="findzipcode" onclick="sample6_execDaumPostcode();" style="display: inline; margin: 0 3% 0 0">우편번호 찾기</button>
			<input type="text" class="form-control" id="zipcode" style="width: 15%; display: inline" readonly>
			<br><br>
			<input type="text" class="form-control" id="inputaddr" placeholder="도로명주소" style="width:63.5%">
			<br>
			<input type="text" class="form-control" id="inputdetailaddr" placeholder="상세주소" style="width: 50%; margin: 0 3% 0 0">
			<input type="text" class="form-control" id="inputextraaddr"  placeholder="참고항목" style="width: 10%">
			<br><br>
			<select class="form-select" id="selbox" style="width: 50%">
				<option selected>배송메시지를 선택해주세요.</option>
				<option value="1">배송 전 연락바랍니다.</option>
				<option value="2">부재시 문앞에 놓아주세요.</option>
				<option value="3">부재시 경비실에 맡겨주세요.</option>
				<option value="4">파손 위험이 있는 상품이니 배송 시 주의해주세요.</option>
				<option value="5">택배함에 넣어주세요.</option>
				<option value="direct">직접입력</option>
			</select>
			<br>
			<input type="text" class="form-control" id="selboxDirect" name="selboxDirect" placeholder="배송메시지" style="width: 50%">
			<br><br><br>
			<div class="row">
				<div class="col-7" style="margin: 0 6% 0 0">
					<h5 style="display: inline">주문상품</h5>
					<p style="display: inline; font-size: 11px; color: gray">상품수량 및 옵션 변경은 상품상세 또는 장바구니에서 가능합니다.</p>
					<br><br>
					<table>
						<tr>
							<td style="border: none; width: 20%"><img src="../resources/image/위메프1.png" style="width: 150px; height:150px"></td>
							<td style="text-align: left; width: 35%"><p style="font-size: 13px; font-weight: bold">22만개 판매돌파! 1+3 리엔 물들임 새치커버 샴푸 450ml</p>
								<br>
								<p style="font-size: 11px">옵션 : 흑갈색</p>
								<p style="font-size: 12px">내일 7/22(금) 도착 예정</p>
							</td>
							<td width="10%"><p style="font-size: 13px">1개</p></td>
							<td width="20%"><p style="font-size: 13px">37,700원</p></td>
							<td width="15%"><p style="font-size: 13px">무료배송</p></td>
						</tr>
					</table>
					<br><br><br>
					<h5>할인쿠폰</h5>
					<hr>
					<div class="row justify-content-center">
						<div class="col-3" style="text-align:center">
							<p style="color: gray; font-weight: bold; font-size: 14px">쿠폰명</p>
						</div>
						<div class="col-3" style="text-align:center">
							<p style="color: gray; font-weight: bold; font-size: 14px">쿠폰 할인금액</p>
						</div>
						<div class="col-3" style="text-align:center">
							<p style="color: gray; font-weight: bold; font-size: 14px">쿠폰 유효기간</p>
						</div>
						<div class="col-2"></div>
					</div>
					<hr>
					<div class="row justify-content-center">
						<div class="col-3" style="text-align:center">
							<p style="font-weight: bold; font-size: 13px; margin: 5px 0 0 0">카카오페이 3,000원 할인</p>
						</div>
						<div class="col-3" style="text-align:center">
							<p style="font-weight: bold; font-size: 13px; margin: 5px 0 0 0">3,000원</p>
						</div>
						<div class="col-3" style="text-align:center">
							<p style="font-weight: bold; font-size: 13px; margin: 5px 0 0 0">~ 2022.12.31</p>
						</div>
						<div class="col-2">
							<button type="button" id="coupon1" value="3000">쿠폰적용</button>
						</div>
					</div>
					<br>
					<div class="row justify-content-center">
						<div class="col-3" style="text-align:center">
							<p style="font-weight: bold; font-size: 13px; margin: 5px 0 0 0">[장바구니] 쇼핑쿠폰</p>
						</div>
						<div class="col-3" style="text-align:center">
							<p style="font-weight: bold; font-size: 13px; margin: 5px 0 0 0">2,000원</p>
						</div>
						<div class="col-3" style="text-align:center">
							<p style="font-weight: bold; font-size: 13px; margin: 5px 0 0 0">~ 2022.10.15</p>
						</div>
						<div class="col-2">
							<button type="button" id="coupon2" value="2000">쿠폰적용</button>
						</div>
					</div>
					<hr>
					<br><br><br>
					<h5>결제방법</h5>
					<hr>
					<div class="form-check">
						<input class="form-check-input" type="radio" id="flexRadioDefault1" style="display: inline; margin: 0 10px 0 0" checked>
						<img src="../resources/image/kakaopay.png" style="display:inline; width: 70px; height: 30px; margin: -5px 0 0 0">
					</div>
				</div>
				<div class="col-4">
					<div class="paycheck">
						<h4>결제 예정금액</h4>
						<br><br>
						<h6 style="display: inline">상품금액</h6>
						<h6 style="display: inline; float: right; margin: 3px 0 0 0">원</h6>
						<h5 id="totalprice" style="display: inline; float: right; font-weight: bold">37,700</h5>
						<br><br>
						<h6 style="display: inline">배송비</h6>
						<h6 style="display: inline; float: right; margin: 3px 0 0 0">원</h6>
						<h5 style="display: inline; float: right; font-weight: bold">0</h5>
						<br><br>
						<h6 style="display: inline">할인금액</h6>
						<h6 style="display: inline; float: right; margin: 3px 0 0 0">원</h6>
						<h5 id="couponprice" style="display: inline; float: right; font-weight: bold; color: #6900EF"></h5>
						<br><br><br>
						<h6 style="display: inline; color: #6900EF">합계</h6>
						<h6 style="display: inline; float: right; margin: 10px 0 0 0; color: #6900EF">원</h6>
						<h3 id="realtotalprice" style="display: inline; float: right; color: #6900EF"></h3>
					</div>
					<br><br><br>
					<hr style="border: 1px dotted black">
					<br>
					<div class="paycheck">
						<h6>하기 필수약관을 확인하였으며 결제에 동의합니다.</h6>
						<br>
						<a href="paysuccess">
							<div class="d-grid">
								<button type="button">결제하기</button>
							</div>
						</a>
						<br><br><br>
						<h5>약관동의</h5>
					</div>
					<hr>
					<div class="paycheck">
						<div class="form-check">
							<input class="form-check-input" type="checkbox" id="checkboxall" name="checkboxall" style="display:inline">
							<h6 style="display:inline">전체 동의하기</h6>
						</div>
					</div>
					<hr>
					<div class="paycheck">
						<div class="form-check">
							<input class="form-check-input" type="checkbox" name="agreebox" style="display:inline">
							<p style="display:inline; font-weight: normal">개인정보 제3자 제공에 동의합니다.</p>
							<br><br>
							<input class="form-check-input" type="checkbox" name="agreebox" style="display:inline">
							<p style="display:inline; font-weight: normal">결제대행서비스 이용약관에 동의합니다.</p>
							<br><br>
							<input class="form-check-input" type="checkbox" name="agreebox" style="display:inline">
							<p style="display:inline; font-weight: normal">주문할 상품 설명에 명시된 내용과 사용조건을 확인하였으며, 취소 환불규정에 동의합니다.</p>
						</div>
					</div>
					<hr>
				</div>
			</div>
		</div>
	</div>
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
	
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
	
	<script type="text/javascript">
	
	$(function(){
	    //직접입력 인풋박스 기존에는 숨어있다가
	$("#selboxDirect").hide();
	$("#selbox").change(function() {
	              //직접입력을 누를 때 나타남
			if($("#selbox").val() == "direct") {
				$("#selboxDirect").show();
			} else {
				$("#selboxDirect").hide();
			}
		}) 
	});
	
	var price1 = 37700;
	var coochaCount = 1;
	var totalprice = (price1*coochaCount);
	var finalPrice = totalprice;
	
	/* 화면에 보여지는 부분 */
	$("#totalprice").text(totalprice.toLocaleString());
	$("#couponprice").text("0");
	$("#realtotalprice").text(finalPrice.toLocaleString()); 
	
	/* 쿠폰 할인 적용 */
	$(document).ready(function() {
		   $("#coupon1").click(function(){
		      var coupon1Price = $(this).attr('value');   
		      $("#couponprice").text((coupon1Price)/1000 + ",000");
		      $("#realtotalprice").text((finalPrice-coupon1Price).toLocaleString());
		      $('#rtFinalPrice').val(totalprice-coupon1Price);
		      $('#rtCoupon').val(coupon1Price); 
		      
		   });
		   $("#coupon2").click(function(){
		      var coupon2Price = $(this).attr('value');      
		      $("#couponprice").text((coupon2Price)/1000 + ",000");
		      $("#realtotalprice").text((finalPrice-coupon2Price).toLocaleString());
		      $('#rtFinalPrice').val(totalprice-coupon2Price);
		      $('#rtCoupon').val(coupon2Price); 
		   });
		});
	
	$("#rtCount").val(coochaCount);
	$("#rtFinalPrice").val(finalPrice);
	
	// 약관 전체선택
	$('#checkboxall').click(function() {
		if ($("#checkboxall").is(':checked'))
			$("input[name=agreebox]").prop("checked", true);
		else
			$("input[name=agreebox]").prop("checked", false);
	});
	$("input[name=agreebox]").click(function() {
	
		var total = $("input[name=agreebox]").length;
		var checked = $("input[name=agreebox]:checked").length;
	
		if (total != checked)
			$("checkboxall").prop("checked", false);
		else
			$("checkboxall").prop("checked", true);
	});

	
	function sample6_execDaumPostcode() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	            var addr = ''; // 주소 변수
	            var extraAddr = ''; // 참고항목 변수
	
	            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                addr = data.roadAddress;
	            } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                addr = data.jibunAddress;
	            }
	
	            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	            if(data.userSelectedType === 'R'){
	                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                    extraAddr += data.bname;
	                }
	                // 건물명이 있고, 공동주택일 경우 추가한다.
	                if(data.buildingName !== '' && data.apartment === 'Y'){
	                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }
	                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                if(extraAddr !== ''){
	                    extraAddr = ' (' + extraAddr + ')';
	                }
	                // 조합된 참고항목을 해당 필드에 넣는다.
	                document.getElementById("inputextraaddr").value = extraAddr;
	            
	            } else {
	                document.getElementById("inputextraaddr").value = '';
	            }
	
	            // 우편번호와 주소 정보를 해당 필드에 넣는다.
	            document.getElementById('inputzipcode').value = data.zonecode;
	            document.getElementById("inputaddr").value = addr;
	            // 커서를 상세주소 필드로 이동한다.
	            document.getElementById("inputdetailaddr").focus();
	        }
	    }).open();
	}
	
</script>

<!-- end -->

<script src="https://kit.fontawesome.com/7d63ec3c0a.js" crossorigin="anonymous"></script>

</body>
</html>