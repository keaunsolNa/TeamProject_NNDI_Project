<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/nndi-style.css">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/sidebars.css" >
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/post.css" >
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/youchanEdit.css" >
    <link href="https://fonts.googleapis.com/css2?family=Single+Day&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <style>
      .btn{
        font-size: 20px !important;
        color: aliceblue !important;
      }
    </style>
<title>Admin Book List</title>
</head>
<body>
	<jsp:include page="../../common/includepage/AdminHeader.jsp"/>
	
	<section>
	 
	  <jsp:include page="../../common/includepage/AdminAside.jsp"/>
	  
    
		<div>
		    <div class="post title">
    			<h3 class="top">도서 목록 조회</h3>
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
			                <th>조회 설정</th>
			            </tr>
			        </thead>
			        <tbody>
			           <c:forEach var="book" items="${ requestScope.bookList }">
		              		<tr>
		               			<td>${ book.code }</td>
		               			<td>${ book.name }</td>
		               		 	<td>${ book.writer }</td>
		               		 	<td>${ book.locationCode }</td>
		               		 	<td>${ book.isbn }</td>
		                	 	<td>${ book.publisher }</td>
		                	 	<td>
		                			<button class="btn btn-secondary" 
		                					onclick="location.href=
	                						'${ pageContext.servletContext.contextPath }/login/admin/deleteBook.do?code=${ book.code }'">설정</button>
		                		</td>
		              		</tr>
		              </c:forEach>
			        </tbody>
			    </table>
			 </div>
		</div>
	</section>
		
	<jsp:include page="../../common/includepage/AdminFooter.jsp"/>
</body>
</html>
