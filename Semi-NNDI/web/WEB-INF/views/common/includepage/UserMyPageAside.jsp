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
	    	<a href="${pageContext.servletContext.contextPath}/login/Member/Info" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none">
	      	<svg class="bi pe-none me-2" width="30" height="24"></svg>
	      	<span class="fs-5 fw-semibold" style="color:rgb(255, 255, 255)">마이페이지</span>
	    	</a>
	    </div>
	    
	    <button class="btn btn-c btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" 
	    	data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="false">
	    	개인 정보
	    </button>
	    
	    <div class="collapse " id="home-collapse">
	    	<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
	    	
	    		<br>
		    	<li><button onclick="location.href='${pageContext.servletContext.contextPath}/login/Member/Info'">
		    	개인정보조회</button></li>
		    	
		    	<br>
	        	<li> <button onclick="location.href='${pageContext.servletContext.contextPath}/login/MemberInfo/Update'">
	        	개인정보수정</button></li>
	        	
	        	<br>
	        	<li> <button onclick="location.href='${pageContext.servletContext.contextPath}/login/MemberOut'">
	        	회원탈퇴신청</button></li>
	        	
	      	</ul>
	    </div>
	    
	    <br>
	    
	    <button class="btn btn-c btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" 
	    	data-bs-toggle="collapse" data-bs-target="#orders1-collapse" aria-expanded="false">
	    	대관 관리
	    </button>
	    
	    <div class="collapse" id="orders1-collapse">
	      	<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
	      	
   			   	<br>
	        	<li><button onclick="location.href='${pageContext.servletContext.contextPath}/login/myPage/rentList'">
	        	대관 신청 현황</button></li>
	        	
	        	<br>
	        	<li><button onclick="location.href='${pageContext.servletContext.contextPath}/login/rent/cancelList'">
	        	대관 신청 취소</button></li>
	        	
<%-- 	        	<br>
	        	<li><button onclick="location.href='${pageContext.servletContext.contextPath}/login/rent/refund'">
	        	대관 환불 내역</button></li> --%>
	        	
	        	
	      	</ul>
	    </div>
	    
	    <br>
	    
	    <button class="btn btn-c btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" 
	    	data-bs-toggle="collapse" data-bs-target="#orders2-collapse" aria-expanded="false">
	    	강좌 관리
	    </button>
	    
	    <div class="collapse" id="orders2-collapse">
	    	<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
	    		
	    		<br>
	        	<li><button onclick="location.href='${pageContext.servletContext.contextPath}/login/board/MyPageClass'">
	        	수강 이력 관리</button></li>
	        	
	      	</ul>
	    </div>
	    
	    <br>
	    
	    <button class="btn btn-c btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" 
	    	data-bs-toggle="collapse" data-bs-target="#orders3-collapse" aria-expanded="false">
	    	도서대출조회
	    </button>
	    
	    <div class="collapse" id="orders3-collapse">
	    	<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
	    	
	    		<br>
	        	<li> <button onclick="location.href='${pageContext.servletContext.contextPath}/login/Member/BookRent'">
	        	대출목록 조회</button></li>
	       
	        </ul>
	    </div>
	    
	    <br>
	    
	    <button class="btn btn-c btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" 
	    	data-bs-toggle="collapse" data-bs-target="#orders4-collapse" aria-expanded="false">
	    	게시판
	    </button>
	    
	    <div class="collapse" id="orders4-collapse">
	        <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
	       
	       		<br>
	          	<li> <button onclick="location.href='${pageContext.servletContext.contextPath}/login/board/MyPageQNA'">
	          	문의 조회</button></li>
	          	
	          	<br>
	          	<li> <button onclick="location.href='${pageContext.servletContext.contextPath}/login/myboard/complain'">
	          	민원 조회</button></li>

	        </ul>
	    </div>
	</nav>
</aside>

</body>
</html>