<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/nndi-style.css">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/sidebars.css" >
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/post.css" >
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/youchanEdit.css" >
    <link href="https://fonts.googleapis.com/css2?family=Single+Day&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <style>
      .btn{
        font-size: 20px !important;
        color: aliceblue !important;
      }
    </style>
<title>Admin Rent List</title>
</head>
<body>
	<jsp:include page="../../common/includepage/AdminHeader.jsp"/>
	
	<section>
	 
	   <jsp:include page="../../common/includepage/AdminAside.jsp"/>
	  
		<div class="post title">
    		<h3 class="top">대관 신청 조회</h3>
		</div>

<br><br>
    
    <div class="post list">
      <table class="tb_02">
	        <tbody>
	        <tr>
	          <th>접수 번호</th>
	          <td>${ rent.num }</td>
	        </tr>
	        <tr>
	          <th >시설</th>
	          <td>${ rent.centerName }</td>
	        </tr>
	        <tr>
	          <th >회원 아이디</th>
	          <td>${ rent.num }</td>
	        </tr>
	        <tr>
	          <th >회원 성함</th>
	          <td>${ rent.member.name }</td>
	        </tr>
	        <tr>
	          <th >회원 연락처</th>
	          <td>${ rent.member.phone }</td>
	        </tr>
	        <tr>
	          <th>대관 시작일</th>
	          <td>${ rent.rentStart }</td>
	        </tr>
	        <tr>
	          <th>대관 종료일</th>
	          <td>${ rent.rentEnd }</td>
	        </tr>
	        <tr>
	          <th>대관 비용</th>
	          <td>${ rent.rentCost }원</td>
	        </tr>
	        <tr>
	          <th>결제 여부</th>
	          <td>${ rent.num }</td>
	        </tr>
	        <tr>
	          <th>대관 청회 신청 여부</th>
	          <td>${ rent.rentPayYn }</td>
	        </tr>
	        <tr>
	          <th>요청 승인 여부</th>
	          <td>${ rent.rentReqYn }</td>
	        </tr>
	      </tbody>
	    </table>
	 </div>
    

    <div class="marleft50" style="margin-bottom: 3%;">
      <button id="admit" type="button" class="btn btn-primary btn-lg" >승인</button>
      <button id="refuse" type="button" class="btn btn-danger btn-lg">거절</button>
      <div class="ycDivStyle1">
        <button id="back" type="button" class="btn btn-secondary btn-lg">목록으로</button>
      </div>
    </div>
    <script>
	  	const back = document.getElementById("back");
		const admit = document.getElementById("admit");
		const refuse = document.getElementById("refuse");
		let add1 = 'Y';
		let add2 = 'N';
	    back.onclick = function(){
	      let text = " 이 창을 나가시겠습니까?\n나가시려면 '확인'을 누르세요.";
	      /* console.log('누름확인'); */
	      if (confirm(text) == true) {
	    	   location.href = "${pageContext.servletContext.contextPath}/login/admin/rentList"; 
	      } 
	    };
	    admit.onclick = function(){
	      let text = "승인하시겠습니까?\n해당 신청을 승인하시려면 '확인'을 누르세요.";
	      if (confirm(text) == true) {
	    	  let cost = prompt('대관 비용을 입력해주세요!','숫자만')
	    	  let cost2 = Number(cost);
	    	  console.log(typeof(cost2),cost);
	    	  if(isNaN(cost2)) {
	    		  alert('비용을 숫자만 입력해주세요!');
	    	  } else{
		    	  location.href = "${pageContext.servletContext.contextPath}/login/admin/rentRequest.do?answer="+add1+"&cost="+cost+"&num=${ rent.num }"; 
	    	  }
	      }
	    };
	    refuse.onclick = function(){
	      let text = "반려하시겠습니까?\n해당 신청을 거절하시려면 '확인'을 누르세요.";
	      if (confirm(text) == true) {
	    	  location.href = "${pageContext.servletContext.contextPath}/login/admin/rentRequest.do?answer="+add2+"&num=${ rent.num }"; 
	      }
	    };
	  </script>
	</section>
	
	<jsp:include page="../../common/includepage/AdminFooter.jsp"/>
</body>
</html>