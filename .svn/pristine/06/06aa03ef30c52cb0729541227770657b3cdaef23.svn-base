<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html style="background-color: #F4EEF6">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<head>
<script src="jquery-3.5.1.js"></script>
<script type="text/javaScript" language="javascript" defer="defer">
	function fn_insert(btninsert) {
		document.frm.action = "<c:url value='/chat_insert_act.do'/>";
		document.frm.submit();
	}

</script>
</head>
<style>
.btndetail {
    border: none;
    color: white;
    padding: 10px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    background-color: #e7e7e7;
    color: black;
}
</style>
<body>
	<div>
		<div class="row">
			<div class="col12">
				<div class="protlet-default">
					<div class="protlet-heading">
						<div class="protlet-title">
							<h1></h1>
						</div>
						<div class="clearfix"></div>
					</div>
					<div id="chat" class="panel-collapse">
						<div id="chatlist" class="portlet-body"
							style="overflow-y: auto; width: auto; height: 600px;">

							<c:forEach var="item" items="${list}" varStatus="status">
								<c:if test="${userSession.user_id eq item.user_id}">
									<div
										style="margin-left: 300px; max-width: 300px; background-color: rgba(100, 0, 150, 0.5); margin-bottom: 15px; border-radius: 30px; padding: 10px;">
										<c:out value="${item.ms_message}" />
										<p>
											<c:out value="${item.m_datetime}" />
											에 보냄
										</p>
									</div>
								</c:if>


								<c:if test="${userSession.user_id ne item.user_id}">
									<div
										style="max-width: 300px; margin-bottom: 15px; background-color: rgba(20, 20 ,20, 0.5); border-radius: 30px; padding: 10px;">
										<c:out value="${item.ms_message}" />
										<p>
											<c:out value="${item.m_datetime}" />
											에 보냄
										</p>
									</div>
								</c:if>
							</c:forEach>

						</div>
					</div>
					<form id="chatform" name="chatform" action="chat_insert_act.do">
						<input type="hidden" id="r_id" name="r_id"
							value="${MessengerVO.r_id}"> <input type="hidden"
							id="user_id" name="user_id" value="${userSession.user_id}">
						<input type="hidden" id="ms_id" name="ms_id"
							value="${MessengerVO.ms_id}"> <input type="hidden"
							id="ms_seq" name="ms_seq" value="${MessengerVO.ms_seq}">

						<textarea style="height: 80px; width: 100%;" id="ms_message"
							name="ms_message" placeholder="메세지를 입력하세요" maxlength="100"></textarea>
						<button class="btndetail" style="display: inline-block;" type="submit">전송</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
