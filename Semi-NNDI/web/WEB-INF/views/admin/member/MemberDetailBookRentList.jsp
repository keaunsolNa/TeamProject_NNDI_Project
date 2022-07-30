<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/resources/css/admin/nndi-style.css">
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/resources/css/admin/sidebars.css">
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/resources/css/admin/post.css">
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/resources/css/admin/youchanEdit.css">
<link
	href="https://fonts.googleapis.com/css2?family=Single+Day&display=swap"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<style>
.btn {
	font-size: 20px !important;
	color: aliceblue !important;
}
</style>
<title>Admin MemberBookRentList</title>
</head>
<body>
	<jsp:include page="../../common/includepage/AdminHeader.jsp" />

	<section>

		<jsp:include page="../../common/includepage/AdminAside.jsp" />

		<div class="post title">
			<h3 class="top">회원 도서 대출내역 조회</h3>
		</div>
		<br>

		<form>
		<div class="post list">
			<table class="tb01">
				<thead class="table-lgiht">
					<tr>
						<th>대출 번호</th>
						<th>책 제목</th>
						<th>출판사</th>
						<th>책 카테고리</th>
						<th>작가</th>
						<th>대출 일자</th>
						<th>반납 일자</th>
						<th> </th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="memberRentBook"
						items="${ requestScope.memberRentBookList }">
						<tr>
							<td>${ memberRentBook.rentNum }</td>
							<td>${ memberRentBook.bookInfo.name }</td>
							<td>${ memberRentBook.bookInfo.publisher }</td>
							<td>${ memberRentBook.bookKind.kinds }</td>
							<td>${ memberRentBook.bookInfo.writer }</td>
							<td>${ memberRentBook.rentDate }</td>
							<td>${ memberRentBook.returnDate }</td>
							<td><input type="hidden" id="id" name="num"	value="${ memberRentBook.memId }"></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div>
			<button id="back" type="button" class="btn btn-secondary"
					style="float:right; margin-right:5%; margin-top:1.5%">돌아가기</button>
		</div>
	</form>
	</section>
	<br>
	<br>
	<br>
	<script>
    const back = document.getElementById("back");
    let id = document.getElementById("id").value;
    back.onclick = function(){
    	location.href="${ pageContext.servletContext.contextPath }/login/admin/detailaliveMember.do?id="+id;
    };
    </script>

	<jsp:include page="../../common/includepage/AdminFooter.jsp" />
</body>
</html>