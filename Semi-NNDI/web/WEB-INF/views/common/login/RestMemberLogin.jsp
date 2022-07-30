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
         const text = "현재 휴면 회원입니다.\n 계정 복구를 하시려면 '확인'을 누르세요. \n 복구를 원하지 않으시면 '취소'를 누르세요" ;
			window.onload = function(){
				if(confirm(text) == true){
					location.href="${ pageContext.servletContext.contextPath }/RestMemberLogin"
					
				} else {
					location.href="${ pageContext.servletContext.contextPath }/index.jsp"
				}}
	</script>
</body>
</html>