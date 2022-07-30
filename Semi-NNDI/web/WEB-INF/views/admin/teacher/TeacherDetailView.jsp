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
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/teacherEmp.css" >
    <link href="https://fonts.googleapis.com/css2?family=Single+Day&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <style>
      .btn{
        font-size: 20px !important;
        color: aliceblue !important;
      }
    </style>
<title>Admin Teacher Update List</title>
</head>
<body>
	<jsp:include page="../../common/includepage/AdminHeader.jsp"/>
	
	<section>
	 
	   <jsp:include page="../../common/includepage/AdminAside.jsp"/>
	  
    <div>
	    <div class="post title">
	        <h3 class="top">강사 상세 정보</h3>
	    </div>
    
	    <div class="post add">
	    <table class="tb_02">
	          <tbody>
	            <tr>
	              <th>강사코드</th>
	              <td>${ detailTeacher.no }</td>
	            </tr>  
	            <tr>
	              <th>이름</th>
	              <td>${ detailTeacher.name }</td>
	            </tr>
	            <tr>
	              <th >성별</th>
	              <td>${ detailTeacher.gender }</td>
	            </tr>
	            <tr>
	              <th >생년월일</th>
	              <td>${ detailTeacher.birth }</td>
	            </tr>
	            <tr>
	              <th >연락처</th>
	              <td>${ detailTeacher.phone }</td>
	            </tr>
	            <tr>
	              <th >이메일</th>
	              <td>${ detailTeacher.email }</td>
	            </tr>
	            <tr>
	              <th>주소</th>
	              <td>${ detailTeacher.address }</td>
	            </tr>
	            <tr>
	              <th>계약해지여부</th>
	              <td>${ detailTeacher.contractYn }</td>
	            </tr>
	          </tbody>
	          </table>
	          <form action="classUpdate" method="get">
	    	<button type="button" class="btn btn-secondary btns addbtn" 
	    	onclick="location.href='${ pageContext.servletContext.contextPath }/login/admin/teacherList'">목록으로</button>
	    	<button id="deletepost" class="btn btn-secondary btns addbtn" type="button"
	    			onclick="location.href='${ pageContext.servletContext.contextPath }/login/admin/TeacherUpdate.do?no=${ detailTeacher.no }'">수정하기</button>
	          </form>
	    </div>  
	   
	    </div>
  	</div>
	  
	  
	</section>
	
	<jsp:include page="../../common/includepage/AdminFooter.jsp"/>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>