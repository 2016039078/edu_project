<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>게시판</title>
<script src="jquery-3.5.1.js"></script>
<script type="text/javaScript" language="javascript" defer="defer">
   function fn_detail(r_id) {
      document.frm.r_id.value = r_id;
      document.frm.action = "<c:url value='/rooms_detail_con.do'/>";
      document.frm.submit();
   }
</script>
</head>
<html>

<style>
table {
   width: 100%;
   margin: auto;
   text-align: center;
   border: 1px solid gray;
   border-radius: 10px, 10px, 10px, 10px;
}

th, td {
   border: 1px solid darkgray;
   vertical-align: middle;
   width: 20%;
   padding: 1%;
}

.divbody>h1 {
   font-size: 40px;
   font: normal;
}

.bestrooms {
   margin-top: 5%;
}

hr {
   border-top: solid 1px #888888;
   border: 1;
}

td>a {
   color: black;
}
img{
    max-width: 600px;}
</style>

<form id="frm" name="frm" method="post">
   <input type="hidden" name="r_id" id="r_id" />
   <div class="divbody" style="margin-top: 5%; margin-bottom: 2%">
      <h1>THE MOST POPULAR EXPERIENCE!</h1>
      <table border="1">
         <tr>

            <td class="tableimg"><img
               src="jet-ski-1125329_1920.jpg"></td>
            <td class="tableimg"><img
               src="children-1822701_1920.jpg"></td>
            <td class="tableimg"><img
               src="snowboarder-690779_1920.jpg"></td>

         </tr>
         <tr>

            <td><a href="online_detail.do">온라인으로 배우는 수영</a></td>
               <td><a>온라인으로 배우는 복싱</a></td>
                  <td><a>온라인으로 배우는 보드</a></td>
         </tr>
      </table>
   </div>
   <hr>

   <div class="divbody" style="margin-top: 2%; margin-bottom: 2%">
      <h1>THE BEST RATED EXPERIENCE!</h1>
      <table border="1">
         <tr>
            <td class="tableimg"><img
               src="jet-ski-1125329_1920.jpg"></td>
            <td class="tableimg"><img
               src="action-1867014_1920.jpg"></td>
            <td class="tableimg"><img
               src="running-498257_1920.jpg"></td>
         </tr>
         <tr>
         <td><a href="online_detail.do">온라인으로 배우는 수영</a></td>
               <td><a>온라인으로 배우는 의족 달리기</a></td>
                  <td><a>온라인으로 배우는 스타팅 자세</a></td>
      </table>
   </div>
   <hr>
   <div class="divbody" style="margin-top: 2%; margin-bottom: 2%">
      <h1>THE RECENTLY UPDATED EXPERIENCE!</h1>
      <table border="1">
         <tr>
            <td class="tableimg"><img
               src="sport-2264825_1920.jpg"></td>
            <td class="tableimg"><img
               src="children-1822701_1920.jpg"></td>
            <td class="tableimg"><img
               src="snowboarder-690779_1920.jpg"></td>
         </tr>
         <tr>
            <td><a>온라인으로 배우는 홈트레이닝</a></td>
               <td><a>온라인으로 배우는 복싱</a></td>
                  <td><a>온라인으로 배우는 스노우 보드</a></td>
         </tr>
      </table>
   </div>
   <hr>
</form>