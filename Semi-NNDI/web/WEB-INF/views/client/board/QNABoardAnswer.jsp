<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/post.css">
<jsp:include page="../../common/includepage/UserHeader.jsp"/>
<title>Insert title here</title>
</head>
<body>
<aside>
	<jsp:include page="../../common/includepage/CustomerContactCentersAside.jsp"/>
</aside>

<section style="float: left">
	<div class="l1">
    	<div class="d1">
      		<h3><c:out value="${requestScope.qnadto.title}" escapeXml="true"/></h3>
      		<p><b>작성자 ID: <c:out value="${requestScope.qnadto.memId }" escapeXml="true"/></b></p>
      		<p><b>작성일</b>: <c:out value="${requestScope.qnadto.postDate}" escapeXml="true"/><br><b>답변자 ID: </b><c:out value="${requestScope.qnadto.managerId}" escapeXml="true"/></p>
    	</div>
  </div>  
  
  <div class="l1">
    	<div class="d1">
      		<p><c:out value="${requestScope.qnadto.answerContent}</p>" escapeXml="true"/>
    	</div>
  </div>

  <div>
    	<button class="r1" onclick="location.href='${pageContext.servletContext.contextPath}/login/board/QNABoardList'">목록으로</button>
  </div>
  
</section>
<br clear="both">
  <jsp:include page="../../common/includepage/UserFooter.jsp"/>
</body>
</html>