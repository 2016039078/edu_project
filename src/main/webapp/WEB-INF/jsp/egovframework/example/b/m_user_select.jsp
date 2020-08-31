<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>게시판</title>
    <script type="text/javaScript" language="javascript" defer="defer">
    
        function fn_detail(id) {
        	document.frm.user_id.value = id;
           	document.frm.action = "<c:url value='/m_user_detail.do'/>";
           	document.frm.submit();
        }
        
        function fn_insert() {
           	document.frm.action = "<c:url value='/m_user_insert.do'/>";
           	document.frm.submit();
        }
        
        function fn_selectlist() {
        	document.frm.action = "<c:url value='/m_user_select.do'/>";
           	document.frm.submit();
        }
        
        function fn_link_page(pageNo){
        	document.frm.pageIndex.value = pageNo;
        	document.frm.action = "<c:url value='/m_user_select.do'/>";
           	document.frm.submit();
        }
        
    </script>
</head>

<body>
	<form id="frm" name="frm" method="post">
        <input type="hidden" name="user_id" />
        <input type="hidden" name="pageIndex" id="pageIndex" value="${pvo.pageIndex}" />
       	<a href="javascript:fn_insert();">추가</a>
       	<!-- List -->
		<table width="100%" border="1" >

			<tr>
				<th align="center">No</th>
				<th align="center">USER_ID</th>
				<th align="center">KO_NAME</th>
				<th align="center">EN_NAME</th>

			</tr>
			<c:forEach var="item" items="${list}" varStatus="status">
				<tr>
					<td><c:out value="${paginationInfo.totalRecordCount+1 - ((pvo.pageIndex-1) * pvo.pageUnit + status.count)}"/></td>
					<td><a href="javascript:fn_detail('<c:out value="${item.user_id}"/>')"><c:out value="${item.user_id}"/></a></td>
					<td><c:out value="${item.ko_name}"/>&nbsp;</td>
					<td><c:out value="${item.en_name}"/>&nbsp;</td>

				</tr>
			</c:forEach>
		</table>
		<ui:pagination paginationInfo = "${paginationInfo}" type="image" jsFunction="fn_link_page" />

    </form>
</body>
</html>
