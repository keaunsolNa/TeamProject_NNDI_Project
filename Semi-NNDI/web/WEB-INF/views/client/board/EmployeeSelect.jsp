<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>너나들이 중랑</title>
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/nndi-style.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/Policy.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/selectList.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/sidebars.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/UserFind.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/UserFindAside.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/post.css">

	<jsp:include page="../../common/includepage/UserHeader.jsp"/>
</head>
<body>
	<aside>
		<jsp:include page="../../common/includepage/CustomerContactCentersAside.jsp"/>
	</aside>

	<section style="float: left">
		<div>
	    	<h3 class="notice"><b><u>강사 모집</u></b></h3>
	  	</div>
	
	  	<div class="post list"> 
	  		<form>
	    		<table class="blueone" style="width: 1200px;">
	      			<thead>
	      				<tr>
					        <th>번호</th>
					        <th>제목</th>
					        <th>모집 여부</th>
					        <th>모집 인원</th>
	      				</tr>
	   			 	</thead>

		           <c:forEach var="emp" items="${ requestScope.emp}">
						<tr>
							<td><c:out value="${ emp.num }"/></td>
							<td><c:out value="${ emp.title }"/></td>
							<td><c:out value="${ emp.empYn }"/></td>
							<td><c:out value="${ emp.empNumber}"/>명</td>
						</tr>
					</c:forEach>
	  			</table>
	  		</form>
	  </div>
	
	</section>

</body>

<br clear="both">

<script>
		
		if(document.getElementsByTagName("td")) {
			
			const $tds = document.getElementsByTagName("td");
			for(let i = 0; i < $tds.length; i++) {
				
				$tds[i].onmouseenter = function() {

					this.parentNode.style.cursor = "pointer";
				}
				
				$tds[i].onclick = function() {
					
					const num = this.parentNode.children[0].innerText;
					location.href="${pageContext.servletContext.contextPath}/employee/board/list/detail?num=" + num;
					
				}
				
			}
			
		}
		
	</script>

	<jsp:include page="../../common/includepage/UserFooter.jsp"/>
	
</html>
