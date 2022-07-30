<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>민원작성 페이지</title>
	<script 
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script 
		type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
	<script src="${pageContext.servletContext.contextPath}/resources/js/UserReg.js"></script>
	<jsp:include page="../../common/includepage/UserHeader.jsp"/>
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/nndi-style.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/selectList.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/post.css">
</head>
<body>

	<aside>
		<jsp:include page="../../common/includepage/CustomerContactCentersAside.jsp"/>
	</aside>
	
	<section style="float: left;">

		<div style="border: 2px solid black; padding: 5px; margin-left: 18%; margin-right: 2%; ">
    		<b>칭찬하기 게시판은 행정서비스 및 프로그램 진행에 있어 이웃주민과 민원인들에게 감동을 준 너나들이, 중랑의 직원 및 부서를 칭찬하는 게시판 입니다.</b><br>
   			<b style="color: red;">※ 게시판 작성내용으로 인한 법적 문제 발생 시 민·형사상 책임은 전적으로 게시자에게 있음을 알립니다.</b><br>
    		<b>- 개인정보 보호를 위해 게시내용에 개인정보를 입력하는 행위를 삼가하여 주시기 바랍니다.</br></b>
    	</div>
    	
    	

	<form id="cmdUpdate" action="${ pageContext.servletContext.contextPath }/login/board/commend/update/modify?num=${requestScope.cmd.num}" method="post">
  		<div class="write2">
    	<p>칭찬글 수정하기</p>
  		</div>
  		
  		<div class="min3">
    		<div class="min2">
    			<tr>
      				<td>분류</td>
      				<select size = "1" name="category">
				        <option value="1">문화 강좌</option>
				        <option value="2">체육 강좌</option>
				        <option value="3">시설</option>
				        <option value="4">직원</option>
				        <option value="5">기타</option>
      				</select>
    			</tr>
  			</div>
		</div>
		
  		<div class="min3">
    		<p class="jemok">제목</p>
    		
    		<div class="min4">
    		<tr>
    		<textarea placeholder="제목을 입력하세요" name="title" class="userTitle" style="resize: none;" required><c:out value="${requestScope.cmd.title}" escapeXml="false"/></textarea>
    		</tr>
  			</div>
		</div>

	  	<div class="min3">
    		<p class="jemok">내용</p>
    		<div class="min2">
     			<textarea placeholder="글 내용을 입력하세요" name="content" class="userContent" style="resize: none;" required><c:out value="${requestScope.cmd.title}" escapeXml="false"/></textarea>
		  	</div>
		</div>
		
		<div style="float: right;">
    		<button type="reset">취소</button>
    		<button id="cmdModify" type="button">등록</button>
    		
    		
    	<!-- <script>
			const cmdModify = document.getElementById("cmdModify");
			cmdModify.onclick = function(){
		      let text = "글을 수정 하시겠습니까?\n등록하시려면 '확인'을 누르세요.";
		      if (confirm(text) == true) {
		    	  document.getElementById("cmdUpdate").submit();
		      }
		    };
		   
 	</script> -->
 		
 		<script>
 			$("#cmdModify").click ( function() {
 	            
 	            const content = $(".userContent").val().length;
 	            const title = $(".userTitle").val().length;
 	            
 	            
 	            console.log(content)
 	            console.log(title)
 	            if(content != 0 && title !=0){
 	               let text = "게시글을 등록하시겠습니까?\n등록하시려면 '확인'을 누르세요.";
 	               if (confirm(text) == true) {
 	                  document.getElementById("cmdUpdate").submit(); 
 	               }
 	            }
 	            else {
 	               alert('내용을 입력해주세요')
 	            }
 	            
 	            
 	         })
 			</script>
  		</div>
		

</form>

</section>
	
	
</body>

<br clear="both">

	<jsp:include page="../../common/includepage/UserFooter.jsp"/>
	
</html>
