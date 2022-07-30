<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

body {
    background: #2E95EF;
    background-image: -moz-radial-gradient(center 45deg,circle cover, #9BD1FF, #2E95EF);
    background-image: -webkit-gradient(radial, 50% 50%, 0, 50% 50%,800, from(#9BD1FF), to(#2E95EF));
    padding-top: 15%;
}
.img-error{
width:220px;
height:220px;
}

</style>
</head>
<body>
	<div class="container bootstrap snippets bootdey">
	    <div class="row">
	        <div class="col-md-12">
	            <div class="pull-right" style="margin-top:10px;">
	                <div class="col-md-10 col-md-offset-1 pull-right">
	                    <img class="img-error" src="https://bootdey.com/img/Content/fdfadfadsfadoh.png">
	                    <h2>404 Not Found</h2>
	                    <p>D'OH! 페이지를 찾을 수 없습니다.</p>
	                    <div class="error-actions">
	                        <a href="${ pageContext.servletContext.contextPath }/index.jsp" class="btn btn-primary btn-lg">
	                            <span class="glyphicon glyphicon-arrow-left"></span>
	                            Back Home 
	                        </a>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
</body>
</html>