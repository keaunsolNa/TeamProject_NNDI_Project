<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>너나들이 중랑</title>

<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/post.css">
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/nndi-style.css">
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/centerRent.css">
<!-- ajax -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    

	<jsp:include page="../../common/includepage/UserHeader.jsp"/>
</head>

<body>

	
	<jsp:include page="../../common/includepage/CenterAside.jsp"/>
	
	
  	<section style="float: left">
  	  <div class="post list">
		<form action="${ pageContext.servletContext.contextPath }/login/center/insert" method="post" id="rentRequestForm">
	  		<table class="blueone" style="margin-left: 40%; margin-top:10%; margin-bottom:20%; width:800px; height:400px;">
	      		<tr>
	          		<th><label>시설명</label></th> 
	         			<td> <c:out value="${requestScope.centerDetail.centerKindName }"/></td>
	         				<input type="hidden" name="code" value="${requestScope.centerDetail.cenName }">
	      		</tr>
	      		
	      		<tr>
	        		<th><label>접수 대상 및 기간</label></th>
	        			<td>제한없음:정기접수</td>
	    		</tr>
	    
	    		<tr>
	        		<th><label>이용 시작일</label></th>
	        			<td><input type="date" name="start" id="start" required></td>
	    		</tr>
	    		
	    		<tr>
	        		<th><label>이용 종료일</label></th>
	        			<td><input type="date" name="end" id="end" required></td>
	    		</tr>
	    
	    		<tr>
	        		<th><label>접수 방법</label></th>
	        			<td>대기제(관리자승인)</td>
	    		</tr>
	    	
	    		<tr>
	        		<th><label>대관료</label></th>
	        			<td>문의 요망</td>
	    		</tr>
	  
	    		<tr>  	
	    			<td><button id="sendRentRequest" type="button" >등록</button></td>
	    			<td><button type="reset">취소</button></td>
	   		 	</tr>

   		 	</table>
	  	</form>
	  	</div>
	</section>
	<script type="text/javascript">
		/* 기간조회시 입력 오류 확인 날짜 비교 */
		$("#sendRentRequest").click(function(){ 
			let date = new Date();
			
			let minDate = date.setDate(date.getDate()+6);
			console.log('minDate' + minDate);
	
			let maxDate = date.setDate(date.getDate()+24);
			console.log(maxDate);
			
			let start = $("#start").val();
			let end = $("#end").val();
			
			console.log(start);
			console.log(end);
				
			let startArr = start.split('-');
			let endArr = end.split('-');
				
			console.log(startArr);
			console.log(endArr);
				
			let startDateCompare = new Date(startArr[0], parseInt(startArr[1])-1, startArr[2]);
			let endDateCompare = new Date(endArr[0], parseInt(endArr[1])-1, endArr[2]);
				
			console.log(startDateCompare);
			console.log(endDateCompare);
			
			if(startDateCompare.getTime() < minDate){
				alert("대관요청 시작일은 금일 날짜에 7일 이후부터 가능합니다!");
				$("#start").focus();
			} else if(startDateCompare.getTime() > endDateCompare.getTime()){
				alert("시작 날짜와 종료 날짜를 확인해 주세요!");
				$("#start").focus();
			} else if(endDateCompare.getTime() > maxDate || startDateCompare.getTime() > maxDate) {
				alert("대관요청 시작, 종료일은 금일 날짜로부터 30일 이내로 가능합니다!");
				$("#start").focus();
			} else {
				$("#rentRequestForm").submit();
			}
		})
		
	</script>
</body>
	<br clear="both">
	<jsp:include page="../../common/includepage/UserFooter.jsp"/>
</html>