<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/post.css">
<jsp:include page="../../../common/includepage/UserHeader.jsp"/>
<title>Insert title here</title>
</head>
<body>
	<aside>
		<jsp:include page="../../../common/includepage/UserMyPageAside.jsp"/>
	</aside>
<section>
<div>
   <h3 class="notice">${ sessionScope.loginMember.name } 님의 문의글 입니다.</h3>
</div>
<div class="post list"> 
    <table class="blueone">
      <thead>
        <tr>
            <!-- <th>아이디</th> -->           
            <th>날짜</th>
            <th>제목</th>
            <!-- <th>조회수</th> -->
		    </tr>          
    </thead> 
    <tbody>
    <c:forEach var="mypageqna" items="${ requestScope.qnalist }">
      <tr>
          <%-- <td class="test">${mypageqna.memId}</td> --%>
          <td class="test" style="display: none;">${mypageqna.num}</td>
          <td class="test"><c:out value="${mypageqna.postDate}"/></td>
          <td class="test"><c:out value="${mypageqna.title}"/></td>
          <%-- <td class="test">${mypageqna.hits}</td> --%>
      </tr>
       <c:if test="${mypageqna.managerId != null}">
      <tr>
      	  <td>[답변완료]</td>
          <td class="test2" style="display: none;">${mypageqna.num}</td>
          <td class="test2"><c:out value="${mypageqna.managerId}"/></td>
          <%-- <td class="test2">${mypageqna.postDate}</td> --%>
          <%-- <td class="test2">${mypageqna.title}</td> --%>
          <%-- <td class="test2">${mypageqna.hits}</td> --%>
      </tr>
      </c:if> 
      </c:forEach>
    </tbody> 
    </table>
    
    
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
<jsp:include page="../../../common/includepage/UserFooter.jsp"/>
</body>
</html>