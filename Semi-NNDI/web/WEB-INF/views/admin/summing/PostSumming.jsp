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
	href="${pageContext.servletContext.contextPath}/resources/css/admin/summingmem.css">
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
<title>Admin Teacher List</title>
</head>
<body>
	<jsp:include page="../../common/includepage/AdminHeader.jsp" />

	<section>

		<jsp:include page="../../common/includepage/AdminAside.jsp" />

		<div>
			<div class="post title">
				<h3 class="top">게시글 통계</h3>
			</div>
			<div class="new">
				<h4 class="to">민원 게시글</h4>
					<div class="supost">
						<table>
							<thead>
								<tr>
									<th>전체 게시글 수</th>
									<th>답변완료</th>
									<th>미답변</th>
									<th>바로가기</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>${ requestScope.complainTotalcnt }</td>
									<td>${ requestScope.complainRECnt }</td>
									<td>${ requestScope.complainNotRECnt }</td>
									<td>
									<button class="btn btn-secondary"
										onclick="location.href=
		                			'${ pageContext.servletContext.contextPath }/login/admin/complainList'">
										보기</button>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				<h4 class="result"></h4>
			</div>
			<div class="total">
				<h4 class="to">문의 게시글</h4>
				<div class="supost">
					<table>
						<thead>
							<tr>
								<th>전체 게시글 수</th>
								<th>답변완료</th>
								<th>미답변</th>
								<th>바로가기</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>${ requestScope.qnaTotalcnt }</td>
								<td>${ requestScope.qnaRECnt }</td>
								<td>${ requestScope.qnaNotRECnt }</td>
								<td>
									<button class="btn btn-secondary"
										onclick="location.href=
		                			'${ pageContext.servletContext.contextPath }/login/admin/qnaList'">
										보기</button>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<div class="posttop">
			<h4 class="to">공지사항 게시글 조회수 top5</h4>
			<div class="supost2">
				<table>
					<thead>
						<tr>
							<th>번호</th>
							<th>조회수</th>
							<th>제목</th>
							<th>문의유형</th>
							<th>자세히</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="noticeHitTops"
							items="${ requestScope.noticeHitTops }">
							<tr>
								<td>${ noticeHitTops.num }</td>
								<td>${ noticeHitTops.hits }</td>
								<td>${ noticeHitTops.title }</td>
								<td>${ noticeHitTops.category.cateKind }</td>
								<td>
									<button class="btn btn-secondary"
										onclick="location.href=
		                			'${ pageContext.servletContext.contextPath }/login/admin/detailNotice.do?no=${ noticeHitTops.num }'">
										보기</button>
								</td>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<div class="posttop">
			<h4 class="to">FAQ 게시글 조회수 top5</h4>
			<div class="supost2">
				<table>
					<thead>
						<tr>
							<th>번호</th>
							<th>조회수</th>
							<th>제목</th>
							<th>문의유형</th>
							<th>자세히</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="faqHitTops" items="${ requestScope.faqHitTops }">
							<tr>
								<td>${ faqHitTops.num }</td>
								<td>${ faqHitTops.hits }</td>
								<td>${ faqHitTops.title }</td>
								<td>${ faqHitTops.category.cateKind }</td>
								<td><button class="btn btn-secondary"
										onclick="location.href=
		                			'${ pageContext.servletContext.contextPath }/login/admin/detailFaq.do?no=${ faqHitTops.num }'">
										보기</button></td>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</section>



	<jsp:include page="../../common/includepage/AdminFooter.jsp" />
</body>
</html>
