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
        
        function fn_insert_act() {
           	document.frm.action = "<c:url value='/jeogi_suggestions_insert_act.do'/>";
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
	<form id="frm" name="frm" action="jeogi_suggestions_select.do" method="post">

       	<a href="javascript:fn_insert_act();">실행</a>
		
		<table border="1">
			
			<tr>	
				<td>이름</td>
				<td><input name="sug_user_id" value=""  /></td>
			</tr>
			<tr>	
				<td>내용</td>
				<td><input name="sug_content" value=""  /></td>
			</tr>
			<tr>	
				<td>등록일자</td>
				<td><input name="sug_date" value=""  /></td>
			</tr>		
									
			
		</table>
    </form>
</body>
</html>
