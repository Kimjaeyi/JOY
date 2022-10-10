<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>
<%@ page session="true"%>
<html>
<head>
<title>coocha</title>
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
<link href="http://images.coocha.co.kr/static/dev/images/common/common/ico_favicon.ico" rel="icon" type="image/x-icon" />
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
</head>

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
	
	h1 {
		font-family: 'GilbeotRainbow';
		margin: 0 0 0 250px;
		color : white;
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
		color:blueviolet;
		text-decoration: none;
	}
	
	.backimage {
		background-image: url("../resources/image/homeimage.jpg");
		background-repeat: no-repeat;
		background-size : cover;
		background-attachment : fixed;
	}
	
	.abc {
		background-color : rgba(255,255,255,0.5);
	}
	
	.blank {
		margin: 5% 10% 0 10%;
	}
	
	.card {
		font-family: 'MICEGothic Bold';
	}
	
	.card-title {
		height: 50px;
	}
	
	.btn {
		background-color: #6900EF;
		color: white;
		font-weight: bold;
	}
	
	.bbb {
		text-align: center;
	}
	
	
</style>

<body>

	<div class="backimage">
		<div class="abc">
			<br><br>
			<a href="/item/mainPage"><h1>coocha</h1></a>
			<div class="blank">
				<div class="row">
					<div class="col">
						<div class="card">
							<img src="../resources/image/pageselect1.png" class="card-img-top" alt="...">
							<div class="card-body">
								<br>
								<h5 class="card-title"><b><center><big>일반회원 로그인</big></center></b></h5>
								<p class="card-text"><center>상품 목록, 상품 구매, 회원 상세정보 및 수정</center></p>
								<br>
								<div class="bbb">
									<a href="/item/mainPage"><button class="btn">바로가기</button></a>
								</div>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card">
							<img src="../resources/image/pageselect2.png" class="card-img-top" alt="...">
							<div class="card-body">
								<br>
								<h5 class="card-title"><b><center><big>관리자 화면</big></center></b></h5>
								<p class="card-text"><center>코드그룹 / 코드 / 회원 / 상품 관리</center></p>
								<br>
								<div class="bbb">
									<button type="button" class="btn" id="managerpage">바로가기</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<br><br><br><br>
		</div>
	</div>
	
	<script type="text/javascript">
/* 	
		$("#managerpage").on("click", function(){
			if (sessSeq == "1"){
		   		// insert
		   		//if (validationInst() == false) return false;
		   		form.attr("action", goUrlPage).submit();
		   	} else {
		   		// update
		   		// keyName.val(atob(keyName.val()));
		   		//if (validationUpdt() == false) return false;
		   		alert("접근할 수 없습니다");
		   		return false;
		   	}
			
		}); 
*/

		$("#managerpage").on("click", function(){
			
			/* if(validation() == false) return false; */
			
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				,url: "/member/loginProc"
				,data : { "id" : $("#id").val(), "pwd" : $("#pwd").val()}
				,success: function(response) {
					if(response.rt == "success") {
						if ($("#id").val() == "kjy" && $("#pwd").val() == "123") {
							location.href = "/member/memberList";
						} else {
							alert("관리자만 접근 가능합니다.")
							location.href = "/item/mainPage";
						}
					} else {
						alert("접근할 수 없습니다");
						location.href = "/member/login";
					}
				}
			});
			
		});
 
	</script>
		
</body>
</html>
