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
		    <b>주민들의 소중한 의견을 적극 반영하는 너나들이, 중랑이 되도록 노력하겠습니다.</b><br>
		    <b> 너나들이, 중랑 문화센터와 관련된 민원사항만을 접수하는 곳입니다.</b><br>
		    <b>게시판 작성내용으로 인한 법적문제 발생시 민,형사상 책임은 전적으로 게시자에게 있습니다.</br></b>
		    <b>민원인의 신상정보는 공개하지 않겠습니다.</b><br>
		    <b>궁금하신 사항은 담당자에게 문의 바랍니다.</b><br>
		    <b style="color: red;">욕설, 비방, 선정성, 상업성, 정치적 표현 등 부적절한 표현의 게재글은 비공개 전활 또는 삭제될 수 있습니다.</b>
		</div>

	<form id="cmpInsert" action="${ pageContext.servletContext.contextPath }/login/board/complain/insert" method="post">
  		<div class="write2">
    		<p>민원 글 작성</p>
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
    			<textarea placeholder="제목을 입력하세요" name="title" class="userTitle" style="resize:none; width: 600px;" required></textarea>
   		 		</tr>
  			</div>
		</div>
		
  		<div class="min3">
    		<p class="jemok">내용</p>
    		<div class="min2">
     			<textarea placeholder="글 내용을 입력하세요" name="content" class="userContent" style="resize:none; width: 600px;" required></textarea>
  			</div>
		</div>

 		<div>
    		<button type="reset" class="btns" style="width: 100px;">취소</button>
    		<button id="cmpWrite" class="btns" style="width: 100px;" type="button">등록</button>
  		</div>
	</form>
</section>
	<!-- <script>
			const cmpWrite = document.getElementById("cmpWrite");
			cmpWrite.onclick = function(){
		      let text = "글을 등록 하시겠습니까?\n등록하시려면 '확인'을 누르세요.";
		      if (confirm(text) == true) {
		    	  document.getElementById("cmpInsert").submit();
		      }
		    };
		   
 	</script> -->
 	<script>
 			$("#cmpWrite").click ( function() {
 	            
 	            const content = $(".userContent").val().length;
 	            const title = $(".userTitle").val().length;
 	            
 	            
 	            console.log(content)
 	            console.log(title)
 	            if(content != 0 && title !=0){
 	               let text = "게시글을 등록하시겠습니까?\n등록하시려면 '확인'을 누르세요.";
 	               if (confirm(text) == true) {
 	                  document.getElementById("cmpInsert").submit(); 
 	               }
 	            }
 	            else {
 	               alert('내용을 입력해주세요')
 	            }
 	            
 	            
 	         })
 			</script>
	
	
</body>

<br clear="both">

	<jsp:include page="../../common/includepage/UserFooter.jsp"/>
	
</html>
