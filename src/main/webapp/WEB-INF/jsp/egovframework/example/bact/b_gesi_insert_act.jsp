<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<script src="jquery-3.5.1.js"></script>
<script type="text/javaScript" language="javascript" defer="defer">
	var cnt = ${cnt};
	var pageIndex = ${pvo.pageIndex};
    function init() {
    	if(cnt == 1){
    		alert("정상적으로 추가하였습니다.");
    		location.href = "<c:url value='/b_gesi_select.do'/>?pageIndex="+pageIndex;
    	} else {
    		alert("실행도중 문제가 생겼습니다.");
    		history.back();
    	}

    }
    $(document).ready(function(){
    	init();
    });    

    
</script>

