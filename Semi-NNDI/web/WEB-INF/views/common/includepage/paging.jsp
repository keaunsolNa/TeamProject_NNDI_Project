<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>너나들이</title>
</head>
<body>
	<div class="pagingArea" align="center">
		<button id="startPage">◀◀</button>
		
		<c:if test="${ requestScope.PagingDTO.pageNo <=1 }">
			<button disabled> ◀</button>
		</c:if>
		<c:if test="${ requestScope.PagingDTO.pageNo > 1 }">
			<button id="prevPage">◀</button>
		</c:if>
		
		<c:forEach var="p" begin="${ requestScope.PagingDTO.startPage }" end="${ requestScope.PagingDTO.endPage }" step="1">
			<c:if test="${ requestScope.PagingDTO.pageNo eq p }">
				<button disabled><c:out value="${ p }"/></button>
			</c:if>
			<c:if test="${ requestScope.PagingDTO.pageNo ne p }">
				<button onclick="pageButtonAction(this.innerText);"><c:out value="${ p }"/></button>
			</c:if>
		</c:forEach>
		
		<c:if test="${ requestScope.PagingDTO.pageNo >= requestScope.PagingDTO.maxPage}">
			<button disabled>▶</button>
		</c:if>
		<c:if test="${ requestScope.PagingDTO.pageNo < requestScope.PagingDTO.maxPage }">
			<button id="nextPage">▶</button>
		</c:if>
		
		<button id="maxPage">▶▶</button>
	</div>
	
	<script>
	
	const link = "${ pageContext.servletContext.contextPath }/login/board/paging";
	let searchText = "";
	
	if(${ !empty requestScope.PagingDTO.searchCondition? true: false }) {
		searchText += "&searchCondition=${ requestScope.pagingDTO.searchCondition }";
	}
	
	if(${ !empty requestScope.PagingDTO.searchValue? true: false }) {
		searchText += "&searchValue=${ requestScope.pagingDTO.searchValue }";
	}
	
	if(document.getElementById("startPage")) {
		const $startPage = document.getElementById("startPage");
		$startPage.onclick = function() {
			location.href = link + "?currentPage=1" + searchText;
		}
	}
	
	if(document.getElementById("prevPage")) {
		const $prevPage = document.getElementById("prevPage");
		$prevPage.onclick = function() {
			location.href = link + "?currentPage=${ requestScope.PagingDTO.pageNo - 1 }"
		}
	}
	
	if(document.getElementById("nextPage")) {
		const $nextPage = document.getElementById("nextPage");
		$nextPage.onclick = function() {
			location.href = link + "?currentPage=${ requestScope.PagingDTO.pageNo + 1 }"
		}
	}
	
	if(document.getElementById("maxPage")) {
		const $maxPage = document.getElementById("maxPage");
		$maxPage.onclick = function() {
			location.href = link + "?currentPage=${ requestScope.PagingDTO.maxPage }"
		}
	}
	
	function pageButtonAction(text) {
		location.href = link + "?currentPage=" + text + searchText;
	}
	
	</script>
	
</body>
</html>