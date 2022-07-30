<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/nndi-style.css">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/sidebars.css" >
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/post.css" >
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/summing.css" >
    <link href="https://fonts.googleapis.com/css2?family=Single+Day&display=swap" rel="stylesheet">
    <!-- ajax -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<!-- jQuery -->
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <style>
      .btn{
        font-size: 20px !important;
        color: aliceblue !important;
      }
    </style>
<title>Admin Member SummingUp</title>
</head>
<body>
	<jsp:include page="../../common/includepage/AdminHeader.jsp"/>
	
	<section>
	 
	   <jsp:include page="../../common/includepage/AdminAside.jsp"/>
	
		<div>
		    <div class="post title">
		        <h3 class="top">회원 통계</h3>
		    </div>
		    <div class="new">
		      <h3 class="to">신규가입자 수</h3>
		        <form id="new">
		          <label>조회할 기간 입력</label>
		          <input id="start" name="start" type="date" required>
		          &nbsp;&nbsp;&nbsp;부터&nbsp;&nbsp;&nbsp;
		          <input id="end" name="end" type="date" required>
		          <br>
		          <button id="newMember" class="btns" type="button">조회하기</button>
		        </form>
        		<h4 id="result" style="color: rgb(255, 109, 109);
    								  margin-left: 5%;
    								  font-weight: bolder;
    								  padding: 20px 8px 12px 0;"></h4>
    		</div>
		    </div>
		    <div class="total">
		      <h3 class="to">전체 회원 수</h3>
		      <label>금일 날짜까지의 회원의 수를 조회합니다.</label>
		      <button id="totalMember" class="btns">조회하기</button>
		      <h4 id="result1" style="color: rgb(255, 109, 109);
    								  margin-left: 5%;
    								  font-weight: bolder;
    								  padding: 20px 8px 12px 0;"></h4>
		    </div>
		    <div class="dead" style="margin-bottom : 3%">
		      <h3 class="to">탈퇴 회원 전체 수</h3>
		      <label>금일 날짜까지의 탈퇴한 회원의 수를 조회합니다.</label>
		      <button id="deadMember" class="btns">조회하기</button>
		      <h4 id="result2" style="color: rgb(255, 109, 109);
    								  margin-left: 5%;
    								  font-weight: bolder;
    								  padding: 20px 8px 12px 0;"></h4>    <!--innerHTML 로 결과값 도출-->
		    </div>
      
	</section>
	
	<script>
		$("#newMember").click(function(){
			const start = $("#start").val();
			const end = $("#end").val();
			
			let startArr = start.split('-');
			let endArr = end.split('-');
			
			console.log(startArr);
			console.log(endArr);
			
			let startDateCompare = new Date(startArr[0], parseInt(startArr[1])-1, startArr[2]);
			let endDateCompare = new Date(endArr[0], parseInt(endArr[1])-1, endArr[2]);
			
			console.log(startDateCompare);
			console.log(endDateCompare);
			
			if(startDateCompare.getTime() > endDateCompare.getTime()){
				alert("시작 날짜와 종료 날짜를 확인해 주세요!");
				
				$("#start").focus();
			} else{
			
				$("#newMember").submit();
				
		        $.ajax({
		             url: "${pageContext.servletContext.contextPath}/login/admin/newMemberSumming",
		             type: "get",
		             data:{
		            	 start : start,
		            	 end : end
		             },
		             success: function(data){
		                     $("#result").html(data);
		                     console.log(data);
		             },
		             error: function(request, status){
		                 alert("네트워크를 확인해주세요.")
		             }
		         });
			}
	 	});
		
		$("#totalMember").click(function(){
	           $.ajax({
	                url: "${pageContext.servletContext.contextPath}/login/admin/memberSummings",
	                type: "get",
	                success: function(data){
	                        $("#result1").html(data);
	                        console.log(data);
	                },
	                error: function(request, status){
	                    alert("네트워크를 확인해주세요.")
	                }
	            });
	    });
		
		$("#deadMember").click(function(){
	           $.ajax({
	                url: "${pageContext.servletContext.contextPath}/login/admin/deadMemberSumming",
	                type: "get",
	                success: function(data){
	                        $("#result2").html(data);
	                        console.log(data);
	                },
	                error: function(request, status){
	                    alert("네트워크를 확인해주세요.")
	                }
	            });
	    });
	</script>
	
	<jsp:include page="../../common/includepage/AdminFooter.jsp"/>
</body>
</html>
