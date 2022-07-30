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
	    <h3 class="notice"><b><u>대관 환불 신청</u></b></h3>
	  </div>
        
      <div class="post list">
      <table class="blueone">
        <thead>
          <tr align="center" bgcolor="white">
              <th>접수번호</th>
              <th>시설명</th>
              <th>회원ID</th>
              <th>환불여부</th>
              <th>결제금액</th>
              <th>대관 시작일</th>
              <th>대관 종료일</th>
              <th><th>
              
          </tr>
      </thead>
      <c:forEach var="refund" items="${ requestScope.rentRefundUpdate }">
			<tr>
				<td><c:out value="${ refund.num }"/></td>
				<td><c:out value="${ refund.centerManagement.centerKindName }"/></td>
				<td><c:out value="${ refund.memId}"/></td>
				<td><c:out value="${ refund.rentRefYn}"/></td>
				<td><c:out value="${ refund.rentCost}"/></td>				
				<td><c:out value="${ refund.rentStart }"/></td>
				<td><c:out value="${ refund.rentEnd }"/></td>
				<td><button class="btn btn-secondary"
		                			onclick="location.href=
		                			'${ pageContext.servletContext.contextPath }/login/rent/refund/update?num=${ refund.num }'" >
		                	환불 신청</button></td>
			</tr>
			</c:forEach>
      
      </table>
    </section>
	
</body>


	<jsp:include page="../../../common/includepage/UserFooter.jsp"/>
</html>