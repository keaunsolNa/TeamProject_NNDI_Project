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
	    <h3 class="notice"><b><u>대관 신청내역 조회</u></b></h3>
	  </div>
        
      <div class="post list">
      <table class="blueone">
        <thead>
          <tr align="center" bgcolor="white">
              <th>접수번호</th>
              <th>시설명</th>
              <th>회원ID</th>
              <th>승인 여부</th>
              <th>결제 여부</th>
              <th>환불 여부</th>
              <th>대관 시작일</th>
              <th>대관 종료일</th>
              <th>결제 금액</th>
              
          </tr>
      </thead>
      <c:forEach var="rent" items="${ requestScope.myPageRentList }">
			<tr>
				<td><c:out value="${ rent.num }"/></td>
				<td><c:out value="${ rent.centerManagement.centerKindName }"/></td>
				<td><c:out value="${ rent.memId}"/></td>
				<td><c:out value="${ rent.rentReqYn}"/></td>
				<td><c:out value="${ rent.rentPayYn }"/></td>
				<td><c:out value="${ rent.rentRefYn }"/></td>
				<td><c:out value="${ rent.rentStart }"/></td>
				<td><c:out value="${ rent.rentEnd }"/></td>
				<c:if test="${rent.rentCost != '0'}">
					<td><c:out value="${ rent.rentCost }"/>원</td>
				</c:if>
				<c:if test="${rent.rentCost == '0'}">
					<td>미결제</td>
				</c:if>
			</tr>
			</c:forEach>
      
      </table>
    </section>
	
</body>


	<jsp:include page="../../../common/includepage/UserFooter.jsp"/>
</html>