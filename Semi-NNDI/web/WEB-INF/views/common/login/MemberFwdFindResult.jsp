<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
	 const text = "'${ requestScope.message }' '확인'" ;
			window.onload = function(){
				if(confirm(text) == true){
					location.href="${ pageContext.servletContext.contextPath }/RestMemberLogin"
				} else {
					location.href="${ pageContext.servletContext.contextPath }/index.jsp"
				}
	</script>
		<h1 align="center">${ requestScope.message }</h1>
</body>
</html>