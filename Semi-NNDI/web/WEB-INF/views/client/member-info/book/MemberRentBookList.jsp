<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/sidebars.css" >
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/rentBookList.css" >
<title>Insert title here</title>
	<jsp:include page="../../../common/includepage/UserHeader.jsp"/>
</head>
<body>
	<aside>
		<jsp:include page="../../../common/includepage/UserMyPageAside.jsp"/>
	</aside>
	
    <section>
        <br><br>
        <h3 style="margin-left: 50%;">대출 도서 조회</h3>
        <br><br>
        
        <table class="rentBookList">
         	<thead>
	            <tr align="center" bgcolor="white">
                	<th>도서명</th>
                	<th>작가명</th>
                	<th>대여가능여부</th>
                	<th>반납예정일</th>
            	</tr>
        	</thead>
        
       		<tbody>
        		<c:forEach var="BookRentList" items="${ requestScope.bookRentList }">
		    		<tr class="rentBookList">
		        		<td>${ BookRentList.book.name }</td>
		            	<td>${ BookRentList.book.writer }</td>
		            	<td>${ BookRentList.rentYn }</td>
		            	<td>${ BookRentList.rentDate }</td>
		        	</tr>
		    	</c:forEach> 
        	</tbody>
		</table>
		
	</section>
</body>
<jsp:include page="../../../common/includepage/UserFooter.jsp"/>
</html>