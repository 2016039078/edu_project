<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>게시판</title>
</head>
<html>

<style>
.confirmation {
	float: left;
	margin-left: 30%;
	width: 50%;
}

.detail {
	float: right;
	margin-right: 25%;
	border-bottom: 6px solid lightgrey;
	background-color: white;
}

table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	padding: 8px;
	text-align: left;
	border-bottom: 1px solid #ddd;
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
	background-color: #e7e7e7;
	color: black;
}

.confirmation h1 {
	font: inherit;
	font-size: 50px;
}

tr:hover {
	background-color: #f5f5f5;
}
</style>
</head>

<body>
	<div class="confirmation" style="margin-bottom: 5%; margin-top: 5%">
		<h1>확인 및 결제</h1>
		<div>일행이 있을 경우 세부정보를 추가 후, 예약을 확정하시면 됩니다.</div>
		<br>
		<br>
		<table class="table table-hover">
			<thead>
				<tr>

					<th scope="col">1. 숙소 이름</th>
					<th scope="col">${rvo.r_title}</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="col">2. 숙소 주소</th>
					<th scope="col">${rvo.address}</th>
				</tr>
				<tr>
					<td>3. 결제 정보 (총 결제 금액은 추가인원수에 따라 달라 질 수 있습니다.)</td>
					<td>${rvo.r_price}</td>
				</tr>
				<tr>
					<td>4. 수용 가능 최대인원 수</td>
					<td>${rvo.max_p}</td>
				</tr>
				<tr>
					<td>5. 숙소 형태</td>
					<td>${rvo.type}</td>
				</tr>
			</tbody>
		</table>

		<form action="rooms_update_reservation_act.do" method=post id="frm"
			name="frm">
			<input type="hidden" id="user_id" name="user_id"
				value="${userSession.user_id}"> <input type="hidden"
				id="r_id" name="r_id" value="${r_id}"> <input type="hidden"
				id="r_date" name="r_date" value="${r_date}">
			<button type="submit" class="btndetail">
				<span class="btndetail">예약하기</span>
			</button>
		</form>


	</div>

</body>