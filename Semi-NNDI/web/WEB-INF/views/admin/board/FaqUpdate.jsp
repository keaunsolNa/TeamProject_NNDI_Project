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
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/postAdd.css" >
    <link href="https://fonts.googleapis.com/css2?family=Single+Day&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script src="${pageContext.servletContext.contextPath}/resources/js/admincheck.js"></script>
    <style>
      .btn{
        font-size: 20px !important;
        color: aliceblue !important;
      }
    </style>
<title>Admin FAQ detail View</title>
</head>
<body>
	<jsp:include page="../../common/includepage/AdminHeader.jsp"/>
	
	<section>
	 
	   <jsp:include page="../../common/includepage/AdminAside.jsp"/>
	  
    
		<div>
  			<div class="post title">
     			 <h3 class="top">FAQ</h3>
  			</div>
  		<div>
   			<button id="back" class="back">목록으로</button>
 		</div>
  		<div class="post add">
		        <form id="update" action="${pageContext.servletContext.contextPath}/login/admin/faqRE" method="post">
		        	<input type="hidden" id="num" name="num" value="${ detailFaq.num }" />
		            <label>FAQ 내용</label>
		            <table>
		                <tr>
		                    <td class="td1">제목</td>
		                    <td class="td2">${ detailFaq.title }</td>
		                </tr>
		                <tr>
		                    <td class="td1">작성자</td>
		                    <td class="td2">${ detailFaq.managerId }</td>
		                </tr>
		                <tr>
		                    <td class="td1">내용</td>
		                    <td class="td2">${ detailFaq.content }</td>
		                </tr>
		            </table>
		             <label>상세 내용</label><br>
		            <textarea name="content" id="content4" cols="30" rows="10" style="resize: none;" minlength="10" placeholder="내용을 입력해주세요" required>${ requestScope.detailFaq.content }</textarea><br>
		            <button id="updatepost3" class="btns add" type="button">수 정 하 기</button>
		            <button id="deletepost" class="btns" type="button">삭 제 하 기</button><br><br><br>
		        </form>
		    </div>
  		</div>
	<script>
	const back = document.getElementById("back");
	const updatepost = document.getElementById("updatepost3");
	const deletepost = document.getElementById("deletepost");
    back.onclick = function(){
      let text = " 이 창을 나가시겠습니까?\n 현재 입력하신 정보는 저장되지 않습니다.\n 나가시려면 '확인'을 누르세요.";
      if (confirm(text) == true) {
    	   location.href = "${pageContext.servletContext.contextPath}/login/admin/faqList"; 
      }
    };
    updatepost.onclick = function(){
      let text = "내용을 수정하시겠습니까?\n수정하시려면 '확인'을 누르세요.";
     /*  if (confirm(text) == true) {
    	  document.getElementById("update").submit(); 
      }*/
    };
    deletepost.onclick = function(){
      let text = "게시물을 삭제하시겠습니까?\n삭제하시려면 '확인'을 누르세요.";
      if (confirm(text) == true) {
    	  location.href = "${pageContext.servletContext.contextPath}/login/admin/deletefaq.do?num=${ detailFaq.num }"; 
      }
    };
</script>
	  
</section>

	<jsp:include page="../../common/includepage/AdminFooter.jsp"/>
</body>
</html>
