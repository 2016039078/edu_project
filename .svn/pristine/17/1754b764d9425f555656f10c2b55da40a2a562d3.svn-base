<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>1:1 문의</title>
    <script type="text/javaScript" language="javascript" defer="defer">
        
        function fn_update() {
           	document.frm.action = "<c:url value='/jeogi_suggestion_update.do'/>";
           	document.frm.submit();
        }
        function fn_delete() {
           	document.frm.action = "<c:url value='/jeogi_suggestions_delete_act.do'/>";
           	document.frm.submit();
        }        
        
        function fn_selectlist() {
        	document.frm.action = "<c:url value='/jeogi_suggestions_select.do'/>";
           	document.frm.submit();
        }
        
        function fn_link_page(pageNo){
        	document.frm.pageIndex.value = pageNo;
        	document.frm.action = "<c:url value='/jeogi_suggestions_select.do'/>";
           	document.frm.submit();
        }
        
    </script>
</head>

<body>
	<form id="frm" name="frm" method="post">
        <input type="hidden" name="suggestions_id" value="${jeogi_suggestionsVO.suggestions_id}" />
        <input type="hidden" name="pageIndex" id="pageIndex" value="${jeogi_suggestionsVO.pageIndex}" />
       	<a href="javascript:fn_update();">수정</a>
       	<a href="javascript:fn_delete();">삭제</a>
       	<a href="javascript:fn_selectlist();">목록</a>
		
		<table border="1">
			<tr>	
				<td>SUG_SEQ</td>
				<td>${rvo.sug_seq}</td>
			</tr>
			<tr>	
				<td>SUG_USER_ID</td>
				<td>${rvo.sug_user_id}</td>
			</tr>
			<tr>	
				<td>SUG_CONTENT</td>
				<td>${rvo.sug_content}</td>
			</tr>
			<tr>	
				<td>SUG_DATE</td>
				<td>${rvo.sug_date}</td>
			</tr>
			
		</table>
    </form>
</body>
</html>

