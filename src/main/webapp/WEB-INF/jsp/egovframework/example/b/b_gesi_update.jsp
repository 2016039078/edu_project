<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<style type="text/css">
#title{
	width: 400px;
}
</style> 
<script type="text/javaScript" language="javascript" defer="defer">
    
    function fn_update_act() {
       	document.frm.action = "<c:url value='/b_gesi_update_act.do'/>";
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

    
	function fn_ajax_deletefile(no) {
		var param = "";
		param += "dummy=" + Math.random();
		param += "&no="+no;
		$.ajax({
			url : "b_gesi_deletefile_act.do",
			data : param,
			dataType : "json",
			type : "post",
			async : true,
			statusCode : {
				404 : function() {
					alert("네트워크가 불안정합니다. 다시 시도부탁드립니다.");
				}
			},
			success : function(data) {
				fn_ajax_deletefile_callback(data);
			}
		});
	}
	function fn_ajax_deletefile_callback(data) {
		if(data == 'ok'){
			alert("첨부파일이 삭제되었습니다.");
			location.reload();
		}
		
	}        
    
    
</script>

<form id="frm" name="frm" action="b_gesi_select.do" method="post"  enctype="multipart/form-data"  >
    <input type="hidden" name="pageIndex" id="pageIndex" value="${pvo.pageIndex}" />
   	
   	<a href="javascript:fn_selectlist();">목록</a>
   	<a href="javascript:fn_update_act();">실행</a>
   	
   	<table border="1">
   		<tr>
   			<td>no</td>
   			<td><input name="no" value="${rvo.no}"  /></td>
   			<td>board_type</td>
   			<td><input name="board_type" value="${rvo.board_type}"  /></td>
   			<td>display_yn</td>
   			<td><input name="display_yn" value="${rvo.display_yn}"  /></td>
   		</tr>
   		<tr>
   			<td>title</td>
   			<td colspan="3"><input id="title" name="title" value="${rvo.title}"  /></td>
   			<td>hit</td>
   			<td>${rvo.hit}</td>
   		</tr>
   		<tr>
   			<td>content</td>
   			<td colspan="5">
	<textarea name="content" rows="4" cols="80">${rvo.content}</textarea>
</td>
   		</tr>
   		<tr>
   			<td>파일</td>
   			<td colspan="2" >
    			<img width="200px" src="download.do?file_origin=${rvo.attach_name}&file_path=${rvo.attach_path}">

    			
   			</td>       			
   			
   			<td colspan="3" >
    			<input type="file" name="myfile" />
    			<a href="download.do?file_origin=${rvo.attach_name}&file_path=${rvo.attach_path}">${rvo.attach_name}</a>
<c:if test="${rvo.attach_name_yn eq 'y'}">
				<a href="javascript:fn_ajax_deletefile('${rvo.no}')">X</a>
</c:if>
    			
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


