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
table {
	width: 100%;
	margin: auto;
	text-align: center;
	border: 1px solid gray;
	border-radius: 10px, 10px, 10px, 10px;
}

th, td {
	border: 1px solid darkgray;
	vertical-align: middle;
	width: 20%;
	padding: 1%;
}

.divbody>h1 {
	font-size: 40px;
	font: normal;
}

.bestrooms {
	margin-top: 5%;
}

hr {
	border-top: solid 1px #888888;
	border: 1;
}
td>a{
color: black;
}
</style>

<form id="frm" name="frm" method="post">
	<input type="hidden" name="r_id" id="r_id" />
	<div class="divbody" style="margin-top: 5%; margin-bottom: 2%">
		<h1>THE MOST POPULAR ROOMS!</h1>
		<table border="1">
			<tr>
				<c:forEach var="item" items="${bestroomslist}" varStatus="status">
					<td class="tableimg"><img
						src="download.do?file_origin=${item.r_attach01}&file_path=${item.r_path01}"></td>
				</c:forEach>
			</tr>
			<tr>
				<c:forEach var="item" items="${bestroomslist}" varStatus="status">
					<td><a href="javascript:fn_detail('<c:out value="${item.r_id}"/>'); ">${item.r_title}</a></td>
				</c:forEach>
			</tr>
		</table>
	</div>
	<hr>
	
		<div class="divbody" style="margin-top: 2%; margin-bottom: 2%">
		<h1>THE BEST RATED ROOMS!</h1>
		<table border="1">
			<tr>
				<c:forEach var="item" items="${reviewlist}" varStatus="status">
					<td class="tableimg"><img
						src="download.do?file_origin=${item.r_attach01}&file_path=${item.r_path01}"></td>
				</c:forEach>
			</tr>
			<tr>
				<c:forEach var="item" items="${reviewlist}" varStatus="status">
					<td><a href="javascript:fn_detail('<c:out value="${item.r_id}"/>'); ">${item.r_title}</a></td>
				</c:forEach>
		</table>
	</div>
	<hr>
	<div class="divbody" style="margin-top: 2%; margin-bottom: 2%">
		<h1>THE RECENTLY UPDATED ROOMS!</h1>
		<table border="1">
			<tr>
				<c:forEach var="item" items="${recentlylist}" varStatus="status">
					<td class="tableimg"><img
						src="download.do?file_origin=${item.r_attach01}&file_path=${item.r_path01}"></td>
				</c:forEach>
			</tr>
			<tr>
				<c:forEach var="item" items="${recentlylist}" varStatus="status">
					<td><a href="javascript:fn_detail('<c:out value="${item.r_id}"/>'); ">${item.r_title}</a></td>
				</c:forEach>
			</tr>
		</table>
	</div>
	<hr>
</form>