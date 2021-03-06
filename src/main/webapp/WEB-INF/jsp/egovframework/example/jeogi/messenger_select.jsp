<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<head>
<script language="javascript" language="javascript" defer="defer">
	function showPopup(r_id,ms_id) { 
		window.open("messenger_chatting.do?r_id="+r_id+"&ms_id="+ms_id, "messenger_popup", "width=400, height=520, left=100, top=50");
		document.div.scrollTop = document.div.scrollHeight;
	}
</script>
</head>
<style>
#customers {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
	height: 15px;
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
    margin-top: 3%}</style>
<form id="frm" name="frm" action="jeogi_hosting_select.do" method="post">
<body>
		<h4 style="font-size: 40px">메시지</h4>
		<div>
		<table id="customers">
			<tr>
				<th align="center">현재 개설된 대화방</th>
				<th align="center"></th>
			</tr>

			<c:forEach var="item" items="${list}" varStatus="status">
				<tr class=inboxlist onclick="showPopup('${item.r_id}','${item.ms_id}');">
						<td><c:out value="${item.r_title}" /></td>
						<td><c:out value="입장" /></td>
				</tr>		
			</c:forEach>	
		</table>
		</div>
</body>
</form>
</html>