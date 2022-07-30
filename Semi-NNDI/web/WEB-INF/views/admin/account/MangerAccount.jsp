<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="${ pageContext.servletContext.contextPath }/Account/Managerinput" method="post">
		<label for="uid" id="inputid">아이디:</label>   
            <input type="text" id="mid" name="managerId" size="30"required>
    	
    	<br>
    	
    	<label for="upwd" id="inputpwd">비밀번호: </label>  
            <input type="password" name="password" id="password" size="30" required>
           
        <br>
	    
	    <label>이름</label>
            <input type="text" name="managerName" id="managerName"  required>
            <button type="submit">가입하기</button>

	</form>

</body>
</html>