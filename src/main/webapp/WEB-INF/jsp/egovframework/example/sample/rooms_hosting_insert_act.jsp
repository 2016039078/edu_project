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
    	var ccnt = ${ccnt};
    	var jcnt =${jcnt};
    	var ucnt =${ucnt};
    	
    	var result = ${result};
    	
    	
    	var pageIndex = ${conVO.pageIndex};
        function init() {
        	if(ccnt == 1 && jcnt == 1 && result ==0 && ucnt ==1){
        		alert("정상적으로 호스팅에 성공하였습니다.");
        		location.href = "<c:url value='/index.jsp'/>?pageIndex="+pageIndex;
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
