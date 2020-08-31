<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>개인정보 수정</title>
<script type="text/javaScript" language="javascript" defer="defer">
    function fn_update(r_id) {
    	document.frm.r_id.value = r_id;
       	document.frm.action = "<c:url value='/rooms_hosting_update.do'/>";
       	document.frm.submit();
    }
    function fn_delete(r_id) {
    	document.frm.r_id.value = r_id;
       	document.frm.action = "<c:url value='/rooms_hosting_delete_act.do'/>";
       	document.frm.submit();
    }     
</script>
<style>
#customers {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#customers td, #customers th {
	border: 1px solid #ddd;
	padding: 20px;
}

#customers tr:nth-child(even) {
	background-color: #f2f2f2;
}

#customers tr:hover {
	background-color: #ddd;
}

#customers th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	background-color: #B17DED;
	color: white;
}
#customers a{color: black;}

#frm{
    margin-left: 10%;
    margin-right: 10%;
    margin-top: 3%}
</style>
</head>
<form id="frm" name="frm" action="jeogi_hosting_select.do" method="post">
<input type="hidden" id="r_id" name="r_id">
<h4 style="font-size: 40px">호스팅 내역</h4>
<table id="customers">
		<tr>
			<th>숙소 이름</th>
			<th>숙소 주소</th>
			<th>숙소 수정</th>
			<th>숙소 삭제</th>
		</tr>
	<c:forEach var="item" items="${hostinglist}" varStatus="status">
		<tr>
			<td>${item.r_title}</td>
			<td>${item.address}</td>
			<td><a href="javascript:fn_update('<c:out value="${item.r_id}"/>')"><c:out value="수정"/></a></td>
			<td><a href="javascript:fn_delete('<c:out value="${item.r_id}"/>')"><c:out value="삭제"/></a></td>
		</tr>
	</c:forEach>
</table>
</form>

