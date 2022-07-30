<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/post.css">

	<jsp:include page="../../common/includepage/UserHeader.jsp"/>

<title>너나들이 중랑</title>

</head>
<body>
	<aside>
		<jsp:include page="../../common/includepage/CustomerContactCentersAside.jsp"/>
	</aside>

<section style="float: left;">
	<div style="border: 2px solid black; padding: 5px; margin-left: 20%; margin-right: 2%; margin-top: 2%; width: 1000px">
	<h3>문의 게시판</h3>
    	<b>너나들이, 중랑은 회원님들의 궁금증을 해결하기 위해 문의 게시판을 운영하고 있습니다.</b><br>
    	<b>센터 운영 및 시설에 대한 건의 및 불편사항을 남겨주시면 최대한 빠른 시간 안에 답변드리겠습니다.</b></br>
    	<b style="color: red;">※ 일반 문의는 접수 후 7일, 관련 법령 해석이 요구되는 문의는 접수 후 14일 이내에 처리됩니다.</b><br>
    	<b>- 비방, 상업성 게시물 등은 삭제될 수 있으며, 타인의 명예훼손, 법령 위반은 처벌받을 수 있습니다.</br></b>
    	<b> - 비공개 게시물의 답변은 비공개 답변으로 게시가 됩니다.</b>
	</div>	
  
  	<div class="post list"> 
    	<table class="blueone" style="width: 1200px;">
     		<thead>
        		<tr>
		            <th>번호</th>
		            <th>아이디</th>           
		            <th>날짜</th>
		            <th>제목</th>
			    </tr>        
    		</thead>
    		
    		<tbody>

    			<c:forEach var="qna" items="${ requestScope.qnalist }">
      				<tr>
			          <td class="test"> <c:out value="${qna.num}" escapeXml="true"/></td>
			          <td class="test"> <c:out value="${qna.memId}" escapeXml="true"/></td>
			          <td class="test"> <c:out value="${qna.postDate}" escapeXml="true"/></td>
			          <td class="test"> <c:out value="${qna.title}" escapeXml="true"/></td>
		          	</tr>
		       <c:if test="${qna.managerId != null}">

			      <tr>
			      	  <td>[답변]</td>
			          <td class="test2" style="display: none;">${qna.num}</td>
			          <td class="test2"><c:out value="${qna.managerId}" escapeXml="true"/></td>
			          <td class="test2"><c:out value="${qna.postDate}" escapeXml="true"/></td>
			          <td class="test2"><c:out value="${qna.title}" escapeXml="true"/></td>
			      </tr>
		       </c:if> 
    			</c:forEach>
    </tbody>
    </table>
    
    
  </div>
  	<button class="r1" onclick="location.href='${pageContext.servletContext.contextPath}/login/board/QNAWritepage'">문의글작성</button>
  <br><br>
	
  </section>
  
  <br clear="both">
  <br><br><br><br>
  <jsp:include page="../../common/includepage/UserFooter.jsp"/>
  
  <script>
		
		if(document.getElementsByClassName("test")) {
			
			const $tds = document.getElementsByClassName("test");
			for(let i = 0; i < $tds.length; i++) {
				
				$tds[i].onmouseenter = function() {

					this.parentNode.style.cursor = "pointer";
				}
				
				$tds[i].onclick = function() {
							
					const num = this.parentNode.children[0].innerText;
					location.href="${pageContext.servletContext.contextPath}/login/board/QNABoardListDetail?num=" + num;
					
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
							
					const num = this.parentNode.children[1].innerText;
					location.href="${pageContext.servletContext.contextPath}/login/board/QNABoardAnswerList?num=" + num;
					
				}
				
			}
			
		}
		
	</script>

</body>
</html>























