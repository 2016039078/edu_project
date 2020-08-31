<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<script src="jquery.min.js"></script>
<script src="jquery.dropotron.min.js"></script>
<script src="skel.min.js"></script>
<script src="skel-layers.min.js"></script>
<!-- <script src="init.js"></script> -->
<link rel="stylesheet" href="skel.css" />
<link rel="stylesheet" href="style.css" />

<script>
	function fn_search(area) {
		document.frm1.area.value = area;
		document.frm1.action = "<c:url value='/rooms_search01.do'/>";
		document.frm1.submit();
	}
	
	function fn_hostinglist(user_id) {
		document.frm2.user_id.value = user_id;
		document.frm2.action = "<c:url value='/jeogi_hosting_select.do'/>";
		document.frm2.submit();
	}
	function fn_userupdate(user_id) {
		document.frm2.user_id.value = user_id;
		document.frm2.action = "<c:url value='/jeogi_user_update.do'/>";
		document.frm2.submit();
	}
	
	function fn_likelist(user_id) {
		document.frm2.user_id.value = user_id;
		document.frm2.action = "<c:url value='/likelist_select.do'/>";
		document.frm2.submit();
	}
	
	function fn_revervationlist(user_id) {
		document.frm2.user_id.value = user_id;
		document.frm2.action = "<c:url value='/reservation_select.do'/>";
		document.frm2.submit();
	}
	function fn_messenger(user_id) {
		document.frm2.user_id.value = user_id;
		document.frm2.action = "<c:url value='/messenger_select.do'/>";
		document.frm2.submit();
		
	}
	function fn_alert() {
		alert("서비스 준비중입니다.");
	}
	
	function showPopup() { 
		window.open("login.do",  "messenger_popup", "width=600, height=800, left=100, top=50");
	}
	
	function showPopup2() { 
		window.open("jeogi_user_insert.do",  "messenger_popup", "width=600, height=800, left=100, top=50");
	}
</script>
<style type="text/css">
.button:hover {
background:rgba(100, 0, 150, 1);
}
.button{
background:rgba(100, 0, 150, 0.5);
}
ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color:rgba(255,255,255,0.3);
}

li {
	float: left;
}

li a, .dropbtn {
	display: inline-block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

li a:hover, .dropdown:hover .dropbtn {
	background-color: rgba(100, 0, 180, 0.7);
}

li.dropdown {
	display: inline-block;
}

#header {
	background: url("purple-690724_1920.jpg") no-repeat;
	background-size: cover;
	color: #fff;
	padding: 6em 0;
	text-align: center;
	background-position: 0% 65%;
	position: relative;
}

#header:before {
	content: '';
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	background: rgba(16, 32, 48, 0.25);
}

#header>* {
	position: relative;
	z-index: 1;
}

.homepage #header {
	padding: 8em 0;
	background-position: center;
}

#logo {
	font-size: 2em;
}

#nav>ul {
	margin: 0;
}

#nav>ul>li {
	border-radius: 10px 10px 0 0;
	display: inline-block;
	margin-left: 0.5em;
	padding: 0.5em 1.5em;
}

#nav>ul>li a {
	color: #FFF;
	text-decoration: none;
	font-size: 1.2em;
}

#nav>ul>li:first-child {
	margin-left: 0;
}

#nav>ul>li:hover a {
	color: #fff;
}

#nav>ul>li.active {
	background: #3ac984;
}

#nav>ul>li.active a {
	color: white;
}

#nav>ul>li>ul {
	display: none;
}

/* Dropotron */
.dropdown-content {
	display: none;
	position: absolute;
	background-color: rgba(255, 222, 179, 0.7);
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.7);
	z-index: 1;
}

.dropdown-content a {
	color: white;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}

.dropdown-content a:hover {
	background-color: rgba(245, 222, 185, 0.7);
}

.dropdown:hover .dropdown-content {
	display: block;
}

.a {
	width: 23%;
	float: left;
	text-align: center;
}

.login {
	float: right;
	margin: 1.5%;
}

.username {
	display: inline-block;
}
</style>
</head>
<body class="left-sidebar">

	<!-- Header -->
	<div id="header">
		<div class="container">

			<!-- Logo -->
			<h1>
				<a href="index.jsp" id="logo">WATP</a>
			</h1>
			<div class="login">
				<c:if test="${empty userSession }">
					<a onclick="showPopup2()">회원가입 </a>
					<a onclick="showPopup()">로그인</a>
				</c:if>

				<c:if test="${!empty userSession }">
					<div class="dropdown">
						<div class="username">${userSession.user_name}님</div>
						<div class="dropdown-content">
							<form method=post id="frm2" name="frm2" >
							<input type="hidden" name="user_id" id="user_id" value="${userSession.user_id}">
							<a href="javascript:fn_hostinglist('<c:out value="${userSession.user_id}"/>')">호스팅관리</a>
							<a href="javascript:fn_userupdate('<c:out value="${userSession.user_id}"/>')">정보수정</a>
							<a href="javascript:fn_messenger('<c:out value="${userSession.user_id}"/>')">메세지</a> 
							<a href="javascript:fn_likelist('<c:out value="${userSession.user_id}"/>')">찜목록</a>
							<a href="javascript:fn_revervationlist('<c:out value="${userSession.user_id}"/>')">여행</a>
							</form>
						</div>
						<a class="logout" href="logout_act.do">로그아웃</a>


					</div>
				</c:if>
			</div>
			<!-- Nav -->
			<nav id="nav">
				<ul>
					<li class="dropdown a"><a href="rooms_search02.do">숙소예약</a></li>
					<li class="dropdown a"><a href="online.do">온라인체험</a></li>
					<li class="dropdown a"><a class="dropbtn">커뮤니티</a>
						<div class="dropdown-content a">
							<a href="notice.do">공지사항</a>  <a href="faq.do">자주 묻는 질문</a>
						</div></li>
					<li class="a"><a href="rooms_hosting_insert.do">호스팅하기</a></li>
				</ul>

				<form action="rooms_search01.do" method=post id="frm1" name="frm1">
				<div id="banner">
					<div class="container">
						<section>
							<header class="major">
								<input type="text" id="area" name="area" placeholder="지역이름을 입력하세요." style="height: 50px; background-color: white; color: black; margin-bottom: 5%">
								<button class="button alt" type="submit">검색</button>
							</header>

						</section>
					</div>
				</div>
			</form>
			</nav>

		</div>
	</div>



	<!-- 	<!-- Footer -->
	<!-- 	<div id="footer"> -->
	<!-- 		<div class="container"> -->
	<!-- 			<!-- Lists -->
	<!-- 			<div class="row"> -->
	<!-- 				<div class="8u"> -->
	<!-- 					<section> -->
	<!-- 						<header class="major"> -->
	<!-- 							<h2>Donec dictum metus</h2> -->
	<!-- 							<span class="byline">Quisque semper augue mattis wisi -->
	<!-- 								maecenas ligula</span> -->
	<!-- 						</header> -->
	<!-- 						<div class="row"> -->
	<!-- 							<section class="6u"> -->
	<!-- 								<ul class="default"> -->
	<!-- 									<li><a href="#">Pellentesque elit non gravida blandit.</a></li> -->
	<!-- 									<li><a href="#">Lorem ipsum dolor consectetuer elit.</a></li> -->
	<!-- 									<li><a href="#">Phasellus nibh pellentesque congue.</a></li> -->
	<!-- 									<li><a href="#">Cras vitae metus aliquam pharetra.</a></li> -->
	<!-- 								</ul> -->
	<!-- 							</section> -->
	<!-- 							<section class="6u"> -->
	<!-- 								<ul class="default"> -->
	<!-- 									<li><a href="#">Pellentesque elit non gravida blandit.</a></li> -->
	<!-- 									<li><a href="#">Lorem ipsum dolor consectetuer elit.</a></li> -->
	<!-- 									<li><a href="#">Phasellus nibh pellentesque congue.</a></li> -->
	<!-- 									<li><a href="#">Cras vitae metus aliquam pharetra.</a></li> -->
	<!-- 								</ul> -->
	<!-- 							</section> -->
	<!-- 						</div> -->
	<!-- 					</section> -->
	<!-- 				</div> -->
	<!-- 				<div class="4u"> -->
	<!-- 					<section> -->
	<!-- 						<header class="major"> -->
	<!-- 							<h2>Donec dictum metus</h2> -->
	<!-- 							<span class="byline">Mattis wisi maecenas ligula</span> -->
	<!-- 						</header> -->
	<!-- 						<ul class="contact"> -->
	<!-- 							<li><span class="address">Address</span> <span>1234 -->
	<!-- 									Somewhere Road #4285 <br />Nashville, TN 00000 -->
	<!-- 							</span></li> -->
	<!-- 							<li><span class="mail">Mail</span> <span><a href="#">someone@untitled.tld</a></span> -->
	<!-- 							</li> -->
	<!-- 							<li><span class="phone">Phone</span> <span>(000) -->
	<!-- 									000-0000</span></li> -->
	<!-- 						</ul> -->

	<!-- 					</section> -->
	<!-- 				</div> -->
	<!-- 			</div> -->

	<!-- 		</div> -->
	<!-- 	</div> -->