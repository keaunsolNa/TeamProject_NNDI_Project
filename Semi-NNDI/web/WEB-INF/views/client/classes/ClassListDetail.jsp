<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/program.css">
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/post.css">
<jsp:include page="../../common/includepage/UserHeader.jsp"/>
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../../common/includepage/ClassAside.jsp"/>
 <section>
 <form id="upp" action="${pageContext.servletContext.contextPath}/login/board/ClassApply" method="post">
      <h3 class="cap"><c:out value="${requestScope.classdto.clsName}"/></h3>
      <table>
        <tr align="center">
          <th>교육대상</th>
          <td><c:out value="${requestScope.classdto.clsRecoAge}"/></td>
      </tr>
      <tr align="center">
        <th>교육기간</th>
        <td> <c:out value="${requestScope.start}"/> / <c:out value="${requestScope.end}"/></td>
    </tr>
    <tr align="center">
        <th>교육요일</th>
        <td><c:out value="${requestScope.classdto.clsDay}"/></td>
    </tr>
    <tr align="center">
        <th>교육시간</th>
        <td><c:out value="${requestScope.classdto.clsRunTime}"/></td>
    </tr>
    <tr align="center">
      <th>교육장소</th>
      <td><c:out value="${requestScope.classdto.cenName}"/> 호 / <c:out value="${ requestScope.classdto.center.centerKindName }"/></td>
    </tr>
    <tr align="center">
    <th>수강료</th>
    <td><c:out value="${requestScope.classdto.clsCost}"/> (원)</td>
    </tr>
    <tr align="center">
    <th>수강 강사</th>
    <td><c:out value="${requestScope.classdto.teacher.name}"/></td>
    </tr>
    
    </table>
 
	<input name="cencost" type="hidden" value="${requestScope.classdto.clsCost}"/>
	<input name="clsNum" type="hidden" value="${requestScope.classdto.clsNum}"/>
    <div class="buton">
      <button id="app" class="btns" type="button">신청</button>
    </div>
    </form> 
      <button style="width: 130px;" id="deletepost" class="btns" onclick="location.href='${pageContext.servletContext.contextPath}/board/QNAClassList'">목록으로</button><br><br><br><br>
      
	  <script>
	    $("#app").click(function(){
	      let text = "수강 신청 하시겠습니까??\n 신청하시려면 '확인'을 누르세요.";
	      if (confirm(text) == true) {
	        	 document.getElementById("upp").submit(); 
	      } 
	    });

	  </script>
      
</section>
 
<br clear="both"> 
<jsp:include page="../../common/includepage/UserFooter.jsp"/>
</body>
</html>
