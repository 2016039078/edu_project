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
        
        function fn_update_act() {
           	document.frm.action = "<c:url value='/jeogi_suggestions_update_act.do'/>";
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
	<form id="frm" name="frm" action="jeogi_suggestionssample_select.do" method="post">
        <input type="hidden" name="pageIndex" id="pageIndex" value="${jeogi_suggestionsVO.pageIndex}" />
       	<a href="javascript:fn_update_act();">목록</a>
		<a href="javascript:fn_update_act();">실행</a>
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
