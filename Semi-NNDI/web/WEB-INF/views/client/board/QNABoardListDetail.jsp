<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/post.css">
<jsp:include page="../../common/includepage/UserHeader.jsp"/>
<title>Insert title here</title>
</head>
<body>
	<aside>
		<jsp:include page="../../common/includepage/CustomerContactCentersAside.jsp"/>
	</aside>

	<section style="float: left; width: 1500px;">
  		<div class="l3" >
	    	<b>너나들이, 중랑은 회원님들의 궁금증을 해결하기 위해 문의 게시판을 운영하고 있습니다.</b><br>
	    	<b>센터 운영 및 시설에 대한 건의 및 불편사항을 남겨주시면 최대한 빠른 시간 안에 답변드리겠습니다.</b></br>
	    	<b style="color: red;">※ 일반 문의는 접수 후 7일, 관련 법령 해석이 요구되는 문의는 접수 후 14일 이내에 처리됩니다.</b><br>
	    	<b>- 비방, 상업성 게시물 등은 삭제될 수 있으며, 타인의 명예훼손, 법령 위반은 처벌받을 수 있습니다.</br></b>
	    	<b>- 비공개 게시물의 답변은 비공개 답변으로 게시가 됩니다.</b>
  		</div>

   		<div class="l1">
    		<div class="d1">
      			<h3><c:out value="${requestScope.qnadto.title}" escapeXml="true"/></h3>
      			<p><b>작성일</b>: <c:out value="${requestScope.qnadto.postDate}" escapeXml="true"/><br><b>글쓴이: </b><c:out value="${requestScope.qnadto.memId}" escapeXml="true"/></p>
    		</div>
  		</div>  
  
  		<div class="l1">
    		<div class="d1">
      			<p><c:out value="${requestScope.qnadto.content}" escapeXml="true"/></p>
    		</div>
  		</div>

  		<div>
    		<button class="r1" onclick="location.href='${pageContext.servletContext.contextPath}/board/QNABoardList'">목록으로</button>
  		</div>
 
  		<button class="r9" onclick="location.href='${pageContext.servletContext.contextPath}/login/board/QNAUpdate?num=${requestScope.qnadto.num}'">수정</button> 
		<button class="r9" id="cancelman">삭제</button> 

	</section>
	<script>
			const updateqna = document.getElementById("cancelman");
			updateqna.onclick = function(){
		      let text = "글을 삭제 하시겠습니까?\n삭제하시려면 '확인'을 누르세요. 삭제를 취소 하시겠습니까?\n취소하시려면 '취소'를 누르세요.";
		      if (confirm(text) == true) {
		    	  location.href = "${pageContext.servletContext.contextPath}/login/board/QNAdelete?num=${requestScope.qnadto.num}";
		      }
		    };
		   /*  updatecancel.onclick = function(){
			      let text = "수정을 취소 하시겠습니까?\n취소하시려면 '취소'를 누르세요.";
			      if (confirm(text) == true) {
			    	  location.href = "${pageContext.servletContext.contextPath}/login/board/QNABoardList";
			      }
			    };
		    }); */
 </script>
	
	
	
</body>
<br clear="both">
	<jsp:include page="../../common/includepage/UserFooter.jsp"/>  
</html>