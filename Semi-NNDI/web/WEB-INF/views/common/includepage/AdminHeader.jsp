<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/nndi-style.css">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/sidebars.css" >
	<header>	
		    <img src="${pageContext.servletContext.contextPath}/resources/image/admin/header.png" class="nndi-logo"
		    	  onclick="location.href='${pageContext.servletContext.contextPath}/login/admin/main'">
	</header>
    <div class="topnav">
    	<button class="topnav butns" type="submit" onclick="location.href='${ pageContext.servletContext.contextPath }/login/admin/main'">홈으로</button>
    	<button class="topnav butns" onclick="location.href='${ pageContext.servletContext.contextPath }/login/MemberLoguut'">로그아웃</button>
    </div>

</body>
</html>