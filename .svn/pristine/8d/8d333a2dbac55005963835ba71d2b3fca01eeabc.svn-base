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
        
        function fn_update() {
           	document.frm.action = "<c:url value='/m_user_update.do'/>";
           	document.frm.submit();
        }
        function fn_delete() {
           	document.frm.action = "<c:url value='/m_user_delete_act.do'/>";
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
	<form id="frm" name="frm" action="m_user_select.do" method="post">
        <input type="hidden" name="user_id" value="${pvo.user_id}" />
        <input type="hidden" name="pageIndex" id="pageIndex" value="${pvo.pageIndex}" />
       	<a href="javascript:fn_update();">수정</a>
       	<a href="javascript:fn_delete();">삭제</a>
		
		<table border="1">
			<tr>	
				<td>USER_ID</td>
				<td>${rvo.user_id}</td>
			</tr>
			<tr>	
				<td>JUMIN</td>
				<td>${rvo.jumin}</td>
			</tr>
			<tr>	
				<td>KO_NAME</td>
				<td>${rvo.ko_name}</td>
			</tr>
			<tr>	
				<td>EN_NAME</td>
				<td>${rvo.en_name}</td>
			</tr>
			<tr>	
				<td>PASSWORD</td>
				<td>${rvo.password}</td>
			</tr>
			
			
			
			<tr>	
				<td>BIRTH_YEAR</td>
				<td>${rvo.birth_year}</td>
			</tr>
			<tr>	
				<td>SEX</td>
				<td>${rvo.sex}</td>
			</tr>
			<tr>	
				<td>EMPLOEE_TYPE</td>
				<td>${rvo.emploee_type}</td>
			</tr>
			<tr>	
				<td>ORGCODE</td>
				<td>${rvo.orgcode}</td>
			</tr>
			<tr>	
				<td>SHIFT</td>
				<td>${rvo.shift}</td>
			</tr>
			
			
			
			<tr>	
				<td>DUTY</td>
				<td>${rvo.duty}</td>
			</tr>
			<tr>	
				<td>EMP_GRADE</td>
				<td>${rvo.emp_grade}</td>
			</tr>
			<tr>	
				<td>HTYPE</td>
				<td>${rvo.htype}</td>
			</tr>
			<tr>	
				<td>EMP_TYPE</td>
				<td>${rvo.emp_type}</td>
			</tr>
			<tr>	
				<td>TEL</td>
				<td>${rvo.tel}</td>
			</tr>
			
			
			
			<tr>	
				<td>MOBILE</td>
				<td>${rvo.mobile}</td>
			</tr>
			<tr>	
				<td>EMAIL</td>
				<td>${rvo.email}</td>
			</tr>
			<tr>	
				<td>INDATE</td>
				<td>${rvo.indate}</td>
			</tr>
			<tr>	
				<td>OUTDATE</td>
				<td>${rvo.outdate}</td>
			</tr>
			<tr>	
				<td>INSURE</td>
				<td>${rvo.insure}</td>
			</tr>
			
			
			
			<tr>	
				<td>ZIP_CODE</td>
				<td>${rvo.zip_code}</td>
			</tr>
			<tr>	
				<td>ADDR</td>
				<td>${rvo.addr}</td>
			</tr>
			<tr>	
				<td>MARRY</td>
				<td>${rvo.marry}</td>
			</tr>
			<tr>	
				<td>MARRY_DATE</td>
				<td>${rvo.marry_date}</td>
			</tr>
			<tr>	
				<td>MILITARY</td>
				<td>${rvo.military}</td>
			</tr>
			
			
			
			
			<tr>	
				<td>MILITARY_OUT</td>
				<td>${rvo.military_out}</td>
			</tr>
			<tr>	
				<td>in_date</td>
				<td>${rvo.in_date}</td>
			</tr>
			<tr>	
				<td>in_user_id</td>
				<td>${rvo.in_user_id}</td>
			</tr>
			<tr>	
				<td>up_date</td>
				<td>${rvo.up_date}</td>
			</tr>
			<tr>	
				<td>up_user_id</td>
				<td>${rvo.up_user_id}</td>
			</tr>
			
			
			
												
			
		</table>
    </form>
</body>
</html>
