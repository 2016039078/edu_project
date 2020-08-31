<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>개인정보 수정</title>
<script type="text/javaScript" language="javascript" defer="defer">
	function fn_update(r_id) {
		document.frm.r_id.value = r_id;
		document.frm.action = "<c:url value='/rooms_hosting_update.do'/>";
		document.frm.submit();
	}
	function fn_delete(r_id) {
		document.frm.r_id.value = r_id;
		document.frm.action = "<c:url value='/rooms_hosting_delete_act.do'/>";
		document.frm.submit();
	}
</script>
<style>
#customers {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#customers td, #customers th {
	border: 1px solid #ddd;
	padding: 20px;
}

#customers tr:nth-child(even) {
	background-color: #f2f2f2;
}

#customers tr:hover {
	background-color: #ddd;
}

#customers th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	background-color: #B17DED;
	color: white;
}

#customers a {
	color: black;
}

#frm {
	margin-left: 10%;
	margin-right: 10%;
	margin-top: 3%
}

.dropdown3 {
	position: relative;
	display: inline-block;
}

.dropdown-content3 {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 650px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	padding: 12px 16px;
	z-index: 1;
}
p{
font-size: 20px;}

.dropdown3:hover .dropdown-content3 {
	display: block;
}
</style>
</head>
<form id="frm" name="frm" action="jeogi_hosting_select.do" method="post">
	<input type="hidden" id="r_id" name="r_id">
	<h4 style="font-size: 40px">자주묻는 질문 FAQ</h4>
	<table id="customers">
		<tr>
			<th>제목</th>
		</tr>
		<tr>
			<td>
				<div class="dropdown3">
					<span>Q. 코로나19로 인해 숙소예약을 취소해야할것 같습니다. 어떻게 해야할까요?</span>
					<div class="dropdown-content3">
						<p>A : 앞으로 코로나 사태가 더욱 심각해 질 것으로 예상되오며, 우리 저기어때는 호스트를 보호하기 위하여
						코로나 관련 이슈로 일방적인 취소의 경우에는 환불금액을 총 금액의 60%민 환불 드림을 공지합니다. 하지만 우리 저기어때는 게스트의 입장 또한 고려하여, 취소 기한을 늘려 3일에서 7일로 연장하기로 정했습니다.
						저희는 코로나를 극복하기 위해 열심히 노력할 것이며 이용자분들의 많은 양해부탁드립니다.</p>
					</div>
				</div>
			</td>
		</tr>
		<tr>
			<td>
				<div class="dropdown3">
					<span>Q. 호스트가 연락이 되지 않습니다. 어떻게 해야할까요?</span>
					<div class="dropdown-content3">
						<p>앞으로 코로나 사태가 더움 심각해 질 것으로 예상되오며, 우리 저기어때는 호스트를 보호하기 위하여
						코로나 관련 이슈로 일방적인 취소의 경우에는 환불금액을 총 금액의 60%민 환불 드림을 공지합니다. 하지만 우리 저기어때는 게스트의 입장 또한 고려하여, 취소 기한을 늘려 3일에서 7일로 연장하기로 정했습니다.
						저희는 코로나를 극복하기 위해 열심히 노력할 것이며 이용자분들의 많은 양해부탁드립니다.</p>
					</div>
				</div>
			</td>
		</tr>
		<tr>
			<td>
				<div class="dropdown3">
					<span>Q. 게스트가 환불이 불가한데 환불을 요구합니다.</span>
					<div class="dropdown-content3">
						<p>앞으로 코로나 사태가 더움 심각해 질 것으로 예상되오며, 우리 저기어때는 호스트를 보호하기 위하여
						코로나 관련 이슈로 일방적인 취소의 경우에는 환불금액을 총 금액의 60%민 환불 드림을 공지합니다. 하지만 우리 저기어때는 게스트의 입장 또한 고려하여, 취소 기한을 늘려 3일에서 7일로 연장하기로 정했습니다.
						저희는 코로나를 극복하기 위해 열심히 노력할 것이며 이용자분들의 많은 양해부탁드립니다.</p>
					</div>
				</div>
			</td>
		</tr>
		<tr>
			<td>
				<div class="dropdown3">
					<span>Q. 숙소의 위치가 부정확합니다. 어떻게 해야할까요?</span>
					<div class="dropdown-content3">
						<p>앞으로 코로나 사태가 더움 심각해 질 것으로 예상되오며, 우리 저기어때는 호스트를 보호하기 위하여
						코로나 관련 이슈로 일방적인 취소의 경우에는 환불금액을 총 금액의 60%민 환불 드림을 공지합니다. 하지만 우리 저기어때는 게스트의 입장 또한 고려하여, 취소 기한을 늘려 3일에서 7일로 연장하기로 정했습니다.
						저희는 코로나를 극복하기 위해 열심히 노력할 것이며 이용자분들의 많은 양해부탁드립니다.</p>
					</div>
				</div>
			</td>
		</tr>
		<tr>
			<td>
				<div class="dropdown3">
					<span>Q. 결제진행이 되지않습니다.</span>
					<div class="dropdown-content3">
						<p>앞으로 코로나 사태가 더움 심각해 질 것으로 예상되오며, 우리 저기어때는 호스트를 보호하기 위하여
						코로나 관련 이슈로 일방적인 취소의 경우에는 환불금액을 총 금액의 60%민 환불 드림을 공지합니다. 하지만 우리 저기어때는 게스트의 입장 또한 고려하여, 취소 기한을 늘려 3일에서 7일로 연장하기로 정했습니다.
						저희는 코로나를 극복하기 위해 열심히 노력할 것이며 이용자분들의 많은 양해부탁드립니다.</p>
					</div>
				</div>
			</td>
		</tr>
		<tr>
			<td>
				<div class="dropdown3">
					<span>Q. 예약확인이 진행되지 않습니다.</span>
					<div class="dropdown-content3">
						<p>앞으로 코로나 사태가 더움 심각해 질 것으로 예상되오며, 우리 저기어때는 호스트를 보호하기 위하여
						코로나 관련 이슈로 일방적인 취소의 경우에는 환불금액을 총 금액의 60%민 환불 드림을 공지합니다. 하지만 우리 저기어때는 게스트의 입장 또한 고려하여, 취소 기한을 늘려 3일에서 7일로 연장하기로 정했습니다.
						저희는 코로나를 극복하기 위해 열심히 노력할 것이며 이용자분들의 많은 양해부탁드립니다.</p>
					</div>
				</div>
			</td>
		</tr>
		<tr>
			<td>
				<div class="dropdown3">
					<span>Q. 로그인과 로그아웃이 되지 않습니다. 어떻게 해야할까요?</span>
					<div class="dropdown-content3">
						<p>앞으로 코로나 사태가 더움 심각해 질 것으로 예상되오며, 우리 저기어때는 호스트를 보호하기 위하여
						코로나 관련 이슈로 일방적인 취소의 경우에는 환불금액을 총 금액의 60%민 환불 드림을 공지합니다. 하지만 우리 저기어때는 게스트의 입장 또한 고려하여, 취소 기한을 늘려 3일에서 7일로 연장하기로 정했습니다.
						저희는 코로나를 극복하기 위해 열심히 노력할 것이며 이용자분들의 많은 양해부탁드립니다.</p>
					</div>
				</div>
			</td>
		</tr>
		
	
	</table>
</form>

