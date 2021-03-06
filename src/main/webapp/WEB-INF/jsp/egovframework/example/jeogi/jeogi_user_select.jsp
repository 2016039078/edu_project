<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>개인정보 수정</title>
    <script type="text/javaScript" language="javascript" defer="defer">
    
        function fn_detail(user_id) {
        	document.frm.id.value = user_id;
           	document.frm.action = "<c:url value='/jeogi_user_detail.do'/>";
           	document.frm.submit();
        }
        
        function fn_insert() {
           	document.frm.action = "<c:url value='/jeogi_user_insert.do'/>";
           	document.frm.submit();
        }
        
        function fn_selectlist() {
        	document.frm.action = "<c:url value='/jeogi_user_select.do'/>";
           	document.frm.submit();
        }
        
        function fn_link_page(pageNo){
        	document.frm.pageIndex.value = pageNo;
        	document.frm.action = "<c:url value='/jeogi_user_select.do'/>";
           	document.frm.submit();
        }
        
    </script>
</head>

<body>
	<form id="frm" name="frm" action="jeogi_user_select.do" method="post">
        <input type="hidden" name="user_id" />
        <input type="hidden" name="pageIndex" id="pageIndex" value="${jeogi_userVO.pageIndex}" />
       	<!-- List -->
		<table width="100%" border="1" >


			<tr>			
				<th align="center">NO</th>
				<th align="center">user_id</th>

			</tr>
	
			
			
			<c:forEach var="item" items="${list}" varStatus="status">
				<tr>
					<td><c:out value="${paginationInfo.totalRecordCount+1 - ((jeogi_userVO.pageIndex-1) * jeogi_userVO.pageUnit + status.count)}"/></td>
					<td><a href="javascript:fn_detail('<c:out value="${item.user_id}"/>')"><c:out value="${item.user_id}"/></a></td>

				</tr>
			</c:forEach>
		</table>
		<ui:pagination paginationInfo = "${paginationInfo}" type="image" jsFunction="fn_link_page" />

    </form>s
</body>
</html>
