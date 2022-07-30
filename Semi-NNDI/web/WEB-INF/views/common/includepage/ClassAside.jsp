<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
	
	<style>
      .btn{
        font-size: 20px !important;
        color: aliceblue !important;
      }
    </style>

    <title>너나들이중랑</title>
</head>
<body>

<aside>
	<nav style="height: 100%">
	
		<div style="width: 280px;">
			<a href="${pageContext.servletContext.contextPath}/login/board/paging" 
				class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none">
 				<svg class="bi pe-none me-2" width="30" height="24"></svg>
  				<span class="fs-5 fw-semibold" style="color:rgb(255, 255, 255)">강좌 안내</span>
  			</a>
		</div>
		
		<button class="btn btn-c btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" 
			data-bs-toggle="collapse" data-bs-target="#orders1-collapse" aria-expanded="false" 
			onclick="location.href='${pageContext.servletContext.contextPath}/login/board/paging'">전체 강좌 조회
		</button>
		<br>

		<button class="btn btn-c btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" 
			data-bs-toggle="collapse" data-bs-target="#orders1-collapse" aria-expanded="false"
		 	onclick="location.href='${pageContext.servletContext.contextPath}/board/CultureLand'">문화
		</button>

		<br>
		
		<button class="btn btn-c btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" 
			data-bs-toggle="collapse" data-bs-target="#orders1-collapse" aria-expanded="false" 
			onclick="location.href='${pageContext.servletContext.contextPath}/board/ClassphList'">체육
		</button>
		
	</nav>
	
</aside>

</body>
</html>