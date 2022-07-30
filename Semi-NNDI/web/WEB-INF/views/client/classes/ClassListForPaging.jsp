<jsp:directive.page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"/>
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
	<jsp:include page="../../common/includepage/ClassAside.jsp"/>
<section>	
  <div>
    <h3 class="notice"><b><u>강좌</u>조회</b></h3>
  </div>
  
  	<div class="post list"> 
	 <p style="float: right;">내부사정으로 요일은 불가피하게 변경될수있슴다</p>
  <table class="blueone">
      <thead>
        <tr>
            <th>강좌명</th>           
            <th>강사명</th>
            <th>장소</th>
            <th>신청인원</th>
            <th>개강일</th>
            <th>종강일</th>
            <th>진행시간</th>
            <th>요일</th>
		    </tr>        
    </thead>
    <tbody>
   <c:forEach var="cls" items="${ requestScope.classList }">
      <tr>
          <td class="mudo" style="display: none;">${cls.clsNum}</td>
          <td class="mudo"><c:out value="${cls.clsName}"/></td>
          <td class="mudo"><c:out value="${cls.teacher.name}"/></td>
          <td class="mudo"><c:out value="${cls.cenName}"/> 호</td>
          <td class="mudo"><c:out value="${cls.clsApplyCnt}"/>명//<c:out value="${cls.clsMaxCnt}"/>명</td>
          <td class="mudo"><c:out value="${cls.clsStartDay}"/></td>
          <td class="mudo"><c:out value="${cls.clsEndDay}"/></td>
          <td class="mudo"><c:out value="${cls.clsRunTime}"/></td>
          <td class="mudo"><c:out value="${cls.clsDay}"/></td>
             <td>
           	<button onclick="location.href = '${pageContext.servletContext.contextPath}/login/board/QNABoardListDetail?num=${qna.num}'">
          		보기
          	</button> 
          </td> 
	      </tr>
      </c:forEach>
    </tbody>
    </table>
		<!-- 검색 폼 -->
	<div class="search-area" align="center">
			<form id="loginForm" action="${ pageContext.servletContext.contextPath }/board/list" method="get" style="display:inline-block">		
			    <input type="hidden" name="currentPage" value="1">
			    <select id="searchCondition" name="searchCondition">
					<option value="category" ${ requestScope.PagingDTO.searchCondition eq "category"? "selected": "" }>카테고리</option>
					<option value="writer" ${ requestScope.PagingDTO.searchCondition eq "writer"? "selected": "" }>작성자</option>
					<option value="title" ${ requestScope.PagingDTO.searchCondition eq "title"? "selected": "" }>제목</option>
					<option value="content" ${ requestScope.PagingDTO.searchCondition eq "content"? "selected": "" }>내용</option>
				</select>
		        <input type="search" id="searchValue" name="searchValue" value="<c:out value="${ requestScope.PagingDTO.searchValue }"/>">

				<button type="submit">검색하기</button>
			</form>
		</div>
	</div>
	
	<script>
		
		if(document.getElementsByTagName("td")) {
			
			const $tds = document.getElementsByTagName("td");
			for(let i = 0; i < $tds.length; i++) {
				
				$tds[i].onmouseenter = function() {
					this.parentNode.style.backgroundColor = "orangered";
					this.parentNode.style.cursor = "pointer";
				}
				
				$tds[i].onmouseout = function() {
					this.parentNode.style.backgroundColor = "black";
				}
				
				$tds[i].onclick = function() {
					/* 게시물 번호까지 알아왔으니 이제 상세보기는 할 수 있습니다. */
					alert(this.parentNode.children[0].innerText);
				}
				
			}
			
		}
		
	</script>
	
</body>
</html>