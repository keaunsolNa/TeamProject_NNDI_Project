<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <style>
      .btn{
        font-size: 20px !important;
        color: aliceblue !important;
      }
      .body {
            margin: 0;
            padding: 0;
            background-color: #633dfb;
            
            height: 800px;
            }
            #login .container #login-row #login-column #login-box {
            margin-top: 120px;
            max-width: 600px;
            height: 320px;
            border: 1px solid #9C9C9C;
            background-color: #EAEAEA;
            }
            #login .container #login-row #login-column #login-box #login-form {
            padding: 20px;
            }
            #login .container #login-row #login-column #login-box #login-form #register-link {
            margin-top: -85px;
            }
    </style>
<title>NNDI Admin Login</title>
</head>
<body>

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

   <jsp:include page="../../common/includepage/AdminHeader.jsp"/>
   
   <div id="login" class="body">
            
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                        <form id="login-form" class="form" action="${ pageContext.servletContext.contextPath }/AdminLogin/check" method="post">
                            
                            <div class="form-floating">
                                <input type="text" class="form-control" id="floatingInput" name="managerId" placeholder="ID" required>
                                <label for="floatingInput">ID</label>
                              </div>
                              <div class="form-floating">
                                <input type="password" class="form-control" id="floatingPassword" name="password" placeholder="Password" required>
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
   
</body>
<footer style="float: left; background-color: white; width: 100%" class="footer">
		<img src="${pageContext.servletContext.contextPath}/resources/image/admin/footer.png" class="nndi-foot">
</footer>
</html>