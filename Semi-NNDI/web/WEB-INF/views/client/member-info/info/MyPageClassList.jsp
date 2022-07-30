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
<br><br><br><br>

   <h3 class="notice">${ sessionScope.loginMember.name } 님의 수강내역입니다.</h3>
</div>


<div class="post list"> 
    <table class="blueone">
      <thead>
        <tr>
            <th>수강 과목</th>
            <th>개강일</th>
            <th>  <th>
		    </tr>        
    </thead>
    <tbody>
    <c:forEach var="mypagecls" items="${ requestScope.clsandpaymentdto }" varStatus="status">
      <tr>
          <td class="test" style="display: none;">${mypagecls.clsNum}</td>
          <td class="test"><c:out value="${mypagecls.clsName}"/></td>
          <td class="test"><c:out value="${requestScope.time[status.index].start}"/></td>
          <td>
          	<button class="r1" onclick="location.href = '${pageContext.servletContext.contextPath}/login/board/Classcancel?clsNum=${mypagecls.clsNum}'">수강취소
          	</button>
          </td>
      </tr>
       
      </c:forEach>
    </tbody> 
    </table>
    
    
  </div>
</section>

<jsp:include page="../../../common/includepage/UserFooter.jsp"/>
</body>
</html>