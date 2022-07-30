<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/UserFindAside.css" >
<title>너나들이 중랑</title>

<jsp:include page="../../common/includepage/UserHeader.jsp"/>
</head>
<body>
<aside>
<jsp:include page="../../common/includepage/UserFindAside.jsp"/>
</aside>

<section style="float: left; width: 80%; margin-top: 20px; ">
	    <form id="pwdFind" action="${ pageContext.servletContext.contextPath }/Member/pwdinitialization/input" method="post" >
	        
	        <label for="name">아이디 : </label>
	        	<input type="text" id="userId" name="userId" size="30" required>   <p>
	        
	        <label for="phone" id="input">연락처: </label>
	        	<select name="selectUserPhone" required style="width: auto;">
	                <option value="010">010</option>
	                <option value="016">016</option>
	                <option value="011">011</option>
	                <option value="019">019</option>
	            </select>
	            
	            <input type="tel" name="phone2" size="4" id="phone2" required>
	            <input type="tel" name="phone3" size="4" id="phone3" required><p>
	
	        	<button type="button" id="pwdfinbutton" >비밀번호 초기화</button>
	    </form>
</section>

<script>
	
		
	const pwdfinbutton = document.getElementById("pwdfinbutton");
	
		pwdfinbutton.onclick = function(){
			let text ="비밀번호 초기화시 임의의 난수로 비밀번호가 재생성됩니다. \n 정말 변경하시려면 '확인'을 누르세요.";
				if(confirm(text) ==  true){
					document.getElementById("pwdFind").submit();
			} 
		};
    	
</script>
	


</body>

	
<br clear="both">
<jsp:include page="../../common/includepage/UserFooter.jsp"/>


</html>
