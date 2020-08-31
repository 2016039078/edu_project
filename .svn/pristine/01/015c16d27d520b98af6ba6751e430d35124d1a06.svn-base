<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<script type="text/javaScript" language="javascript" defer="defer">

    function fn_detail(no) {
    	document.frm.no.value = no;
       	document.frm.action = "<c:url value='/b_gesi_detail.do'/>";
       	document.frm.submit();
    }
    
    function fn_insert() {
       	document.frm.action = "<c:url value='/b_gesi_insert.do'/>";
       	document.frm.submit();
    }
    
    function fn_selectlist() {
    	document.frm.action = "<c:url value='/b_gesi_select.do'/>";
       	document.frm.submit();
    }
    
    function fn_link_page(pageNo){
    	document.frm.pageIndex.value = pageNo;
    	document.frm.action = "<c:url value='/b_gesi_select.do'/>";
       	document.frm.submit();
    }
    
</script>
    
<form id="frm" name="frm" method="post">
       <input type="hidden" name="no" />
       <input type="hidden" name="pageIndex" id="pageIndex" value="${pvo.pageIndex}" />
      	<a href="javascript:fn_insert();">추가</a>
      	<!-- List -->
	<table width="100%" border="1" >
		<tr>
			<th align="center">순서</th>
			<th align="center">no</th>
			<th align="center">board_type</th>
			<th align="center">display_yn</th>
			<th align="center">title</th>
			<th align="center">hit</th>
			<th align="center">file</th>
		</tr>
		<c:forEach var="item" items="${list}" varStatus="status">
			<tr>
				<td><c:out value="${paginationInfo.totalRecordCount+1 - ((pbo.pageIndex-1) * pbo.pageUnit + status.count)}"/></td>
				<td><a href="javascript:fn_detail('<c:out value="${item.no}"/>')"><c:out value="${item.no}"/></a></td>
				<td><c:out value="${item.board_type}"/>&nbsp;</td>
				<td><c:out value="${item.display_yn}"/>&nbsp;</td>
				<td><c:out value="${item.title}"/>&nbsp;</td>
				<td><c:out value="${item.hit}"/>&nbsp;</td>
				<td><c:out value="${item.attach_name_yn}"/>&nbsp;</td>
			</tr>
		</c:forEach>
	</table>
	<ui:pagination paginationInfo = "${paginationInfo}" type="image" jsFunction="fn_link_page" />

   </form>
    


