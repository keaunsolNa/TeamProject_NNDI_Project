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
<title>Admin EmployTeacher List</title>
</head>
<body>
	<jsp:include page="../../common/includepage/AdminHeader.jsp"/>
	
	<section>
	 
	   <jsp:include page="../../common/includepage/AdminAside.jsp"/>
	  
    
		<div>
		    <div class="post title">
		        <h3 class="top">강사 모집</h3>
		    </div>

		    <div class="post list"> 
		        <table class="t1">
		            <thead>
		              <tr>
		                <th>번호</th>
                		<th>강좌분류</th>
                		<th>제목</th>
                		<th>작성자</th>
                		<th>등록일</th>
                		<th>모집여부</th>
                		<th>상세보기</th>
		              </tr>
		            </thead>
		            <tbody>
		            <c:forEach var="emp" items="${ requestScope.empTeacherList }">
		              <tr>
		                <td>${ emp.num }</td>
		                <td>${ emp.cls.clsCategoryName }</td>
		                <td>${ emp.title }</td>
		                <td>${ emp.managerId }</td>
		                <td>${ emp.postDate }</td>
		                <td>${ emp.empYn }</td>
		                <td>
		                	<button class="btn btn-secondary"
		                			onclick="location.href=
		                			'${ pageContext.servletContext.contextPath }/login/admin/detailEmpUpdate.do?no=${ emp.num }'" >
		                	보기</button>
		                </td>
		              </tr>
		              </c:forEach>
		            </tbody>
		        </table>
		    </div>
		    <div class="btns">
		      <button id="insert" class="btns addbtn">글쓰기</button>
		    </div>
		 </div>
		<script>
			const insert = document.getElementById("insert");
			insert.onclick = function() {
				location.href = "${pageContext.servletContext.contextPath}/login/admin/employTeacherinsert";
			
			};
		</script>
	</section>
	
	<jsp:include page="../../common/includepage/AdminFooter.jsp"/>
</body>
</html>
