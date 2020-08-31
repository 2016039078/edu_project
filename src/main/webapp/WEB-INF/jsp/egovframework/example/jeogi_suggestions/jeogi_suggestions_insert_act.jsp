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
    	
        function init() {
        	if(cnt == 1){
        		alert("정상적으로 추가되었습니다.");
        		location.href = "<c:url value='/jeogi_suggestions_select.do'/>?pageIndex="+pageIndex;
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
