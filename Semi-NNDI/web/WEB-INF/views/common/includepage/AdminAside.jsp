<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/nndi-style.css">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/sidebars.css" >
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    <style>
      .btn{
        font-size: 20px !important;
        color: aliceblue !important;
      }
    </style>
<title>Admin Main</title>
</head>
<body>
	 
	   <nav>
		    <div style="width: 280px;">
		      <a href="${ pageContext.servletContext.contextPath }/login/admin/main" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
		        <svg class="bi pe-none me-2" width="30" height="24"></svg>
		        <span class="fs-5 fw-semibold" style="color:rgb(255, 255, 255)">관리 목록</span>
		      </a>
		      </div>
		      <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="false">
		        회원 관리
		      </button>
		      <div class="collapse" id="home-collapse">
		        <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
		          <li><button type="submit" onclick="location.href='${ pageContext.servletContext.contextPath }/login/admin/memberList'" class="menubtn" >
		          회원 조회</button></li>
		          <li><button type="submit" onclick="location.href='${ pageContext.servletContext.contextPath }/login/admin/restMemberList'" class="menubtn">
		          휴면회원 관리</button></li>
		        </ul>
		      </div>
		    
		      <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#orders1-collapse" aria-expanded="false">
		        대관 관리
		      </button>
		      <div class="collapse" id="orders1-collapse">
		        <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
		          <li><button type="submit" onclick="location.href='${ pageContext.servletContext.contextPath }/login/admin/rentList'" class="menubtn">
		          대관 신청 조회</button></li>
		        </ul>
		      </div>
		
		      <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#orders2-collapse" aria-expanded="false">
		          강사 관리
		        </button>
		        <div class="collapse" id="orders2-collapse">
		          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
		            <li><button type="submit" onclick="location.href='${ pageContext.servletContext.contextPath }/login/admin/teacherList'" class="menubtn">
		            강사 조회</button></li>
		            <li><button type="submit" onclick="location.href='${ pageContext.servletContext.contextPath }/login/admin/teacherAdd'" class="menubtn">
		            강사 등록</button></li>
		            <%-- <li><button type="submit" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/teacherUpdate'" class="menubtn">
		            강사 수정</button></li> --%>
		          </ul>
		        </div>
		
		      <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#orders3-collapse" aria-expanded="false">
		          강좌 관리
		        </button>
		        <div class="collapse" id="orders3-collapse">
		          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
		            <li><button type="submit" onclick="location.href='${ pageContext.servletContext.contextPath }/login/admin/classList'" class="menubtn">
		            강좌 조회</button></li>
		            <li><button type="submit" onclick="location.href='${ pageContext.servletContext.contextPath }/login/admin/classAdd'" class="menubtn">
		            강좌 개설</button></li>
		            <%-- <li><button type="submit" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/classUpdate'" class="menubtn">
		            강좌 수정</button></li> --%>
		          </ul>
		        </div>
		
		      <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#orders4-collapse" aria-expanded="false">
		          게시판 관리
		        </button>
		        <div class="collapse" id="orders4-collapse">
		          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
		            <li><button type="submit" onclick="location.href='${ pageContext.servletContext.contextPath }/login/admin/noticeList'" class="menubtn">
		            공지 사항</button></li>
		            <li><button type="submit" onclick="location.href='${ pageContext.servletContext.contextPath }/login/admin/complainList'" class="menubtn">
		            민원 관리</button></li>
		            <li><button type="submit" onclick="location.href='${ pageContext.servletContext.contextPath }/login/admin/admireList'" class="menubtn">
		            칭찬 관리</button></li>
		            <li><button type="submit" onclick="location.href='${ pageContext.servletContext.contextPath }/login/admin/qnaList'" class="menubtn">
		            문의 관리</button></li>
		            <li><button type="submit" onclick="location.href='${ pageContext.servletContext.contextPath }/login/admin/faqList'" class="menubtn">
		            FAQ 관리</button></li>
		            <li><button type="submit" onclick="location.href='${ pageContext.servletContext.contextPath }/login/admin/employTeacherList'" class="menubtn">
		            강사모집 관리</button></li>
		          </ul>
		        </div>
		
		      <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#orders5-collapse" aria-expanded="false">
		          도서 관리
		        </button>
		        <div class="collapse" id="orders5-collapse">
		          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
		            <li><button type="submit" onclick="location.href='${ pageContext.servletContext.contextPath }/login/admin/bookList'" class="menubtn">
		            도서 조회</button></li>
		            <li><button type="submit" onclick="location.href='${ pageContext.servletContext.contextPath }/login/admin/deleteBookList'" class="menubtn">
		            도서 폐기 관리</button></li>
		          </ul>
		        </div>
		
<%-- 		     <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed " data-bs-toggle="collapse" data-bs-target="#orders6-collapse" aria-expanded="false">
		          환불 관리
		        </button>
		        <div class="collapse" id="orders6-collapse">
		          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
		            <li><button type="submit" onclick="location.href='${ pageContext.servletContext.contextPath }/login/admin/rentRefundList'" class="menubtn">
		            대관 환불내역 조회</button></li>
		            <li><button type="submit" onclick="location.href='${ pageContext.servletContext.contextPath }/login/admin/classRefundList'" class="menubtn">
		            수강 환불내역 조회</button></li>
		          </ul>
		        </div> --%>
		
		        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed " data-bs-toggle="collapse" data-bs-target="#orders7-collapse" aria-expanded="false">
		          통계 관리
		        </button>
		        <div class="collapse" id="orders7-collapse">
		          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
		            <li><button type="submit" onclick="location.href='${ pageContext.servletContext.contextPath }/login/admin/memberSumming'" class="menubtn">
		            회원 통계</button></li>
		            <li><button type="submit" onclick="location.href='${ pageContext.servletContext.contextPath }/login/admin/postSumming'" class="menubtn">
		            게시글 통계</button></li>
		          </ul>
		        </div>
		    
		  </nav>
	  
	
</body>
</html>