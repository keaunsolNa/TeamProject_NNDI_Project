<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/program.css">
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/post.css">
<jsp:include page="../../common/includepage/UserHeader.jsp"/>
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../../common/includepage/ClassAside.jsp"/>
 <section>
 <form action="${pageContext.servletContext.contextPath}/login/board/ClassApply" method="post">  
      <h3 class="cap"><c:out value="${requestScope.classdto.clsName}"/></h3>
      <table>
        <tr align="center">
          <th>교육대상</th>
          <td><c:out value="${requestScope.classdto.clsRecoAge}"/></td>
      </tr>
      <tr align="center">
        <th>교육기간</th>
        <td> <c:out value="${requestScope.start}"/> ~/~ <c:out value="${requestScope.end}"/></td>
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
      <button id="app" class="btns" type="submit" onclick="location.href='${pageContext.servletContext.contextPath}/login/board/ClassApply'">신청</button>
      </div>
</form>  

    <div class="buton">
      <button id="deletepost" class="btns" onclick="location.href='${pageContext.servletContext.contextPath}/board/ClassphList'">목록으로</button><br><br><br><br>
    </div>
</section>
 
<br clear="both"> 
<jsp:include page="../../common/includepage/UserFooter.jsp"/>
</body>
</html>