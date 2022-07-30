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
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/selectList.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/post.css">
</head>
<body>

	<aside>
		<jsp:include page="../../common/includepage/CustomerContactCentersAside.jsp"/>
	</aside>

	<section style="float: left; width: 1500px;">
    	<div style="border: 2px solid black; padding: 5px; margin-left: 18%; margin-right: 2%; ">
    		<b>칭찬하기 게시판은 행정서비스 및 프로그램 진행에 있어 이웃주민과 민원인들에게 감동을 준 너나들이, 중랑의 직원 및 부서를 칭찬하는 게시판 입니다.</b><br>
    		<b style="color: red;">※ 게시판 작성내용으로 인한 법적 문제 발생 시 민·형사상 책임은 전적으로 게시자에게 있음을 알립니다.</b><br>
    		<b>- 개인정보 보호를 위해 게시내용에 개인정보를 입력하는 행위를 삼가하여 주시기 바랍니다.</br></b>
    	</div>
  		<div class="l1">
    		<div class="d1">
    			<h3><c:out value="${ requestScope.commendDetail.title }" escapeXml="true"/></h3>
      			<p><b>작성일</b>: <c:out value="${ requestScope.commendDetail.postDate }" escapeXml="true"/><br>
      			<b>글쓴이: </b><c:out value="${ requestScope.commendDetail.memId }" escapeXml="true"/></p>
      			<b>조회수: </b><c:out value="${ requestScope.commendDetail.hits }" escapeXml="true"/></p>
    		</div>
  		</div>  

  		<div class="l1">
    		<div class="d1">
      			<p><c:out value="${ requestScope.commendDetail.content }" escapeXml="true"/></p>
    		</div>
  		</div>

  		<div>
    		<button class="r1" onclick="location.href='${pageContext.servletContext.contextPath}/board/commend/delete?num=${ requestScope.commendDetail.num }'">삭제하기</button>
  			<button class="r1" onclick="location.href='${pageContext.servletContext.contextPath}/login/board/commend/update?num=${ requestScope.commendDetail.num }'">수정하기</button>
    		<button class="r1" onclick="location.href='${pageContext.servletContext.contextPath}/board/list/commend'">목록으로</button>
  		</div>
  </section>
</body>

<br clear="both">

	<jsp:include page="../../common/includepage/UserFooter.jsp"/>
	
</html>
