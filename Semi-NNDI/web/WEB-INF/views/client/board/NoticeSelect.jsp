<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>너나들이 중랑</title>
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/nndi-style.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/selectList.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/post.css">

	<jsp:include page="../../common/includepage/UserHeader.jsp"/>
</head>
<body>
	<aside>
		<jsp:include page="../../common/includepage/CustomerContactCentersAside.jsp"/>
	</aside>

	<section style="float: left">
		<div>
	    	<h3 class="notice"><b><u>공지</u>사항</b></h3>
	  	</div>
	   
	 	<div class="post list"> 
	  		<form>
	    		<table class="blueone"  style="width: 1200px;">
	      			<thead>
	      				<tr>
					        <th>번호</th>
					        <th>제목</th>
					        <th>작성자</th>
					        <th>작성일</th>
					        <th>조회수</th>
	      				</tr>
	    			</thead>
	
		    		<c:forEach var="notice" items="${ requestScope.noticeBoard }">
						<tr>
							<td><c:out value="${ notice.num }"/></td>
							<td><c:out value="${ notice.title}"/></td>
							<td><c:out value="${ notice.managerId}"/></td>
							<td><c:out value="${ notice.postDate}"/></td>
							<td><c:out value="${ notice.hits }"/></td>
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
					location.href="${pageContext.servletContext.contextPath}/board/list/notice/detail?num=" + num;
					
				}
				
			}
			
		}
		
	</script>

	<jsp:include page="../../common/includepage/UserFooter.jsp"/>
	
</html>
