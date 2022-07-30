<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>너나들이 중랑</title>
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/post.css">
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/nndi-style.css">
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/Policy.css">
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/selectList.css">
	<jsp:include page="../../../common/includepage/UserHeader.jsp"/>
</head>
<body>

	<jsp:include page="../../../common/includepage/UserMyPageAside.jsp"/>
	
	 <section>
	 	<div>
	    <h3 class="notice"><b><u>대관 신청 취소</u></b></h3>
	  </div>
        
      <div class="post list">
      <table class="blueone">
        <thead>
          <tr align="center" bgcolor="white">
              <th>접수번호</th>
              <th>시설명</th>
              <th>회원ID</th>
              <th>대관 시작일</th>
              <th>대관 종료일</th>
              <th><th>
              
          </tr>
      </thead>
      <c:forEach var="cancel" items="${ requestScope.rentCancelList }">
			<tr>
				<td><c:out value="${ cancel.num }"/></td>
				<td><c:out value="${ cancel.centerManagement.centerKindName }"/></td>
				<td><c:out value="${ cancel.memId}"/></td>
				<td><c:out value="${ cancel.rentStart }"/></td>
				<td><c:out value="${ cancel.rentEnd }"/></td>
				<td><button class="btn btn-secondary"
		                			onclick="location.href=
		                			'${ pageContext.servletContext.contextPath }/login/rent/cancel/update?num=${ cancel.num }'" >
		                	대관 철회</button></td>
			</tr>
			</c:forEach>
      
      </table>
    </section>
	
</body>


	<jsp:include page="../../../common/includepage/UserFooter.jsp"/>
</html>