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
      		<a href="${pageContext.servletContext.contextPath}/board/list/notice"
      			class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none">
        		<svg class="bi pe-none me-2" width="30" height="24"></svg>
        		<span class="fs-5 fw-semibold" 
        		style="color:rgb(255, 255, 255);">
        		고객 지원 센터
        		</span>
        	</a>
      	</div>
      
      	<button class="btn btn-c btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" 
      		data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="false">
      		고객지원센터
      	</button>
      	<div class="collapse" id="home-collapse">
        	<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
        		
        		<br>
          		<li><button onclick="location.href='${pageContext.servletContext.contextPath}/board/list/notice'" style="color: black">
          		공지 사항</button></li>
          		
          		<br>
          		<li><button onclick="location.href='${pageContext.servletContext.contextPath}/login/board/FAQList'" style="color: black">
          		자주 묻는 질문</button></li>
          		
          		<br>
         		<li><button onclick="location.href='${pageContext.servletContext.contextPath}/board/list/complain'" style="color: black">
         		민원 신청</button></li>
         		
         		<br>
         		<li><button onclick="location.href='${pageContext.servletContext.contextPath}/board/QNABoardList'" style="color: black">
         		문의 하기</button></li>
         		
         		<br>
         		<li><button onclick="location.href='${pageContext.servletContext.contextPath}/board/list/commend'" style="color: black">
         		칭찬 하기</button></li>
         		
         		<br>
         		<li><button onclick="location.href='${pageContext.servletContext.contextPath}/employee/board/list'" style="color: black">
         		강사 모집</button></li>
         		
        	</ul>
      	</div>
  	
  	</nav>
</aside>
</body>
</html>