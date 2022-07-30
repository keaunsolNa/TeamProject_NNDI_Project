<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/post.css" >

<title>너나들이 중랑</title>
	<jsp:include page="../../common/includepage/UserHeader.jsp"/>
</head>
<body>

<aside>
	<jsp:include page="../../common/includepage/CenterAside.jsp"/>
</aside>
	
<section style="float: left; margin-left: 10%">
    
	<div  style="background-color: rgba(254, 190, 190, 0.5);">
    	<h3 class="top" style="text-align: center">도서 목록 조회</h3>
	</div>

	<div class="post list">
		<table class="t1">
	    	<thead>
	            <tr>
		        	<th>번호</th>
			        <th>제목</th>
	                <th>작가</th>
	                <th>도서위치</th>
	                <th>ISBN</th>
	                <th>출판사</th>
		        </tr>
	        </thead>
			      
	        <tbody>
	        	<c:forEach var="book" items="${ requestScope.bookList }">
                	<tr>
              			<td><c:out value="${ book.code }"/></td>
               		 	<td><c:out value="${ book.name }"/></td>
               		 	<td><c:out value="${ book.writer }"/></td>
               		 	<td><c:out value="${ book.locationCode }"/></td>
               		 	<td><c:out value="${ book.isbn }"/></td>
                	 	<td><c:out value="${ book.publisher }"/></td>
              		</tr>
              	</c:forEach>
	        </tbody>
	    </table>
	 </div>
			  
</section>
		
<br clear="both">
	<jsp:include page="../../common/includepage/UserFooter.jsp"/>
</body>
</html>