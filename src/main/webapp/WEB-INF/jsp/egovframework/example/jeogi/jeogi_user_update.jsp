<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>게시판</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css">


.w3-sidebar>a {
	color: black;
	display: block;
	margin-bottom: 5%;
}

.w3-sidebar {
	margin-left: 2%;
}

#frm{
    margin-left: 10%;
    margin-right: 10%;
    margin-top: 3%}
</style>
<script type="text/javaScript" language="javascript" defer="defer">
	function fn_update_act() {
		document.frm.action = "<c:url value='/jeogi_user_update_act.do'/>";
		document.frm.submit();
	}
</script>
</head>

<body>
	<form id="frm" name="frm" action="jeogi_user_update_act.do"
		method="post">
		<input type="hidden" name="user_id" value="${userSession.user_id}" />
		<input type="hidden" name="pageIndex" id="pageIndex"
			value="${jeogi_userVO.pageIndex}" />
		<!-- Sidebar -->
		<div style="display: grid;">
				<h1 style="display: inline-block; width: 1200px;font-size: 40px;">안녕하세요, ${rvo.user_name}님의 회원정보입니다.</h1>
					<div class="h1div" ">
			<table border="1">
				<tr>
					<td>● 이메일</td>
					<td><input type="text" name="email" value="${rvo.email}"></td>
				</tr>
				<tr>
					<td>● 비밀번호</td>
					<td><input type="text" name="password" value="${rvo.password}"></td>
				</tr>
				<tr>
					<td>● 성명</td>
					<td><input type="text" name="user_name"
						value="${rvo.user_name}"></td>

				</tr>
				<tr>
					<td>● 생년월일</td>
					<td><input type="text" name="user_birth"
						value="${rvo.user_birth}"></td>
				</tr>
				<tr>
					<td>● 휴대폰번호</td>
					<td><input type="text" name="user_ph" value="${rvo.user_ph}"></td>
				</tr>
				<tr>
					<td>● (호스트일경우) 소개글</td>
					<td><input type="text" name="host_intro"
						value="${rvo.host_intro}"></td>
				</tr>

			</table>
			<header class="major">
				<button class="button alt" type="submit" style="margin-left: 40%">정보수정</button>
			</header>
		</div>
		</div>

	</form>
</body>
</html>