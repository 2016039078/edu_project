<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>내가 예약한 숙소</title>
<script type="text/javaScript" language="javascript" defer="defer">
	
</script>
<style type="text/css">
table {
	border-collapse: collapse;
	border-spacing: 0;
	border: solid 2px;
}

td {
	border: solid 1px;
	height: 200px;
	text-align: center;
	vertical-align: middle;
}

th {
	height: 40px;
	text-align: center;
	vertical-align: middle;
	background-color: #B17DED;
	color: white; 
}
#frm{
    margin-left: 10%;
    margin-right: 10%;
    margin-top: 3%}
</style>
</head>

<body>
	<form id="frm" name="frm" action="jeogi_user_select.do" method="post">
		<input type="hidden" name="user_id" />

		<div style="margin-top: 5%;">
			<h4 style="font-size: 40px;">예약현황</h4>
			<table class="pure-table" border="1">
				<thead>
					<tr>
						<th colspan="3">예약현황 목록</th>
						<th></th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${reservedlist}" varStatus="status">
						<tr>
							<td><img src="download.do?file_origin=${item.r_attach01}&file_path=${item.r_path01}"></td>
							<td>${item.r_title}</td>
							<td>${item.r_date}</td>
						</tr>
					</c:forEach>
				</tbody>


			</table>
		</div>
		
		<div style="margin-top: 5%;">
			<h4 style="font-size: 40px;">지난예약 목록</h4>
			<table class="pure-table" border="1">
				<thead>
					<tr>
						<th colspan="3">지난예약</th>
						<th></th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item2" items="${lastreservedlist}" varStatus="status">
						<tr>
							<td>${item2.r_title}</td>
							<td>${item2.r_title}</td>
							<td>${item2.r_title}</td>
						</tr>
					</c:forEach>
				</tbody>


			</table>
		</div>

	</form>
</body>
</html>
