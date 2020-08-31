<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>회원가입</title>
    <script type="text/javaScript" language="javascript" defer="defer">
        
        function fn_insert_act() {
           	document.frm.action = "<c:url value='/jeogi_user_insert_act.do'/>";
           	document.frm.submit();
        }
        
        function fn_link_page(pageNo){
        	document.frm.pageIndex.value = pageNo;
        	document.frm.action = "<c:url value='/jeogi_user_select.do'/>";
           	document.frm.submit();
        }
        
    </script>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
  padding: 14px 20px;
  background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
  padding: 16px;
}

/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
  .cancelbtn, .signupbtn {
     width: 100%;
  }
}
</style>
</head>

<body>
	<form id="frm" name="frm" action="javascript:fn_insert_act();" method="post">
        <input type="hidden" name="pageIndex" id="pageIndex" value="${jeogi_userVO.pageIndex}" />
<div class="container">
    <h1>회원가입</h1>
    <p>아래의 필드를 모두 채워주세요.</p>
    <hr>

    <label for="email"><b>이메일</b></label>
    <input type="text" placeholder="Enter Email" name="email" required>

    <label for="psw"><b>비밀번호</b></label>
    <input type="password" placeholder="Enter Password" name="password" required>

    <label for="psw-repeat"><b>사용자명</b></label>
    <input type="text" placeholder="Enter user_name" name="user_name" required>
    
        <label for="user_birth"><b>생일</b></label>
    <input type="text" placeholder="Enter ex)19971108" name="user_birth" required>
    
    
    <p>회원가입을 하므로써 약관에 동의하는 것으로 간주합니다. <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>

    <div class="clearfix">
      <button type="button" class="cancelbtn" onClick='self.close()'>Cancel</button>
      <button type="submit" class="signupbtn">Sign Up</button>
    </div>
  </div>

        </form>
</body>
</html>
