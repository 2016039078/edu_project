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
           	document.frm.action = "<c:url value='/jeogi_faq_update_act.do'/>";
           	document.frm.submit();
        }

        function fn_selectlist() {
        	document.frm.action = "<c:url value='/jeogi_faq_select.do'/>";
           	document.frm.submit();
        }
        
        function fn_link_page(pageNo){
        	document.frm.pageIndex.value = pageNo;
        	document.frm.action = "<c:url value='/jeogi_faq_select.do'/>";
           	document.frm.submit();
        }
        
    </script>
</head>

<body>
	<form id="frm" name="frm" action="jeogi_faqsample_select.do" method="post">
        <input type="hidden" name="pageIndex" id="pageIndex" value="${jeogi_faqVO.pageIndex}" />
       	<a href="javascript:fn_update_act();">목록</a>
		<a href="javascript:fn_update_act();">실행</a>
		<table border="1">
		
		<tr>	
				<td>FAQ_SEQ</td>
				<td>${rvo.faq_seq}</td>
			</tr>
			<tr>	
				<td>QUESTION</td>
				<td>${rvo.question}</td>
			</tr>
			<tr>	
				<td>ANSWER</td>
				<td>${rvo.answer}</td>
			</tr>
			<tr>	
				<td>R_DATE</td>
				<td>${rvo.r_date}</td>
			</tr>
		
			
		</table>
    </form>
</body>
</html>


