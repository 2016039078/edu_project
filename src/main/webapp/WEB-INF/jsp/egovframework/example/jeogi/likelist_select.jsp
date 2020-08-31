<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>저장목록</title>
<script type="text/javaScript" language="javascript" defer="defer">
	function fn_delete(like_id) {
	   	document.frm.action = "<c:url value='/likelist_delete.do'/>?like_id="+like_id;
	   	document.frm.submit();
	}   
</script>
</head>
<style>
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
<body>
<form id="frm" name="frm" action="jeogi_user_select.do" method="post">
	<h4 style="font-size: 40px;">저장목록</h4>

	<table width="100%" border="1">
		<tr>
			<th align="center" colspan="3">저장목록</th>
			

		</tr>
		<c:forEach var="item" items="${list}" varStatus="status">
			<tr>
<%-- 				<td><c:out value="${item.r_title}"/>&nbsp;</td> --%>
					<td>
						<a style = "color: black;" href="/Egov13Basic/rooms_detail_con.do">${item.r_title}</a>
						&nbsp;
					</td>
				<td>
					<img width="200px" src="download.do?file_origin=${item.r_attach01}&file_path=${item.r_path01}">
				</td>
				<td>
					<a style = "color: black;" href="javascript:fn_delete('${item.like_id}');">삭제</a>
				</td>

			</tr>
		</c:forEach>
	</table>
	</form>
	
</body>
</html>
