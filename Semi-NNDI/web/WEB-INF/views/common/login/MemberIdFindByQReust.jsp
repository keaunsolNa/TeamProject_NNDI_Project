<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<title>너나들이 중랑</title>

<jsp:include page="../../common/includepage/UserHeader.jsp"/>
</head>
<body>
<c:choose>
	<c:when test="${ requestScope.message eq 1 }">
		<c:set var="result">
			아이디를 찾을 수 없습니다. 입력 값을 확인하세요.
		</c:set>
	</c:when>
	<c:when test="${ requestScope.message eq 2}">
		<c:set var='result'>
			고객님의 ID는 ${ requestScope.message2 } 입니다.
		</c:set>
	</c:when>
</c:choose>

	<script>
		window.onload = function(){
			var result = '${ result }'
			alert(result)
			window.location = '${ pageContext.servletContext.contextPath }/index.jsp';
		}
	</script>
	
<aside>
	<jsp:include page="../../common/includepage/UserFindAside.jsp"/>
</aside>

</body>
<br clear="both">
<jsp:include page="../../common/includepage/UserFooter.jsp"/>
</html>