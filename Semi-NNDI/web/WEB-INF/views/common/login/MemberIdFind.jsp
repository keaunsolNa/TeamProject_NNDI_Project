<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/UserFindAside.css" >
<title>너나들이 중랑</title>

<jsp:include page="../../common/includepage/UserHeader.jsp"/>
</head>
<body>
<aside>
<jsp:include page="../../common/includepage/UserFindAside.jsp"/>
</aside>

<section style="float: left;">
	<div>
		<br><h3> 아이디 찾기</h3><br>
	   		<table>
				<tr>
	   				<td>
						<strong> 아이디 질문으로 찾기</strong> <br><br>
						<img src="${pageContext.servletContext.contextPath}/resources/image/client/Search.png"><br><br>
						<strong>회원 가입 당시 </strong> 설정한 <br>아이디 찾기 질문과 답변으로 <br>간편하게 아이디를 <br> 찾으실 수 있습니다. <br><br>
						<button onclick="location.href='${pageContext.servletContext.contextPath}/Member/IdFind/ByQ'" class="FooterButton">아이디 찾기</button>
		            </td>
	      			</tr>
	   		</table>
	
	</div> 
</section>

</body>
<br clear="both">
<jsp:include page="../../common/includepage/UserFooter.jsp"/>

</html>
