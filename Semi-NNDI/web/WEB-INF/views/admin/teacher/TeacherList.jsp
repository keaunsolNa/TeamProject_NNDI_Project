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
<title>Admin Teacher List</title>
</head>
<body>
	<jsp:include page="../../common/includepage/AdminHeader.jsp"/>
	
	<section>
	 
	  <jsp:include page="../../common/includepage/AdminAside.jsp"/>
	  
    <div class="post title">
        <h3 class="top">강사 조회</h3>
    </div>

    <div class="post list"> 
        <table class="t1">
            <thead>
              <tr>
                <th>강사코드</th>
                <th>이름</th>
                <th>성별</th>
                <th>연락처</th>
                <th>이메일</th>
                <th>주소</th>
                <th>계약해지여부</th>
                <th>정보관리</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach var="teacher" items="${ requestScope.teacherList }">
		              <tr>
		                <td>${ teacher.no }</td>
		                <td>${ teacher.name }</td>
		                <td>${ teacher.gender }</td>
		                <td>${ teacher.phone }</td>
		                <td>${ teacher.email }</td>
		                <td>${ teacher.address }</td>
		                <td>${ teacher.contractYn }</td>
		                <td>
		                	<button class="btn btn-secondary"
		                			onclick="location.href=
		                			'${ pageContext.servletContext.contextPath }/login/admin/detailTeacher.do?no=${ teacher.no }'" >
		                	보기</button>
		                </td>
		              </tr>
		              </c:forEach>
            </tbody>
        </table>
    </div>
	  
	</section>
	
	<jsp:include page="../../common/includepage/AdminFooter.jsp"/>
</body>
</html>