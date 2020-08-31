<%@page import="java.util.ArrayList"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page import="java.util.Calendar"%>

<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>게시판</title>
<style type="text/css">
.bAddr {
	height: auto;
	width: 200px;
}

.map_wrap, .map_wrap * {
	margin: 0;
	padding: 0;
	font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
	font-size: 12px;
}

.map_wrap a, .map_wrap a:hover, .map_wrap a:active {
	color: #000;
	text-decoration: none;
}

.map_wrap {
	position: relative;
	width: 100%;
	height: 500px;
}

#menu_wrap {
	position: absolute;
	top: 0;
	left: 0;
	bottom: 0;
	width: 250px;
	margin: 10px 0 30px 10px;
	padding: 5px;
	overflow-y: auto;
	background: rgba(255, 255, 255, 0.7);
	z-index: 1;
	font-size: 12px;
	border-radius: 10px;
}

.bg_white {
	background: #fff;
}

#menu_wrap hr {
	display: block;
	height: 1px;
	border: 0;
	border-top: 2px solid #5F5F5F;
	margin: 3px 0;
}

#menu_wrap .option {
	text-align: center;
}

#menu_wrap .option p {
	margin: 10px 0;
}

#menu_wrap .option button {
	margin-left: 5px;
}

#placesList li {
	list-style: none;
}

#placesList .item {
	position: relative;
	border-bottom: 1px solid #888;
	overflow: hidden;
	cursor: pointer;
	min-height: 65px;
}

#placesList .item span {
	display: block;
	margin-top: 4px;
}

#placesList .item h5, #placesList .item .info {
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

#placesList .item .info {
	padding: 10px 0 10px 55px;
}

#placesList .info .gray {
	color: #8a8a8a;
}

#placesList .info .jibun {
	padding-left: 26px;
	background: url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;
}

#placesList .info .tel {
	color: #009900;
}

#placesList .item .markerbg {
	float: left;
	position: absolute;
	width: 36px;
	height: 37px;
	margin: 10px 0 0 10px;
	background: url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;
}

#placesList .item .marker_1 {
	background-position: 0 -10px;
}

#placesList .item .marker_2 {
	background-position: 0 -56px;
}

#placesList .item .marker_3 {
	background-position: 0 -102px
}

#placesList .item .marker_4 {
	background-position: 0 -148px;
}

#placesList .item .marker_5 {
	background-position: 0 -194px;
}

#placesList .item .marker_6 {
	background-position: 0 -240px;
}

#placesList .item .marker_7 {
	background-position: 0 -286px;
}

#placesList .item .marker_8 {
	background-position: 0 -332px;
}

#placesList .item .marker_9 {
	background-position: 0 -378px;
}

#placesList .item .marker_10 {
	background-position: 0 -423px;
}

#placesList .item .marker_11 {
	background-position: 0 -470px;
}

#placesList .item .marker_12 {
	background-position: 0 -516px;
}

#placesList .item .marker_13 {
	background-position: 0 -562px;
}

#placesList .item .marker_14 {
	background-position: 0 -608px;
}

#placesList .item .marker_15 {
	background-position: 0 -654px;
}

#pagination {
	margin: 10px auto;
	text-align: center;
}

#pagination a {
	display: inline-block;
	margin-right: 10px;
}

#pagination .on {
	font-weight: bold;
	cursor: default;
	color: #777;
}

.date {
	margin-left: 5%;
}

.content {
	margin-left: 10%;
	margin-right: 10%;
}
</style>
<script src="jquery-3.5.1.js"></script>
<script type="text/javaScript">
	function fn_insert_act() {
		if ($("#user_id").eq(0).val() == "") {
			alert("로그인을 해야 가능합니다.");
			$("#user_id").eq(0).focus();
			return; //프로그램이 밑으로 안내려가게
		}

		if ($("#address").eq(0).val() == "") {
			alert("address을 입력하시오");
			$("#address").eq(0).focus();
			return; //프로그램이 밑으로 안내려가게
		}

		if ($("#lon").eq(0).val() == "") {
			alert("lon을 입력하시오");
			$("#lon").eq(0).focus();
			return; //프로그램이 밑으로 안내려가게
		}

		if ($("#lat").eq(0).val() == "") {
			alert("lat을 입력하시오");
			$("#lat").eq(0).focus();
			return; //프로그램이 밑으로 안내려가게
		}

		if ($("#noti_title01").eq(0).val() == "") {
			alert("noti_title01을 입력하시오");
			$("#noti_title01").eq(0).focus();
			return; //프로그램이 밑으로 안내려가게
		}

		if ($("#noti_title02").eq(0).val() == "") {
			alert("noti_title02을 입력하시오");
			$("#noti_title02").eq(0).focus();
			return; //프로그램이 밑으로 안내려가게
		}

		if ($("#noti_title03").eq(0).val() == "") {
			alert("입실 시간을 입력하시오");
			$("#noti_title03").eq(0).focus();
			return; //프로그램이 밑으로 안내려가게
		}

		if ($("#noti_title04").eq(0).val() == "") {
			alert("퇴실 시간을 입력하시오");
			$("#noti_title04").eq(0).focus();
			return; //프로그램이 밑으로 안내려가게
		}

		if ($("textarea#r_intro").eq(0).val() == "") {
			alert("r_intro을 입력하시오");
			$("textarea#r_intro").eq(0).focus();
			return; //프로그램이 밑으로 안내려가게
		}

		if ($("textarea#r_title").eq(0).val() == "") {
			alert("r_title을 입력하시오");
			$("textarea#r_title").eq(0).focus();
			return; //프로그램이 밑으로 안내려가게
		}

		if ($("textarea#r_price").eq(0).val() == "") {
			alert("r_price을 입력하시오");
			$("#r_price").eq(0).focus();
			return; //프로그램이 밑으로 안내려가게
		}

		if ($("#r_attach01").eq(0).val() == "") {
			alert("r_attach01을 입력하시오");
			$("#r_attach01").eq(0).focus();
			return; //프로그램이 밑으로 안내려가게
		}

		if ($("#r_attach02").eq(0).val() == "") {
			alert("r_attah02을 입력하시오");
			$("#r_attah02").eq(0).focus();
			return; //프로그램이 밑으로 안내려가게
		}

		if ($("#r_attach03").eq(0).val() == "") {
			alert("r_attah03을 입력하시오");
			$("#r_attah03").eq(0).focus();
			return; //프로그램이 밑으로 안내려가게
		}

		if ($("#r_attach04").eq(0).val() == "") {
			alert("r_attah04을 입력하시오");
			$("#r_attah04").eq(0).focus();
			return; //프로그램이 밑으로 안내려가게
		}

		if ($("#r_attach05").eq(0).val() == "") {
			alert("r_attah05을 입력하시오");
			$("#r_attah05").eq(0).focus();
			return; //프로그램이 밑으로 안내려가게
		}

		if ($("#r_attach05").eq(0).val() == "") {
			alert("r_attah05을 입력하시오");
			$("#r_attah05").eq(0).focus();
			return; //프로그램이 밑으로 안내려가게
		}

		document.frm.action = "<c:url value='/rooms_hosting_insert_act.do'/>";
		document.frm.submit();
	}
</script>
</head>

<body>
	<h1 style="font: normal; font-size: 40px;">숙소 호스팅하기</h1>
	<div class=showmap>
		<h1>1. 정확한 주소를 알려주세요.</h1>
		<p>키워드로 검색 후 정확한 위치를 마커를 이용해 지정하세요.</p>
	</div>
	<div class="map_wrap">
		<div id="map" style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>
		<div id="menu_wrap" class="bg_white">
			<div class="option">
				<div>
					<form onsubmit="searchPlaces(); return false;">
						키워드 : <input type="text" value="" id="keyword" size="15" placeholder="예)대전시 대덕구 석봉동">
						<button type="submit">검색하기</button>
					</form>
					<p>마커 지정 후 상세주소를 꼭 입력하세요.</p>
				</div>
			</div>
			<hr>

		</div>
	</div>

	<form id="frm" name="frm" method="post" enctype="multipart/form-data" action="javascript:fn_insert_act();">
		<input type="hidden" id="lat" name="lat"> <input type="hidden" id="lon" name="lon"> <input type="text" id="address" name="address"> <input type="hidden" name="r_id" value="${conVO.r_id}" id="r_id" /> <input type="hidden" name="pageIndex" id="pageIndex" value="${conVO.pageIndex}" /> <input type="hidden" id="user_id" name="user_id" value="${userSession.user_id}">

		<div class="box">
			<h1>2. 게스트가 어떤 유형에 숙소에 묵게 될 건가요?</h1>

			<div class="select_roomtype date">

				<select id="type" name="type">
					<option value="집전체">집전체</option>
					<option value="개인실">개인실</option>
					<option value="호텔객실">호텔객실</option>
					<option value="다인실">다인실</option>
				</select> <select id="max_p" name="max_p">
					<option value="2인실">2인실</option>
					<option value="3인실">3인실</option>
					<option value="4인실">4인실</option>
					<option value="6인실">6인실</option>
					<option value="10인실">10인실</option>
					<option value="15인실">15인실</option>
				</select>

			</div>


			<input class="date" type="radio" id="housing_type" name="housing_type" value="아파트" checked> <label for="male">아파트</label> <input type="radio" id="housing_type" name="housing_type" value="주택"> <label for="other">주택</label> <input type="radio" id="housing_type" name="housing_type" value="게스트 하우스"> <label for="other">게스트 하우스</label><br>

		</div>

		<div class="box">
			<h1>3. 흡연가능한가요?</h1>
			<div class="date">
				<input type="radio" id="noti_title01" name="noti_title01" value="흡연가능" checked> <label for="male">예</label> <input type="radio" id="noti_title01" name="noti_title01" value="흡연불가능"> <label for="other">아니오</label><br>
			</div>
		</div>

		<div class="box">
			<h1>4. 반려동물 입장이 가능한가요?</h1>
			<div class="date">
				<input type="radio" id="noti_title02" name="noti_title02" value="애완견동반가능" checked> <label for="male">예</label> <input type="radio" id="noti_title02" name="noti_title02" value="애완견동반불가능"> <label for="other">아니오</label><br>
			</div>
		</div>

		<div class="box">
			<h1>5. 숙소의 입실시간과 퇴실시간이 언제인가요?</h1>
			<div class="date">
				입실 시간 : <input type="text" id="noti_title03" name="noti_title03" value=""> <br> 퇴실 시간 : <input type="text" id="noti_title04" name="noti_title04" value=""> <br>
			</div>
		</div>

		<div class="box">
			<h1>6. 또 다른 알림사항이 있으면 적어주세요.</h1>
			<div class="date">
				<input type="text" id="noti_title05" name="noti_title05" value="">
			</div>
		</div>

		<div class="box">
			<h1>7. 침실이 몇개 인가요?</h1>
			<input class="date" type="radio" id="bedroom" name="bedroom" value="1" checked> <label for="male">1개</label> <input type="radio" id="bedroom" name="bedroom" value="2"> <label for="other">2개</label> <input type="radio" id="bedroom" name="bedroom" value="3"> <label for="male">3개</label>
		</div>

		<div class="box">
			<h1>8. 침대가 총 몇개 인가요?</h1>
			<input class="date" type="radio" id="bed" name="bed" value="1" checked> <label for="male">1개</label> <input type="radio" id="bed" name="bed" value="2"> <label for="other">2개</label> <input type="radio" id="bed" name="bed" value="3"> <label for="male">3개</label> <input type="radio" id="bed" name="bed" value="4"> <label for="male">4개</label> <input type="radio"
				id="bed" name="bed" value="5"> <label for="other">5개</label><br>
		</div>

		<div class="box">
			<h1>8. 욕실이 몇개 인가요?</h1>
			<input class="date" type="radio" id="bathroom" name="bathroom" value="1" checked> <label for="male">1개</label> <input type="radio" id="bathroom" name="bathroom" value="2"> <label for="other">2개</label> <input type="radio" id="bathroom" name="bathroom" value="3"> <label for="other">3개</label><br>
			<pre></pre>
		</div>


		<br>



		<div class="hosting_head">
			<h1>9. 어떤 편의시설이 있는지 알려주세요.</h1>
			<p>
				일반적으로 게스트가 기대하는 편의시설 목록입니다.<br>숙소를 등록한 후 언제든 편의시설을 추가할 수 있어요.
			</p>
		</div>
		<div class="conv_content">
			<div class="date">
				<input type="checkbox" id="c_name01" name="c_name01" value="필수품목(수건, 침대 시트, 비누, 화장지, 베개)" checked> <label for="e_item">필수품목(수건, 침대 시트, 비누, 화장지, 베개)</label><br> <input style="margin-top: 20px;" type="checkbox" id="c_name02" name="c_name02" value="무선인터넷"> <label for="wirelessnet">무선인터넷</label><br> <input style="margin-top: 20px;" type="checkbox" id="c_name03"
					name="c_name03" value="TV"> <label for="tv">TV</label><br> <input style="margin-top: 20px;" type="checkbox" id="c_name04" name="c_name04" value="난방"> <label for="heating">난방</label><br> <input style="margin-top: 20px;" type="checkbox" id="c_name05" name="c_name05" value="에어컨"> <label for="airconditioner">에어컨</label><br> <input style="margin-top: 20px;"
					type="checkbox" id="c_name06" name="c_name06" value="다리미"> <label for="iron">다리미</label><br> <input style="margin-top: 20px;" type="checkbox" id=c_name07 name="c_name07" value="샴푸"> <label for="shampoo">샴푸</label><br> <input style="margin-top: 20px;" type="checkbox" id="c_name08" name="c_name08" value="헤어드라이기"> <label for="hairdrier">헤어드라이기</label><br> <input
					style="margin-top: 20px;" type="checkbox" id="c_name09" name="c_name09" value="조식, 커피, 차"> <label for="breakfast">조식, 커피, 차</label><br> <input style="margin-top: 20px;" type="checkbox" id="c_name10" name="c_name10" value="업무 가능 공간"> <label for="business">업무 가능 공간</label><br> <input style="margin-top: 20px;" type="checkbox" id="c_name11" name="c_name11" value="벽난로">
				<label for="fireplace">벽난로</label><br> <input style="margin-top: 20px;" type="checkbox" id="c_name12" name="c_name12" value="옷장/서랍장"> <label for="closet">옷장/서랍장</label><br> <input style="margin-top: 20px; margin-bottom: 20px;" type="checkbox" id="c_name13" name="c_name13" value="게스트 전용 출입문"> <label for="door">게스트 전용 출입문</label><br>
			</div>
			<br>
			<div style="margin-top: 20px;">
				<h1>10. 게스트들에게 호스트님을 소개해주세요.</h1>
				<textarea class="date" id="host_intro" name="host_intro" rows="" cols=""></textarea>
			</div>
			<br>
			<div>
				<h1>11. 게스트들에게 호스트님의 숙소를 소개해주세요.</h1>
				<textarea class="date" id="r_intro" name="r_intro" rows="" cols=""></textarea>
			</div>
			<br>
			<div>
				<h1>12. 게스트들에게 보여질 숙소의 이름을 정해주세요.</h1>
				<textarea class="date" id="r_title" name="r_title" rows="" cols=""></textarea>
			</div>
			<div>
				<h1>13. 게스트들에게 받을 요금을 정해주세요. 1일 기준입니다.</h1>
				<textarea class="date" id="r_price" name="r_price" rows="" cols=""></textarea>
			</div>
			<br>
			<div>
				<h1>14. 숙소의 예약가능 한 날짜를 정해주세요. 날짜는 일주일 단위로 업데이트 가능합니다.</h1>
				<c:forEach var="list" items="${oneWeekDayList}" varStatus="status">
					<input class="date" type="checkbox" id="r_date" name="r_date" value="${list.ONE_WEEK }">
					<label for="fireplace"></label>
				${list.ONE_WEEK }  ${list.DAY}
			</c:forEach>
			</div>
			<h1>15. 숙소의 예쁜 사진을 올려주세요.</h1>
			<div class="date" style="margin-top: 20px;">
				<div>

					사진 파일1 <input type="file" name="myfile1" id="r_attach01" />
				</div>
				<div>
					사진 파일2 <input type="file" name="myfile2" id="r_attach02" />
				</div>
				<div>
					사진 파일3 <input type="file" name="myfile3" id="r_attach03" />
				</div>
				<div>
					사진 파일4 <input type="file" name="myfile4" id="r_attach04" />
				</div>
				<div>
					사진 파일5 <input type="file" name="myfile5" id="r_attach05" />
				</div>
			</div>
		</div>
		<header class="major">
			<button class="button alt" type="submit" style="margin-left: 40%" >숙소등록</button>
		</header>
	</form>

	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6d982744f524f18891c71e81fe338704&libraries=services"></script>
	<script>
		// 마커를 담을 배열입니다
		var markers = [];

		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
			level : 1
		// 지도의 확대 레벨
		};

		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption);

		// 장소 검색 객체를 생성합니다
		var ps = new kakao.maps.services.Places();

		// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
		var infowindow = new kakao.maps.InfoWindow({
			zIndex : 1
		});

		// 키워드로 장소를 검색합니다
		searchPlaces();

		// 키워드 검색을 요청하는 함수입니다
		function searchPlaces() {

			var keyword = document.getElementById('keyword').value;

			// 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
			ps.keywordSearch(keyword, placesSearchCB);
		}

		// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
		function placesSearchCB(data, status, pagination) {
			if (status === kakao.maps.services.Status.OK) {

				displayPlaces(data);

			} else if (status === kakao.maps.services.Status.ZERO_RESULT) {

				alert('검색 결과가 존재하지 않습니다.');
				return;

			} else if (status === kakao.maps.services.Status.ERROR) {

				alert('검색 결과 중 오류가 발생했습니다.');
				return;

			}
		}

		// 검색 결과 목록과 마커를 표출하는 함수입니다
		function displayPlaces(places) {

			var listEl = document.getElementById('placesList'), menuEl = document.getElementById('menu_wrap'), fragment = document.createDocumentFragment(), bounds = new kakao.maps.LatLngBounds(), listStr = '';

			for (var i = 0; i < 1; i++) {

				// 마커를 생성하고 지도에 표시합니다
				var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x);

				// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
				// LatLngBounds 객체에 좌표를 추가합니다
				bounds.extend(placePosition);

				// 마커와 검색결과 항목에 mouseover 했을때
				// 해당 장소에 인포윈도우에 장소명을 표시합니다
				// mouseout 했을 때는 인포윈도우를 닫습니다

			}

			// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
			map.setBounds(bounds);

			var geocoder = new kakao.maps.services.Geocoder();

			var marker = new kakao.maps.Marker(), // 클릭한 위치를 표시할 마커입니다
			infowindow = new kakao.maps.InfoWindow({
				zindex : 1
			}); // 클릭한 위치에 대한 주소를 표시할 인포윈도우입니다

			// 현재 지도 중심좌표로 주소를 검색해서 지도 좌측 상단에 표시합니다
			searchAddrFromCoords(map.getCenter(), displayCenterInfo);

			// 지도를 클릭했을 때 클릭 위치 좌표에 대한 주소정보를 표시하도록 이벤트를 등록합니다
			kakao.maps.event.addListener(map, 'click', function(mouseEvent) {
				searchDetailAddrFromCoords(mouseEvent.latLng, function(result, status) {
					if (status === kakao.maps.services.Status.OK) {
						var detailAddr = '<div>주소 : ' + result[0].address.address_name + '</div>';

						var content = '<div>' + '<span class="title">주소정보</span>' + detailAddr + '</div>';
						document.getElementById('address').value = '주소 : ' + result[0].address.address_name;

						// 마커를 클릭한 위치에 표시합니다 
						marker.setPosition(mouseEvent.latLng);
						marker.setMap(map);
						// 인포윈도우에 클릭한 위치에 대한 법정동 상세 주소정보를 표시합니다
						infowindow.setContent(content);
						infowindow.open(map, marker);

						var latlng = mouseEvent.latLng;

						// 마커 위치를 클릭한 위치로 옮깁니다
						marker.setPosition(latlng);

						var lat = latlng.getLat();
						var lon = latlng.getLng();

						document.getElementById('lat').value = lat;
						document.getElementById('lon').value = lon;
					}
				});
			});

			// 중심 좌표나 확대 수준이 변경됐을 때 지도 중심 좌표에 대한 주소 정보를 표시하도록 이벤트를 등록합니다
			kakao.maps.event.addListener(map, 'idle', function() {
				searchAddrFromCoords(map.getCenter(), displayCenterInfo);
			});

			function searchAddrFromCoords(coords, callback) {
				// 좌표로 행정동 주소 정보를 요청합니다
				geocoder.coord2RegionCode(coords.getLng(), coords.getLat(), callback);
			}

			function searchDetailAddrFromCoords(coords, callback) {
				// 좌표로 법정동 상세 주소 정보를 요청합니다
				geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
			}

			// 지도 좌측상단에 지도 중심좌표에 대한 주소정보를 표출하는 함수입니다
			function displayCenterInfo(result, status) {
				if (status === kakao.maps.services.Status.OK) {
					var infoDiv = document.getElementById('centerAddr');

					for (var i = 0; i < result.length; i++) {
						// 행정동의 region_type 값은 'H' 이므로
						if (result[i].region_type === 'H') {
							infoDiv.innerHTML = result[i].address_name;
							break;
						}
					}
				}
			}

		}
	</script>

</body>
</html>
