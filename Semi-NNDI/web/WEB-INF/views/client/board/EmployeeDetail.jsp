<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>너나들이 중랑</title>
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/nndi-style.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/post.css">
	<jsp:include page="../../common/includepage/UserHeader.jsp"/>
</head>
<body>

	<aside>
		<jsp:include page="../../common/includepage/CustomerContactCentersAside.jsp"/>
	</aside>
	
	
	<section style="float: left">
	  	<div class="l1">
	    	<div class="d1">
	      		<h3><c:out value="${ requestScope.emp.title }" escapeXml="true"/></h3>
	    	</div>
	  	</div>
	
		<c:if test="${rent.rentCost == '0'}">
			<td>미결제</td>
			</c:if>
	  			<div class="l1">
	    			<div class="d1">
		    			<c:if test="${emp.empYn == 'Y'}">
		    				<p>모집 여부 : 모집중</p><br>
		    			</c:if>
		    			
		    			<c:if test="${emp.empYn == 'N'}">
		    				<p>모집 여부 : 모집 마감</p><br>
		    			</c:if>
	      
	      		<p>모집 인원 : <c:out value="${ requestScope.emp.empNumber }" escapeXml="true"/>명</p><br>
	      		<br>
	      		<hr>
	      		<br>
	      		
	      		<b>자격 요건</b><br>
	      		<p><c:out value="${ requestScope.emp.empCondition }" escapeXml="true"/></p><br>
	      		<b>근무 환경</b><br>
	      		<p><c:out value="${ requestScope.emp.environment }" escapeXml="true"/></p><br>
	      		<b>모집 과정</b><br>
	      		<p><c:out value="${ requestScope.emp.empProcess }" escapeXml="true"/></p><br>
	    </div>
  </div>
	
  <div>
  		<button class="r1" onclick="location.href='${pageContext.servletContext.contextPath}/employee/board/list'">목록으로</button>
  </div>
	
</section>
	
	
</body>

<br clear="both">

	<jsp:include page="../../common/includepage/UserFooter.jsp"/>
	
</html>
