<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>오늘은 어디서 놀까? Where to play today?</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<script src="js/jquery.min.js"></script>
<script src="js/jquery.dropotron.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-layers.min.js"></script>
<script src="js/init.js"></script>
<link rel="stylesheet" href="skel.css">
<link rel="stylesheet" href="style.css">
<script src="jquery-3.5.1.js"></script>
<style type="text/css">
.button:hover {
background:rgba(100, 0, 150, 1);
}
.button{
background:rgba(100, 0, 150, 0.7);
}

#header {
	background: url("paris-4793193_1920.jpg") no-repeat;
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
	background: url("paris-4793193_1920.jpg") no-repeat;
}

.dropdown-content1 {
	display: none;
	position: absolute;
	background-color: rgba(245, 222, 179, 0.5);
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.7);
	z-index: 0;
}

.dropdown-content1 a {
	color: white;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}

.dropdown-content1 a:hover {
	background-color: rgba(245, 222, 185, 0.7);
}

.dropdown:hover .dropdown-content1 {
	display: inline-table;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: rgba(245, 222, 179, 0.5);
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

.login {
	float: right;
	margin: 1%;
}

.username {
	display: inline-block;
}

ul {
	margin: 0;
	padding: 0;
	background-color: rgba(100, 0, 90, 0.4);
}
#footer {
	padding: 4em 0 2em 0;
	background-color: #A27ACF;
	text-align: center;
}

#footer .inner {
	width: 50%;
	margin: 0 auto;
}

@media screen and (max-width: 980px) {
	#footer .inner {
		width: 75%;
	}
}

@media screen and (max-width: 480px) {
	#footer .inner {
		width: 90%;
	}
}

#footer .copyright {
	color: rgba(255, 255, 255, 0.5);
	font-size: 0.9em;
	margin: 0 0 2em 0;
	padding: 0;
	text-align: center;
}

@media screen and (max-width: 736px) {
	#footer {
		padding: 3em 0 1em 0;
	}
}

/* 			html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video { */
/* 		margin: 0; */
/* 		padding: 0; */
/* 		border: 0; */
/* 		font-size: 100%; */
/* 		vertical-align: baseline; */
/* 	} */
article, aside, details, figcaption, figure, footer, header, hgroup,
	menu, nav, section {
	display: block;
}

body {
	line-height: 1;
}

ol, ul {
	list-style: none;
}

blockquote, q {
	quotes: none;
}

blockquote:before, blockquote:after, q:before, q:after {
	content: '';
	content: none;
}

table {
	border-collapse: collapse;
	border-spacing: 0;
}

body {
	-webkit-text-size-adjust: none;
}
</style>
<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
<script>
	function fn_search(area) {
		document.frm.area.value = area;
		document.frm.action = "<c:url value='/rooms_search01.do'/>";
		document.frm.submit();
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
	
	function fn_messenger(user_id) {
		document.frm2.user_id.value = user_id;
		document.frm2.action = "<c:url value='/messenger_select.do'/>";
		document.frm2.submit();
		
	}
	function fn_revervationlist(user_id) {
		document.frm2.user_id.value = user_id;
		document.frm2.action = "<c:url value='/reservation_select.do'/>";
		document.frm2.submit();
	}
	
	function fn_alert() {
		alert("서비스 준비중입니다.");
	}
	
	function showPopup() { 
		window.open("login.do",  "messenger_popup", "width=500, height=400, left=800, top=300");
	}
	
	function showPopup2() { 
		window.open("jeogi_user_insert.do",  "messenger_popup", "width=600, height=800, left=800, top=300");
	}
	
</script>

<!-- <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCMFoUT6tZhqMk9iy6IrCEO39gxChZYucA&callback=initMap" async="" defer=""></script> -->
</head>
<body class="homepage">
<!-- <button id="getLocation" type="button">위치 정보 수집</button> <div id="map" style="width:500px; height: 500px;display: block;"></div>  -->

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
						<div class="dropdown-content1" style="margin-top: 20px;">
							<form action="jeogi_hosting_select.do" method=post id="frm2" name="frm2" >
							<input type="hidden" name="user_id" id="user_id" value="${userSession.user_id}">
							<a href="javascript:fn_hostinglist('<c:out value="${userSession.user_id}"/>')">호스팅관리</a></form>
							<a href="javascript:fn_userupdate('<c:out value="${userSession.user_id}"/>')">정보수정</a>
							<a href="javascript:fn_messenger('<c:out value="${userSession.user_id}"/>')">메세지</a> 
							<a href="javascript:fn_likelist('<c:out value="${userSession.user_id}"/>')">찜목록</a>
							<a href="javascript:fn_revervationlist('<c:out value="${userSession.user_id}"/>')">여행</a>
						</div>
						<a class="logout" href="logout_act.do">로그아웃</a>

					</div>
				</c:if>
			</div>
			<!-- Nav -->
			
			<nav id="nav">
				<ul>

					<li class="dropdown a"><a href="rooms_search02.do">숙소예약</a></li>
					<li class="dropdown a"><a href="rooms_search02.do">온라인체험</a></li>
					<li class="dropdown a"><a class="dropbtn">커뮤니티</a>
						<div class="dropdown-content a">
							<a  href="notice.do">공지사항</a> <a href="jeogi_suggestions_select.do">1:1문의</a> <a href="jeogi_faq_select.do">자주 묻는 질문</a>
						</div></li>
					<li class="a"><a href="rooms_hosting_insert.do">호스팅하기</a></li>
				</ul>
			</nav>


			<!-- Banner -->
			<form action="rooms_search01.do" method=post id="frm" name="frm">
				<div id="banner">
					<div class="container">
						<section>
							<header class="major">
								<h2>Welcome to 'What about this place?'</h2>
								<input type="text" id="area" name="area" placeholder="지역이름을 입력하세요." style="height: 50px; background-color: white; color: black; margin-bottom: 5%">
								<button class="button alt" type="submit">검색</button>
							</header>

						</section>
					</div>
				</div>
			</form>

		</div>
	</div>

	<!-- Featured -->
	<div class="wrapper style2">
		<section class="container">
			<header class="major">
				<h2>저기어때에 방문해 주셔서 감사합니다!</h2>
				<span class="byline">welcome to WTAP!</span>
			</header>
			<div class="row no-collapse-1">
				<section class="4u">
					<a href="#" class="image feature"><img src="images/pic02.jpg" alt=""></a>
					<p>Nam in massa. Sed vel tellus. Curabitur sem urna, consequat vel, suscipit in, mattis placerat.</p>
				</section>
				<section class="4u">
					<a href="#" class="image feature"><img src="images/pic03.jpg" alt=""></a>
					<p>Donec ornare neque ac sem. Mauris aliquet. Aliquam sem leo, vulputate sed, convallis. Donec magna.</p>
				</section>
				<section class="4u">
					<a href="#" class="image feature"><img src="images/pic04.jpg" alt=""></a>
					<p>Curabitur sem urna, consequat vel, suscipit convallis sem leo, mattis placerat, nulla. Sed ac leo.</p>
				</section>

			</div>
		</section>
	</div>

	<!-- Main -->
	<div id="main" class="wrapper style1">
		<section class="container">
			<header class="major">
				<h2>Nulla luctus eleifend</h2>
				<span class="byline">Mauris vulputate dolor sit amet nibh</span>
			</header>
			<div class="row">

				<!-- Content -->
				<div class="6u">
					<section>
						<ul class="style">
							<li><span class="fa fa-wrench"></span>
								<h3>Integer ultrices</h3> <span>In posuere eleifend odio. Quisque semper augue mattis wisi. Maecenas ligula. Pellentesque viverra vulputate enim.</span></li>
							<li><span class="fa fa-cloud"></span>
								<h3>Aliquam luctus</h3> <span>Pellentesque viverra vulputate enim. Aliquam erat volutpat. Maecenas condimentum enim tincidunt risus accumsan.</span></li>
						</ul>
					</section>
				</div>
				<div class="6u">
					<section>
						<ul class="style">
							<li><span class="fa fa-cogs"></span>
								<h3>Integer ultrices</h3> <span>In posuere eleifend odio. Quisque semper augue mattis wisi. Maecenas ligula. Pellentesque viverra vulputate enim.</span></li>
							<li><span class="fa fa-leaf"></span>
								<h3>Aliquam luctus</h3> <span>Pellentesque viverra vulputate enim. Aliquam erat volutpat. Maecenas condimentum enim tincidunt risus accumsan.</span></li>
						</ul>
					</section>
				</div>
	
		
			</div>
		</section>
	</div>

	<!-- Footer -->
	<footer id="footer">
	<div class="inner">
		<h2>What about this place?</h2>
		<p>This homepage was created through the Pai Chai University Saeil
			Center project. The producers are Somin Kim and Sanghee Lee. Thank
			you for visiting.</p>

		<p class="copyright">
			&copy; WTAP. Design: <a href="https://templated.co">TEMPLATED</a>.
			Images: <a href="https://unsplash.com/">Unsplash</a>. Videos: <a
				href="http://coverr.co/">Coverr</a>.
		</p>
	</div>
</footer>

</body>
</html>