<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/post.css">
<jsp:include page="../../common/includepage/UserHeader.jsp"/>
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../../common/includepage/CustomerContactCentersAside.jsp"/>
<section style="float: left;">
  <div>
    <h3 class="notice"><b>FAQ</b></h3>
  </div>
<div class="post list"> 
    <table style="width: 1000px;" class="blueone">
      <thead>
        <tr>
            <th>번호</th>
            <th>관리자 ID</th>           
            <th>제목</th>
            <th>조회수</th>
		 </tr>        
    </thead>
    <tbody>   
    <c:forEach var="faq" items="${ requestScope.faqdto }">
      <tr>
          <td class="qaf"><c:out value="${faq.num}" escapeXml="true"/></td>
          <td class="qaf"><c:out value="${faq.managerId}" escapeXml="true"/></td>
          <td class="qaf"><c:out value="${faq.title}" escapeXml="true"/></td>
          <td class="qaf"><c:out value="${faq.hits}" escapeXml="true"/></td>
      </tr>
      </c:forEach>
    </tbody>
    </table>
    
  </div>
  
</section>
<br clear="both">
<jsp:include page="../../common/includepage/UserFooter.jsp"/>
  <script>
		
		if(document.getElementsByClassName("qaf")) {
			
			const $tds = document.getElementsByClassName("qaf");
			for(let i = 0; i < $tds.length; i++) {
				
				$tds[i].onmouseenter = function() {

					this.parentNode.style.cursor = "pointer";
				}
				
				$tds[i].onclick = function() {
							
					const num = this.parentNode.children[0].innerText;
					location.href="${pageContext.servletContext.contextPath}/login/board/FAQListDetail?num=" + num;
					
				}
				
			}
			
		}
   </script>
</body>
</html>