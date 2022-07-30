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
	href="${pageContext.servletContext.contextPath}/resources/css/admin/main.css">
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
<title>Admin Main</title>
</head>
<body>
	<jsp:include page="../../common/includepage/AdminHeader.jsp" />



	<section>
		<jsp:include page="../../common/includepage/AdminAside.jsp" />

		<div class="new">
			<h4 class="to">최근 문의글</h4>
			<div class="supost">
				<table>
					<thead>
						<tr>
							<th>글번호</th>
							<th>제목</th>
							<th>회원 아이디</th>
							<th>게시일</th>
							<th>답변여부</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="qna" items="${ requestScope.qnaList }">
						<tr>
							<td>${ qna.num }</td>
							<td>${ qna.title }</td>
							<td>${ qna.memId }</td>
							<td>${ qna.postDate }</td>
							<td>${ qna.answerYn }</td>
						</c:forEach>
						</tr>
					</tbody>
				</table>
			</div>
			<h4 class="result"></h4>
		</div>
		<div class="total">
			<h4 class="to">최근 가입한 회원</h4>
			<div class="supost">
				<table>
					<thead>
						<tr>
							<th>회원아이디</th>
							<th>이름</th>
							<th>최근 접속일</th>
							<th>가입일</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="mem" items="${ requestScope.memberList }">
						<tr>
							<td>${ mem.id }</td>
							<td>${ mem.name }</td>
							<td>${ mem.lastLogin }</td>
							<td>${ mem.enrollDate }</td>
							
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<div class="new">
			<h4 class="to">최근 대관 신청한 리스트</h4>
			<div class="supost">
				<table>
					<thead>
						<tr>
							<th>번호</th>
							<th>시설이름</th>
							<th>신청회원</th>
							<th>승인여부</th>
							<th>대관요청시작일</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="rent"
							items="${ requestScope.rentList }">
							<tr>
								<td>${ rent.num }</td>
								<td>${ rent.centerName }</td>
								<td>${ rent.memId }</td>
								<td>${ rent.rentReqYn}</td>
								<td>${ rent.rentStart}</td>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<div class="total">
			<h4 class="to">개강임박 강좌 조회</h4>
			<div class="supost">
				<table>
					<thead>
						<tr>
							<th>강좌번호</th>
							<th>시설이름</th>
							<th>강좌이름</th>
							<th>신청인원</th>
							<th>개강일</th>
							<th>분류</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="cls" items="${ requestScope.classList }" varStatus="status"> <!--  -->
	              <tr>
	                <td>${ cls.clsNum }</td>
	                <td>${ cls.cenName }</td>
	                <td>${ cls.clsName }</td>
	                <td>${ cls.clsApplyCnt }</td>
	                <td>${ requestScope.time[status.index].start }</td>
	                <td>${ cls.clsCategoryName }</td>
	              </tr>
	              </c:forEach>
	            </tbody>
				</table>
			</div>
		</div>
	</section>

	<jsp:include page="../../common/includepage/AdminFooter.jsp" />
</body>
</html>