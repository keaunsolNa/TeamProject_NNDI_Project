<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script src="${pageContext.servletContext.contextPath}/resources/js/admincheck.js"></script>
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/resources/css/admin/nndi-style.css">
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/resources/css/admin/sidebars.css">
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/resources/css/admin/post.css">
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/resources/css/admin/postAdd.css">
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
<title>Admin Notice Add</title>
</head>
<body>
	<jsp:include page="../../common/includepage/AdminHeader.jsp" />

	<section>

		<jsp:include page="../../common/includepage/AdminAside.jsp" />

			<div>
				<div class="post title">
					<h3 class="top">공지사항 등록하기</h3>
				</div>
				<div>
					<button id="back" class="back">목록으로</button>
				</div>
				<div class="post add">

					<form id="update" action="${pageContext.servletContext.contextPath}/login/admin/noticeAdd" method="post">
						<label>제목</label><br> <input type="text" id="noticetitle" name="title" minlength="10" placeholder="제목을 입력해주세요" required><br>
						<label>작성자</label><br> <input type="text" name="managerId" readonly value="${ sessionScope.loginMember.managerId }">
						<label>카테고리</label><br> <select id="noticecate" name="cateNum" required>
							<option value="">None</option>
							<option value="1">문화강좌</option>
							<option value="2">체육강좌</option>
							<option value="3">시설</option>
							<option value="4">직원</option>
							<option value="5">기타</option>
						</select><br> <label>파일첨부</label><br> <input type="file" name="uploadFileKey" multiple="multiple" required><br>
						<label>내용</label><br>
						<textarea name="content" id="content" class="noticecontent" cols="30" rows="15"
							style="resize: none;" placeholder="10글자 이상 입력해주세요" required></textarea>
						<br>
						<button id="addpost2" class="btns add" type="button">등 록 하
							기</button>
						<button class="btns" type="reset">다 시 작 성 하 기</button>
					</form>
				</div>
			</div>
<!-- 		<script>
			const back = document.getElementById("back");
			const addpost = document.getElementById("addpost");
			back.onclick = function() {
				let text = " 이 창을 나가시겠습니까?\n 현재 입력하신 정보는 저장되지 않습니다.\n 나가시려면 '확인'을 누르세요.";
				/* console.log('누름확인'); */
				if (confirm(text) == true) {
					location.href = "${pageContext.servletContext.contextPath}/login/admin/noticeList";
				}
			};
			addpost.onclick = function() {
				let text = "공지사항을 등록하시겠습니까?\n등록하시려면 '확인'을 누르세요.";
				if (confirm(text) == true) {
					document.getElementById("update").submit();
				}
			};
		</script> -->

	</section>

	<jsp:include page="../../common/includepage/AdminFooter.jsp" />
</body>
</html>
