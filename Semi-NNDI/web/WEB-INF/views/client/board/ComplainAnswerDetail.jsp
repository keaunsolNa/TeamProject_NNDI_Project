<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>너나들이 중랑</title>
	<jsp:include page="../../common/includepage/UserHeader.jsp"/>
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/nndi-style.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/Policy.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/selectList.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/sidebars.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/UserFind.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/UserFindAside.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/post.css">
</head>
<body>
	<aside>
		<jsp:include page="../../common/includepage/CustomerContactCentersAside.jsp"/>
	</aside>
	
	<section style="float: left">
  		<div class="l3">
    		<b>주민들의 소중한 의견을 적극 반영하는 너나들이, 중랑이 되도록 노력하겠습니다.</b><br>
    		<b> 너나들이, 중랑 문화센터와 관련된 민원사항만을 접수하는 곳입니다.</b><br>
   		 	<b>게시판 작성내용으로 인한 법적문제 발생시 민,형사상 책임은 전적으로 게시자에게 있습니다.</br></b>
    		<b>민원인의 신상정보는 공개하지 않겠습니다.</b><br>
    		<b>궁금하신 사항은 담당자에게 문의 바랍니다.</b><br>
    		<b style="color: red;">욕설, 비방, 선정성, 상업성, 정치적 표현 등 부적절한 표현의 게재글은 비공개 전활 또는 삭제될 수 있습니다.</b>
  		</div>

  		<div class="l1">
    		<div class="d1">
      			<h3>[답변] <c:out value="${ requestScope.complainAnswer.title }" escapeXml="true"/></h3>
      			<p><b>작성일: </b> <c:out value="${ requestScope.complainAnswer.date }" escapeXml="true"/><br>
      			<b>접수번호: </b> <c:out value="${ requestScope.complainAnswer.num }" escapeXml="true"/><br>
      			<b>처리상태: </b><c:out value="${ requestScope.complainAnswer.answer }" escapeXml="true"/><br>
      			<b>글쓴이: </b><c:out value="${ requestScope.complainAnswer.memberId }" escapeXml="true"/></p>
    		</div>
  		</div>  

  		<div class="l1">
    		<div class="d1">
      			<p><c:out value="${ requestScope.complainAnswer.answerContent }" escapeXml="true"/></p>
    		</div>
  		</div>

  		<div>	
    		<button class="r1" onclick="location.href='${pageContext.servletContext.contextPath}/board/list/complain'">목록으로</button>
  		</div>

	</section>
</body>

<br clear="both">

	<jsp:include page="../../common/includepage/UserFooter.jsp"/>
	
</html>
