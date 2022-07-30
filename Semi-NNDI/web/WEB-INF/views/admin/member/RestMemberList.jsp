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
<title>Admin RestMemberList</title>
</head>
<body>
	<jsp:include page="../../common/includepage/AdminHeader.jsp"/>
	
	<section>
	 
	   <jsp:include page="../../common/includepage/AdminAside.jsp"/>
	  
	    <div class="post title">
    		<h3 class="top">휴면 관리</h3>
  		</div>

		  <div class="post list">
		    <table>
		        <thead class="table-lgiht">
		            <tr>
		                <th>회원ID</th>
		                <th>이름</th>
		                <th>가입 시기</th>
		                <th>마지막 로그인 시기</th>
		                <th>휴면회원 해지</th>
		            </tr>
		        </thead>
		        <tbody>
		       <c:forEach var="rest" items="${ requestScope.memberRestList }">
		              <tr>
		                <td>${ rest.id }</td>
		                <td>${ rest.name }</td>
		                <td>${ rest.enrollDate }</td>
		                <td>${ rest.lastLogin }</td>
		                <td>
		                	<button class="btn btn-secondary"id="admit" type="button"
		                	onclick="location.href = '${pageContext.servletContext.contextPath}/login/admin/changeAliveMember.do?id=${ rest.id }'">해지</button>
		                </td>
		              </tr>
		       </c:forEach>
		        </tbody>
		    </table>
		   
		    <hr/>
		    
		</div>
	</section>
	
	<jsp:include page="../../common/includepage/AdminFooter.jsp"/>
</body>
</html>