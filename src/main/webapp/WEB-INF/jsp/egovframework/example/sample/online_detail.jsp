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
   $(function() {
      // Geolocation API에 액세스할 수 있는지를 확인
      if (navigator.geolocation) {
         //위치 정보를 얻기
         navigator.geolocation.getCurrentPosition(function(pos) {
            $('#latitude').html(pos.coords.latitude); // 위도
            $('#longitude').html(pos.coords.longitude); // 경도
         });
      } else {
         alert("이 브라우저에서는 Geolocation이 지원되지 않습니다.");
      }
   });
</script>
</head>
<html>

<style>
* {
   margin: 0;
   padding: 0;
}

.star {
   display: inline-block;
   width: 30px;
   height: 60px;
   cursor: pointer;
}

.star_left {
   background: url(http://gahyun.wooga.kr/main/img/testImg/star.png)
      no-repeat 0 0;
   background-size: 60px;
   margin-right: -3px;
}

.star_right {
   background: url(http://gahyun.wooga.kr/main/img/testImg/star.png)
      no-repeat -30px 0;
   background-size: 60px;
   margin-left: -3px;
}

.star.on {
   background-image:
      url(http://gahyun.wooga.kr/main/img/testImg/star_on.png);
}

.grallery {
   width: 100%;
   height: 100%;
   margin: auto;
   text-align: center;
}

td>img {
   width: 100%;
   height: 300px;
}

.home {
   width: auto;
   height: auto;
}

table {
   width: 90%;
   margin: auto;
   text-align: center;
   /*    border: 1px solid #444444; */
   border-collapse: collapse;
   vertical-align: middle;
}

th, td {
   border: 1px solid #444444;
   vertical-align: middle;
   width: 20%;
}

.tableimg {
   vertical-align: middle;
}

.divbody {
   margin-left: 15%;
   margin-right: 15%;
}

.online-detail {
   text-align: left;
   margin-top: 3%;
}

.one {
   display: inline-block;
   position: relative;
   width: 76%;
   height: 80px;
}

.one-one {
   display: inline-block;
   position: relative;
   table-layout: fixed;
   margin-right: 100px;
}

.two {
   float: right;
   width: 20%;
   position: -webkit-sticky;
   position: sticky;
   top: 0;
}

.two-one {
   border: 2px solid #b4cda8;
   padding: 15px;
   border-radius: 30px;
   text-align: center;
   background-color: #b4cda8;
   margin-bottom: 4px;
   color: white;
}

.btnll {
   display: block;
   background-color: unset;
   border: initial;
}

pre {
   font-size: 20px;
   margin-bottom: 2%;
}

hr {
   color: gray;
   border: 1px;
   border-top: solid 1px #888888;
   margin-bottom: 1.5em;
}

a {
   color: black;
}

#frm2 {
   display: contents;
   margin-right: 1%;
   margin-top: 1%;
}

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

dt {
   margin-bottom: 5px;
}
</style>
<script defer
   src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCMFoUT6tZhqMk9iy6IrCEO39gxChZYucA&callback=initMap&region=kr"></script>
<input type="hidden" name="r_id" />
<div class="divbody">
   <input type="hidden" id="latitude" name="latitude"> <input
      type="hidden" id="longitude" name="longitude">
   <div class="online-detail">
      내 찜목록에 추가하기
      <form action="likelist_insert.do" method=post id="frm2" name="frm2">
         <input type="hidden" id="r_id" name="r_id" value="${rvo.r_id}">
         <input type="hidden" id="user_id" name="user_id"
            value="${userSession.user_id}">
         <button class="btnll" style="display: inline;" type="submit">
            <img src="love.png">
         </button>
      </form>

      좋아요 ${intercnt.r_like}
      <form action="interest_add.do" method=post id="frm2" name="frm2">
         <input type="hidden" id="r_id" name="r_id" value="${rvo.r_id}">
         <button class="btnll" style="display: inline" type="submit">
            <img src="like.png">
         </button>
      </form>
      <table class="grallery">
         <tr>
            <td class="tableimg"><img width="200px"
               src="jet-ski-1125329_1920.jpg"></td>
            <td class="tableimg"><img width="200px"
               src="snowboarder-690779_1920.jpg"></td>
            <td class="tableimg"><img width="200px"
               src="action-1867014_1920.jpg"></td>
            <td class="tableimg"><img width="200px"
               src="sport-2264825_1920.jpg"></td>
            <td class="tableimg"><img width="200px"
               src="girl-1561989_1920.jpg"></td>
         </tr>
      </table>

      <div class="two">
            <form action="rooms_detail_reservation.do" method=post id="frm"
               name="frm">
                  <div class="two-one">
                     <p>날짜 : 20200901</p>
                     <p>가격 : 25,000/1인</p>
                     <input type="hidden" id="r_id" name="r_id" value="${rvo.r_id}">
                     <input type="hidden" id="r_date" name="r_date"
                        value="${reservationlist.r_date}">
                     <button class="btndetail" style="display: inline-block;"
                        type="submit">예약하기</button>
                     <hr>
                  </div>
            </form>

      </div>


      <div class="one">
         <h3 style="display: inline;">김소민님이 호스팅하는 온라인 체험</h3>
      </div>

      <p>최대 인원 10명</p>
      <hr>
      <div>
         <h2>상세정보</h2>
         <dl>
            <dt>언어</dt>
            <dd>한국어, 중국어, 일본어, 영어</dd>
            </dl><p></p><dl>
            <dt>사용가능한 기기</dt>
            <dd>데스크 탑, 노트북, 안드로이드 스마트폰</dd>

         </dl>
      </div>
      <hr>
      <div>
         <h2>온라인 체험소개</h2>
         <pre>
         안녕하세요. 저기어때 운영진 김소민 입니다. 
         본 온라인 체험은 저기어때에서 직접운영하는 프로그램입니다.
         모든 사람들 사는데 운동을 필요로 합니다. 하지만 지금 판데믹 시기에는
         모두가 나가서 운동을 할 수 없죠. 그래서 저의 저기어때가 준비했습니다.
         집에서도 충분히 즐길 수 있는 엑티비티! 운동도 하고, 언젠가 코로나가 사라질
         시대를 기대하며 미리 연습도 하는 시간을 가질 수 있습니다.
         </pre>
      </div>
      <hr>
      
      <div>
         <h2>★ 3.5점 (후기 ${scoreavg.review_count} 1개)</h2>


       
            <hr>
            <form id="f" name="f" action="review_delete_act.do">
               <input type="hidden" id="user_namese" name="user_namese"
                  value="${userSession.user_name}"> <input type="hidden"
                  id="user_name" name="user_name" value="${relist.user_name}">
               <input type="hidden" id="user_id" name="user_id"
                  value="${relist.user_id}"> <input type="hidden" id="r_id"
                  name="r_id" value="${rvo.r_id}">
               <dl>
                  <dt style="font-weight: bold;">이상희</dt>
						<dt>●20200829작성</dt>
						<dt>●온라인 체험 너무 즐거웠습니다. 다음에도 이용할게요.</dt>
						<dt><button class="btndetail" type="submit">삭제</button></dt>
               </dl>
            </form>
         <hr>
         <form id="reviewfrm" name="reviewfrm" action="review_insert_act.do">
            <input type="hidden" id="r_id" name="r_id" value="${rvo.r_id}">
            <input type="hidden" id="user_id" name="user_id"
               value="${userSession.user_id}">
            <div>
               <div class="star-box" style="display: inline-block;">
                  <input id="review_score" name="review_score" type="radio"
                     value="0.5"> <label>0.5점</label> <input id="review_score"
                     name="review_score" type="radio" value="1"> <label>1점</label>
                  <input id="review_score" name="review_score" type="radio"
                     value="1.5"> <label>1.5점</label> <input id="review_score"
                     name="review_score" type="radio" value="2"> <label>2점</label>
                  <input id="review_score" name="review_score" type="radio"
                     value="2.5"> <label>2.5점</label> <input id="review_score"
                     name="review_score" type="radio" value="3"> <label>3점</label>
                  <input id="review_score" name="review_score" type="radio"
                     value="3.5"> <label>3.5점</label> <input id="review_score"
                     name="review_score" type="radio" value="4"> <label>4점</label>
                  <input id="review_score" name="review_score" type="radio"
                     value="4.5"> <label>4.5점</label> <input id="review_score"
                     name="review_score" type="radio" value="5"> <label>5점</label>

               </div>
               <button class="btndetail" style="display: inline-block;">후기
                  등록하기</button>
               <textarea rows="" cols="" id="review_content" name="review_content"></textarea>

            </div>
         </form>
         <hr>
      </div>
   
   



      

   </div>
   <hr>

   <div class="one-one">
      <h2>알아두어야 할 사항</h2>

      <dl style="float: left; width: 50%">
         <h1>주의사항</h1>
         <dt>●수업시간 5분전부터 미리 입장하세요.</dt>
         <dt>●청강 가능 시간은 당일로부터 24시간입니다.</dt>
      </dl>

      <dl style="float: left; width: 30%">
         <h1>환불정책</h1>
         <dt>●체크인 30일 전까지 취소하시면 전액이 환불됩니다.</dt>
      </dl>

   </div>
   <hr>
</div>