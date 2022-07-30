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
		<div style="border: 2px solid black; padding: 5px; margin-left: 18%; margin-right: 2%; ">
    		<b>센터 운영 및 시설에 대한 건의 및 불편사항을 남겨주시면 최대한 빠른 시간 안에 답변드리겠습니다.</b><br>
    		<b style="color: red;">※ 일반 문의는 접수 후 7일, 관련 법령 해석이 요구되는 문의는 접수 후 14일 이내에 처리됩니다.</b><br>
    		<b>- 비방, 상업성 게시물 등은 삭제될 수 있으며, 타인의 명예훼손, 법령 위반은 처벌받을 수 있습니다.<br></b>
     		<b> - 비공개 게시물의 답변은 비공개 답변으로 게시가 됩니다.</b>
     	</div>

  		<div class="post list"> 
     		<form action="${ pageContext.servletContext.contextPath }/board/complain/list" method="get">
        		<table class="blueone" style="width: 1200px;">
     
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
      
			    	<c:forEach var="board" items="${ requestScope.boardList }">
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
					         	<td class="test2"><c:out value="${ board.category.cateKind }" escapeXml="true"/></td>
					          	<td class="test2"><c:out value="${ board.title }" escapeXml="true"/></td>
					          	<td class="test2"><c:out value="${ board.date }" escapeXml="true"/></td>
					          	<td class="test2"><c:out value="${ board.answer }" escapeXml="true"/></td>
					          	<td class="test2"><c:out value="${ board.hits }" escapeXml="true"/></td>
				        </tr>
					</c:if>    
					
					</c:forEach>
				</table>
				<br>
     		</form>
 	</div>
  
	<div>
	    <button class="r1" onclick="location.href='${pageContext.servletContext.contextPath}/login/board/complain/towrite'">
	    글작성
	    </button>
	</div>
<br><br><br><br>
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

	<jsp:include page="../../common/includepage/UserFooter.jsp"/>
	
</html>
