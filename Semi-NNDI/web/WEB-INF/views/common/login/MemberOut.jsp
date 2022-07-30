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
         const text = "탈퇴시 복구가 불가능합니다..\n 정말 탈퇴하시려면 '확인'을 누르세요. \n 탈퇴를 원하시지 않으시면 '취소'를 누르세요" ;
			window.onload = function(){
				if(confirm(text) == true){
					location.href="${ pageContext.servletContext.contextPath }/OutMember"
				} else {
					location.href="${ pageContext.servletContext.contextPath }/index.jsp"
				}}
	</script>
</body>
</html>