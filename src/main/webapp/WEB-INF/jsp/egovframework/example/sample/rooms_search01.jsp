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
	function fn_detail(r_id) {
	    document.frm.r_id.value = r_id;
	    document.frm.action = "<c:url value='/rooms_detail_con.do'/>";
	    document.frm.submit();
	}
	
</script>
</head>
<html>

<style>

.ablack{
color: black;}

.login {
	float: right;
}

.searchlist, .map {
	display: table-cell;
    float: left;
    margin-top: 2%;
    width: 45%;
}

table {
	width: 100%;
	margin: auto;
	text-align: center;
	border: 1px solid #444444;
	border-radius : 10px, 10px,10px,10px;
}

th, td {
	border: 1px solid darkgray;
	vertical-align:middle;
	
}

.map {
	margin-top: 6%;
}

.divbody{
    width: 100%;
	height: 100%;
	margin-left: 3%;
}

</style>

<form id="frm" name="frm" method="post">
  <input type="hidden" name="r_id" id="r_id"/>
	<div class="divbody">
		<div class="searchlist" style="margin-right: 2%;">
			<h3>검색하신 결과입니다.</h3>
				<table border="1">
			<c:forEach var="item" items="${list}" varStatus="status">
				<tr>
					<td width=200 style="word-break:break-all" "class="tableimg"><img style="max-width:500px;" src="download.do?file_origin=${item.r_attach01}&file_path=${item.r_path01}"></td>
					<td><a class="ablack" href="javascript:fn_detail('<c:out value="${item.r_id}"/>'); "><c:out value="${item.r_title}"/></a></td>
				</tr>
			</c:forEach>
			</table>
		</div>
			<div class="map" style="height:750px; width:1000px">
				<div id="map" style="height:100%;"></div>
			</div>
	</div>

<!-- Main -->

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6d982744f524f18891c71e81fe338704"></script>
<script>

	'<c:forEach var="item" items="${list}" varStatus="status">'
	var latt=${item.lat};
	var lonn=${item.lon};
	
	var idx = '${status.index}';
	if(idx == 0){
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
		mapOption = { 
		    center: new kakao.maps.LatLng(latt, lonn), // 지도의 중심좌표
		    level: 6 // 지도의 확대 레벨
		};
		
		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
		var imageSize = new kakao.maps.Size(24, 35); 
		var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);
	}
	
	var positions = 
	{
	    title: '카카오', 
	    latlng: new kakao.maps.LatLng(latt, lonn)
	};
	
	var marker = new kakao.maps.Marker({
	    map: map, // 마커를 표시할 지도
	    position: positions.latlng, // 마커를 표시할 위치
	    title : positions.title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
	    image : markerImage // 마커 이미지 
	});

'</c:forEach>'
</script>
</form>





