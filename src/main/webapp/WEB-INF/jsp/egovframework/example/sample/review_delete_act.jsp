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
    	var cnt = ${cnt};
    	var r_id = '${r_id}';
        function init() {
        	if(cnt>0){
        		alert("리뷰가 정상적으로 삭제되었습니다.");
        		location.href = "<c:url value='/rooms_detail_con.do'/>?r_id="+r_id;
        	} else {
        		alert("다른사람의 리뷰는 삭제할 수 없습니다.");
        		location.href = "<c:url value='/rooms_detail_con.do'/>?r_id="+r_id;
        	}
 
        }

        
    </script>
</head>

<body onload="init()">

</body>
</html>
