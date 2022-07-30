<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<title>너나들이 중랑</title>

<jsp:include page="../../common/includepage/UserHeader.jsp"/>
</head>
<body>

<aside>
	<jsp:include page="../../common/includepage/UserFindAside.jsp"/>
</aside>

	<section style="margin-left: 15%; float: left;  width: 80%">

    <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 아이디 찾기</h3>
    <br><br>
    <h5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;정보 입력</h5>

    <br><br><br>
    	<form action="${ pageContext.servletContext.contextPath }/Member/idFind/ByQ/Check" method="post" id="pwdFind" >
        	<p><br>
        	<label for="name">이름 : </label>
        		<input type="text" id="uname" name="userName" size="30" required>   <p>

        	<label for="userIdFindQue">질문 선택: </label>
        		<select name="userIdFindQue">
		            <option value="1">출신 고등학교</option>
		            <option value="2">가장 친한 친구 이름</option>
		            <option value="3">가장 존경하는 인물 이름</option>
		            <option value="4">별명</option>
		            <option value="5">고향</option>
		            <option value="6">좋아하는 책</option>
		        </select> <p>
          
        	<label for="idFindQueAns">질문 답변: </label>
        		<input type="text" id="UQA" name="userQuestionAnswer" size="30" required><p>
        
        	<button type="submit" id="pwdFind">아이디 찾기</button>

    </form>
</section>

</body>
<br clear="both">
<jsp:include page="../../common/includepage/UserFooter.jsp"/>
</html>