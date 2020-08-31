<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<script type="text/javaScript" language="javascript" defer="defer">
    
    function fn_update() {
       	document.frm.action = "<c:url value='/b_gesi_update.do'/>";
       	document.frm.submit();
    }
    function fn_delete() {
       	document.frm.action = "<c:url value='/b_gesi_delete_act.do'/>";
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


<form id="frm" name="frm"  method="post">
    <input type="hidden" name="no" value="${pvo.no}" />
    <input type="hidden" name="pageIndex" id="pageIndex" value="${pvo.pageIndex}" />
   	<a href="javascript:fn_update();">수정</a>
   	<a href="javascript:fn_delete();">삭제</a>
   	<a href="javascript:fn_selectlist();">목록</a>
   	
   	<table border="1">
   		<tr>
   			<td>no</td>
   			<td>${rvo.no}</td>
   			<td>board_type</td>
   			<td>${rvo.board_type}</td>
   			<td>display_yn</td>
   			<td>${rvo.display_yn}</td>
   		</tr>
   		<tr>
   			<td>title</td>
   			<td colspan="3">${rvo.title}</td>
   			<td>hit</td>
   			<td>${rvo.hit}</td>
   		</tr>
   		<tr>
   			<td>content</td>
   			<td colspan="5" >${rvo.content}</td>
   		</tr>
   		<tr>
   			<td>파일</td>
   			<td colspan="2" >
   				<img width="200px" src="download.do?file_origin=${rvo.attach_name}&file_path=${rvo.attach_path}"/>
   				
   			</td>
   			<td colspan="3" >
   				<a href="download.do?file_origin=${rvo.attach_name}&file_path=${rvo.attach_path}">${rvo.attach_name}</a>
   			</td>       			
   		</tr>
   		<tr>
   			<td>in_date</td>
   			<td colspan="2" >${rvo.in_date}</td>
   			<td>in_user_id</td>
   			<td colspan="2" >${rvo.in_user_id}</td>
   		</tr>
   		<tr>
   			<td>up_date</td>
   			<td colspan="2" >${rvo.up_date}</td>
   			<td>up_user_id</td>
   			<td colspan="2" >${rvo.up_user_id}</td>
   		</tr>

   	
   	</table>
   	

</form>

