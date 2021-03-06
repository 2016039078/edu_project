<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>게시판</title>
<script src="jquery-3.5.1.js"></script>
<script type="text/javaScript" language="javascript" defer="defer">
	$(function() {
		// Geolocation API에 액세스할 수 있는지를 확인
		if (navigator.geolocation) {
			//위치 정보를 얻기
			navigator.geolocation.getCurrentPosition(function(pos) {
				$('#latitude').html(pos.coords.latitude); // 위도
				$('#longitude').html(pos.coords.longitude); // 경도
			});
		} else {
			alert("이 브라우저에서는 Geolocation이 지원되지 않습니다.");
		}
	});
	
</script>
</head>
<html>

<style>
* {
	margin: 0;
	padding: 0;
}

.star {
	display: inline-block;
	width: 30px;
	height: 60px;
	cursor: pointer;
}

.star_left {
	background: url(http://gahyun.wooga.kr/main/img/testImg/star.png) no-repeat 0 0;
	background-size: 60px;
	margin-right: -3px;
}

.star_right {
	background: url(http://gahyun.wooga.kr/main/img/testImg/star.png) no-repeat -30px 0;
	background-size: 60px;
	margin-left: -3px;
}

.star.on {
	background-image: url(http://gahyun.wooga.kr/main/img/testImg/star_on.png);
}

.grallery {
	width: 100%;
	height: 100%;
	margin: auto;
	text-align: center;
}

td>img {
	width: 100%;
	height: 300px;
}

.home {
	width: auto;
	height: auto;
}

table {
	width: 90%;
	margin: auto;
	text-align: center;
	/* 	border: 1px solid #444444; */
	border-collapse: collapse;
	vertical-align: middle;
}

th, td {
	border: 1px solid #444444;
	vertical-align: middle;
	width: 20%;
}

.tableimg {
	vertical-align: middle;
}

.divbody {
	margin-left: 15%;
	margin-right: 15%;
}

.online-detail {
	text-align: left;
	margin-top: 3%;
}

.one {
	display: inline-block;
	position: relative;
	width: 76%;
	height: 80px;
}

.one-one {
	display: inline-block;
	position: relative;
	table-layout: fixed;
	margin-right: 100px;
}

.two {
	float: right;
	width: 20%;
	position: -webkit-sticky;
	position: sticky;
	top: 0;
}

.two-one {
	border: 2px solid #b4cda8;
    padding: 15px;
    border-radius: 30px;
    text-align: center;
    background-color: #b4cda8;
    margin-bottom: 4px;
    color: white;
}

.btnll {
	display: block;
	background-color: unset;
	border:initial;
}

pre {
	font-size: 20px;
	margin-bottom: 2%;
}

hr {
	color: gray;
	border: 1px;
	border-top: solid 1px #888888;
	margin-bottom: 1.5em;
}
a
	{
	color: black;
}
#frm3
	{
	display: contents;
	margin-right: 1%;
	margin-top: 1%;
}

.btndetail {
  border: none;
  color: white;
  padding: 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  background-color: #e7e7e7; color: black;
}
dt{
margin-bottom: 5px; }

</style>
<script defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCMFoUT6tZhqMk9iy6IrCEO39gxChZYucA&callback=initMap&region=kr"></script>
<input type="hidden" name="r_id" />
<div class="divbody">
	<input type="hidden" id="latitude" name="latitude"> <input type="hidden" id="longitude" name="longitude">
	<div class="online-detail">
				내 찜목록에 추가하기<form action="likelist_insert.do" method=post id="frm3" name="frm3">
					<input type="hidden" id="r_id" name="r_id" value="${rvo.r_id}">
					 <input type="hidden" id="user_id" name="user_id" value="${userSession.user_id}">
					<button class="btnll" style="display: inline;" type="submit"><img src="love.png"></button>
				</form>
	
				좋아요  ${intercnt.r_like} <form action="interest_add.do" method=post id="frm3" name="frm3">
					<input type="hidden" id="r_id" name="r_id" value="${rvo.r_id}">
					<button class="btnll" style="display: inline" type="submit"><img src="like.png"></button>
				</form>
		<table class="grallery">
			<tr>
				<td class="tableimg"><img width="200px" src="download.do?file_origin=${rvo.r_attach01}&file_path=${rvo.r_path01}"></td>
				<td class="tableimg"><img width="200px" src="download.do?file_origin=${rvo.r_attach02}&file_path=${rvo.r_path02}"></td>
				<td class="tableimg"><img width="200px" src="download.do?file_origin=${rvo.r_attach03}&file_path=${rvo.r_path03}"></td>
				<td class="tableimg"><img width="200px" src="download.do?file_origin=${rvo.r_attach04}&file_path=${rvo.r_path04}"></td>
				<td class="tableimg"><img width="200px" src="download.do?file_origin=${rvo.r_attach05}&file_path=${rvo.r_path05}"></td>
			</tr>
		</table>

		<div class="two">
			<c:forEach var="reservationlist" items="${reservationlist}" varStatus="status">
				<form action="rooms_detail_reservation.do" method=post id="frm" name="frm">
					<c:if test="${reservationlist.reservation_yn eq 'N'}">
						<div class="two-one">
							<p>날짜 : ${reservationlist.r_date}</p>
							<p>가격 : ${rvo.r_price}/1인</p>
							<input type="hidden" id="r_id" name="r_id" value="${rvo.r_id}">
							<input type="hidden" id="r_date" name="r_date" value="${reservationlist.r_date}">
							<button class="btndetail" style="display: inline-block;" type="submit">예약하기</button>
							<hr>
						</div>

					</c:if>
				</form>
			</c:forEach>

		</div>


		<div class="one">
			<h3 style="display: inline;">김소민님이 호스팅하는 레지던스 </h3>
			</div>

			<p>최대 인원 ${rvo.max_p}명 · 침실 ${rvo.bedroom}개 · 침대${rvo.bed}개 · 욕실${rvo.bathroom}개</p>
			<hr>
			<div>
			<h2>숙소타입</h2>
				<dl>
					<dt>${rvo.type}</dt>
					<dd>${rvo.type}을(를)사용하실수있습니다.</dd>

				</dl>
			</div>
			<hr>
			<div>
			<h2>숙소소개</h2>
				<pre>${rvo2.r_intro}</pre>
			</div>
			<hr>
			<div>
				<h2>편의시설</h2>
				<dl>
					<dt>${c_namervo.c_name01}</dt>
					<dt>${c_namervo.c_name02}</dt>
					<dt>${c_namervo.c_name03}</dt>
					<dt>${c_namervo.c_name04}</dt>
					<dt>${c_namervo.c_name05}</dt>
					<dt>${c_namervo.c_name06}</dt>
					<dt>${c_namervo.c_name07}</dt>
					<dt>${c_namervo.c_name08}</dt>
					<dt>${c_namervo.c_name09}</dt>
					<dt>${c_namervo.c_name10}</dt>
					<dt>${c_namervo.c_name11}</dt>
					<dt>${c_namervo.c_name12}</dt>
					<dt>${c_namervo.c_name13}</dt>

				</dl>
				<hr>
			</div>
			<div>
				<h2>★ ${scoreavg.avg}점 (후기 ${scoreavg.review_count} 개)</h2>
				
				
					<c:forEach var="relist" items="${relist}" varStatus="status">
					<hr>
					<form id="f" name="f" action="review_delete_act.do">
					<input type="hidden" id="user_namese" name="user_namese" value="${userSession.user_name}">
					<input type="hidden" id="user_name" name="user_name" value="${relist.user_name}">
					<input type="hidden" id="user_id" name="user_id" value="${relist.user_id}">
					<input type="hidden" id="r_id" name="r_id" value="${rvo.r_id}">
					<dl>
						<dt style="font-weight: bold;">${relist.user_name}</dt>
						<dt>●${relist.review_date}작성</dt>
						<dt>●${relist.review_content}</dt>
						<dt><button class="btndetail" type="submit">삭제</button></dt>
					</dl>
						</form>
					</c:forEach>
				<hr>
				<form id="reviewfrm" name="reviewfrm" action="review_insert_act.do">
				<input type="hidden" id="r_id" name="r_id" value="${rvo.r_id}">
				<input type="hidden" id="user_id" name="user_id" value="${userSession.user_id}">
				<div>
					<div class="star-box" style="display: inline-block;">
						<input id="review_score" name="review_score" type="radio" value="0.5">
						<label>0.5점</label>						
						<input  id="review_score" name="review_score" type="radio" value="1">
						<label>1점</label>						
						<input id="review_score" name="review_score" type="radio" value="1.5">
						<label>1.5점</label>
						<input  id="review_score" name="review_score" type="radio" value="2"> 
						<label>2점</label>
						<input  id="review_score" name="review_score" type="radio" value="2.5">
						<label>2.5점</label>
						<input  id="review_score" name="review_score" type="radio" value="3">
						<label>3점</label>
						<input  id="review_score" name="review_score" type="radio" value="3.5">
						<label>3.5점</label>
						<input  id="review_score" name="review_score" type="radio" value="4">
						<label>4점</label>
						<input  id="review_score" name="review_score" type="radio" value="4.5"> 
						<label>4.5점</label>
						<input  id="review_score" name="review_score" type="radio" value="5">
						<label>5점</label>
						
					</div>
					<button class="btndetail" style="display: inline-block;">후기 등록하기</button>
						<textarea rows="" cols="" id="review_content" name="review_content"></textarea>
					
				</div>
				</form>
				<hr>
			</div>
			<div>
				<h2>위치</h2>
				<dl>
					<dt>●${rvo.address}</dt>
				</dl>
			</div>
			<div class="map" style="height: 800px; width: 800px">
				<div id="map" style="height: 100%;"></div>
			</div>
		


		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6d982744f524f18891c71e81fe338704"></script>
		<script>
			var latt = ${rvo.lat};
			var lonn = ${rvo.lon};

			var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
			mapOption = {
				center : new kakao.maps.LatLng(latt, lonn), // 지도의 중심좌표
				level : 6
			// 지도의 확대 레벨
			};

			var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
			var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";
			var imageSize = new kakao.maps.Size(24, 35);
			var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);

			var positions = {
				title : '카카오',
				latlng : new kakao.maps.LatLng(latt, lonn)
			};

			var marker = new kakao.maps.Marker({
				map : map, // 마커를 표시할 지도
				position : positions.latlng, // 마커를 표시할 위치
				title : positions.title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
				image : markerImage
			// 마커 이미지 
			});
		</script>

	</div>
	<hr>
	<div>
		<h3>호스트 소개</h3>
		<dl>
			<dt>●호스트 : ${uservo.user_name}님</dt>
		</dl>
		<dl>
			<dt>●${uservo.host_intro}</dt>
		</dl>
	</div>

	<hr>
	<div class="one-one">
		<h2>알아두어야 할 사항</h2>

		<dl style="float: left; width: 50%">
			<h1>숙소이용규칙과 주의사항</h1>
			<dt>●체크인 시간: ${prevo.noti_title03}</dt>
			<dt>●체크아웃 시간: ${prevo.noti_title04}</dt>
			<dt>●${prevo.noti_title01}</dt>
			<dt>●${prevo.noti_title02}</dt>
			<dt>●${prevo.noti_title05}</dt>
		</dl>

		<dl style="float: left; width: 30%">
			<h1>환불정책</h1>
			<dt>●체크인 30일 전까지 취소하시면 전액이 환불됩니다.</dt>
		</dl>

	</div>
	<hr>
	</div>
