<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<head>
<script src="jquery-3.5.1.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>게시판</title>
    <script type="text/javaScript" language="javascript" defer="defer">
    	var cnt = ${cnt};
    	var r_id = '${r_id}'; //값 어떻게 넘겨주나,,
        function init() {
        	if(cnt == 1){
        		alert("리뷰가 정상적으로 등록되었습니다.");      		
        		location.href = "<c:url value='/rooms_detail_con.do'/>?r_id="+r_id;
        	} else {
        		alert("실행도중 문제가 생겼습니다.");
        		history.back();
        	}
 
        }

        
    </script>
</head>

<body onload="init()">

</body>
</html>
