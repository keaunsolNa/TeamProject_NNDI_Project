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
    <style>
      .btn{
        font-size: 20px !important;
        color: aliceblue !important;
      }
    </style>
<title>Admin Admire List</title>
</head>
<body>
	<jsp:include page="../../common/includepage/AdminHeader.jsp"/>
	
	<section>
	 
	  <jsp:include page="../../common/includepage/AdminAside.jsp"/>
	  
    
		<div>
		    <div class="post title">
		        <h3 class="top">칭찬하기</h3>
		    </div>
		    <div>
		      <button id="back" class="back">목록으로</button>
		    </div>
		    <div class="post add">
		        <form action="">
		        	<input type="hidden" id="num" name="num" value="${ detailAdmire.num }" />
		            <label>내용</label>
		            <table>
		                <tr>
		                    <td class="td1">제목</td>
		                    <td class="td2"><c:out value="${ detailAdmire.title }" escapeXml="true"/></td>
		                </tr>
		                <tr>
		                    <td class="td1">카테고리</td>
		                    <td class="td2"><c:out value="${ detailAdmire.category.cateKind }" escapeXml="true"/></td>
		                </tr>
		                <tr>
		                    <td class="td1">내용</td>
		                    <td class="td2"><c:out value="${ detailAdmire.content }" escapeXml="true"/></td>
		                </tr>
		                <tr>
		                    <td class="td1">작성자</td>
		                    <td class="td2"><c:out value="${ detailAdmire.memId }" escapeXml="true"/></td>
		                </tr>
		                <tr>
		                    <td class="td1">작성일</td>
		                    <td class="td2"><c:out value="${ detailAdmire.postDate }" escapeXml="true"/></td>
		                </tr>
		            </table>
		            <button id="deletepost" class="btns" type="button">삭 제 하 기</button>
		        </form>
		    </div>
  		</div>
	  <script>
	  	const back = document.getElementById("back");
		const deletepost = document.getElementById("deletepost");
		const num = document.getElementById("num").value;
	    back.onclick = function(){
	      let text = " 이 창을 나가시겠습니까?\n나가시려면 '확인'을 누르세요.";
	      /* console.log('누름확인'); */
	      if (confirm(text) == true) {
	    	   location.href = "${pageContext.servletContext.contextPath}/login/admin/admireList"; 
	      } 
	    };
	    deletepost.onclick = function(){
	      let text = "답변을 삭제하시겠습니까?\n삭제하시려면 '확인'을 누르세요.";
	      if (confirm(text) == true) {
	    	  location.href = "${pageContext.servletContext.contextPath}/login/admin/admireDelete.do?num="+num;
	      } else {
	        
	      }
	    };
	  </script>
			  
	</section>
	
	<jsp:include page="../../common/includepage/AdminFooter.jsp"/>
</body>
</html>
