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

	<aside>
		<jsp:include page="../../../common/includepage/UserMyPageAside.jsp"/>
	</aside>
	
	<section style="float: left;">
		<div>
	    	<h3 class="notice"><b><u> ${ sessionScope.loginMember.name }님 민원 신청 조회</u></b></h3>
	  	</div>
	  	
	  	<div class="post list"> 
      		<form>
        		<table class="blueone">
      				<thead>
        				<tr>
			          		<th>번호</th>
			          		<th>카테고리</th>
			          		<th>제목</th>
			        	  	<th>작성일</th>
			          		<th>처리상태</th>
			        		<th>조회수</th>
        				</tr>
    				</thead>
    
    				<c:forEach var="board" items="${ requestScope.myComplain }">
						<tr>
							<td class="test"><c:out value="${ board.num }"/></td>
							<td class="test"><c:out value="${ board.category.cateKind }"/></td>
							<td class="test"><c:out value="${ board.title}"/></td>
							<td class="test"><c:out value="${ board.date}"/></td>
							<td class="test"><c:out value="${ board.answer }"/></td>
							<td class="test"><c:out value="${ board.hits }"/></td>
						</tr>
			
						<c:if test="${board.answerContent != null}">
					    	<tr>
		      	  				<td>[답변]</td>
						        <td class="test2" style="display: none;">${board.num}</td>
					        	<td class="test2"><c:out value="${ board.category.cateKind }"/></td>
						        <td class="test2"><c:out value="${ board.title }"/></td>
						        <td class="test2"><c:out value="${ board.date }"/></td>
						        <td class="test2"><c:out value="${ board.answer }"/></td>
						        <td class="test2"><c:out value="${ board.hits }"/></td>
		          			</tr>
						</c:if>    
					</c:forEach>
      
    		</table>
    	</form>
  </div>
        
     
 </section>
    <script>
		
		if(document.getElementsByClassName("test")) {
			
			const $tds = document.getElementsByClassName("test");
			for(let i = 0; i < $tds.length; i++) {
				
				$tds[i].onmouseenter = function() {

					this.parentNode.style.cursor = "pointer";
				}
				
				$tds[i].onclick = function() {

					
					const num = this.parentNode.children[0].innerText;
					location.href="${pageContext.servletContext.contextPath}/login/board/complain/detail?num=" + num;
					
				}
				
			}
			
		}
		
			if(document.getElementsByClassName("test2")) {
			
			const $tds = document.getElementsByClassName("test2");
			for(let i = 0; i < $tds.length; i++) {
				
				$tds[i].onmouseenter = function() {

					this.parentNode.style.cursor = "pointer";
				}
				
				$tds[i].onclick = function() {
					
							
					const num2 = this.parentNode.children[1].innerText;
					location.href="${pageContext.servletContext.contextPath}/login/answer/complain/detail?num=" + num2;
					
					
				}
				
			}
			
		}
		
	</script>
	
</body>

<br clear="both">

	<jsp:include page="../../../common/includepage/UserFooter.jsp"/>
</html>