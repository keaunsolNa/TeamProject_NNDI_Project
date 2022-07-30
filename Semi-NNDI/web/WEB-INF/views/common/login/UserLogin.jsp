<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>너나들이 중랑</title>

	<link 
		rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/nndi-style.css">
	<link 
		rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/Userlogin.css">
	<link 
		rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<script 
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script 
		src="http://code.jquery.com/jquery-latest.min.js"></script>

</head>

<body id="UserLoginBody">
<section>
        <c:choose>
        	<c:when test="${ requestScope.loginStatus eq 3 }">
        		<script>
        			alert("로그인에 실패하셨습니다. 아이디/비밀번호를 확인해주세요.")
        		</script>
        	</c:when>
        	<c:when test="${ requestScope.loginStatus eq 4 }">
        		<script>
	        		alert("로그인이 필요합니다. 로그인해주세요.")
        		</script>
        	</c:when>
        </c:choose>

    <button 
    	onclick="location.href='${pageContext.servletContext.contextPath}/Admin/login'" id="FooterButton">
    	관리자 로그인
    </button>
    
    <div id="login">
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                    
                        <form id="login-form" class="form" action="${ pageContext.servletContext.contextPath }/MemberLogin/check"  method="post">
                            <h3 class="text-center text-info" style="font-weight: bold; color: rgba(254, 190, 190, 1) !important;">Member Login</h3>
                            <div class="form-floating">
                                <input type="text" class="form-control" id="floatingInput" name="userId" placeholder="ID">
                                <label for="floatingInput">ID</label>
                            </div>
                            <div class="form-floating">
                            	<input type="password" class="form-control" id="floatingPassword" name="password" placeholder="Password">
                                <label for="floatingPassword">Password</label>
                            </div>
                                <br>
                            <button class="w-100 btn btn-lg btn-primary" type="submit">로그인</button>
                       	 </form> 
                       	 
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div style="margin-top: 10%; text-align: center;">
	    <button onclick="location.href='${pageContext.servletContext.contextPath}/site/Policy'" class="FooterButton" style="color:black;">
	    개인정보방침
	    </button>
	    
	    <button onclick="location.href='${pageContext.servletContext.contextPath}/site/location'" class="FooterButton"  style="color:black;">
	    오시는길
	    </button>
	    
	    <button onclick="location.href='${pageContext.servletContext.contextPath}/Member/idFind'" class="FooterButton"  style="color:black;">
	    아이디 찾기
	    </button>
	    
	    <button onclick="location.href='${pageContext.servletContext.contextPath}/Member/pwdinitialization'" class="FooterButton"  style="color:black;">
	    비밀번호 초기화
	    </button>
	    
	    <button onclick="location.href='${pageContext.servletContext.contextPath}/index.jsp'" class="FooterButton"  style="color:black;">
	    홈으로
	    </button>
	    
	    <c:choose>
        	<c:when test="${ sessionScope.loginStatus ne 1 }">
        		
				<button onclick="location.href='${pageContext.servletContext.contextPath}/Account/first'" class="FooterButton"  style="color:black;">
	    		회원가입
	    		</button>
        	</c:when>
        </c:choose>
        	   
	    
    </div>
    
</section>
</body>
</html>