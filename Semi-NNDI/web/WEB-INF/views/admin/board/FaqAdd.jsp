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
	href="${pageContext.servletContext.contextPath}/resources/css/admin/postAdd.css">
<link
	href="https://fonts.googleapis.com/css2?family=Single+Day&display=swap"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script src="${pageContext.servletContext.contextPath}/resources/js/admincheck.js"></script>

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
				<h3 class="top">FAQ 등록</h3>
			</div>
			<div>
				<button id="back" class="back">목록으로</button>
			</div>
			<div>
				<div class="post add">
					<form id="update" action="${pageContext.servletContext.contextPath}/login/admin/insertFaq" method="post">
						<label>제목</label><br> <input type="text" id="faqtitle" name="title" minlength="10" placeholder="제목을 입력하세요" required><c:out value="${data}" escapeXml="true"/><br>
						<label>작성자</label><br> <input type="text" name="managerId" readonly value="${ sessionScope.loginMember.managerId }">
						<label>카테고리</label><br> <select name="cateNum" id="faqCate" required>
							<option value="">None</option>
							<option value="1">문화강좌</option>
							<option value="2">체육강좌</option>
							<option value="3">시설</option>
							<option value="4">직원</option>
							<option value="5">기타</option>
						</select><br>
						<label>내용</label><br>
						<textarea name="content" class="faqContent" id="content" cols="30" rows="15"
							style="resize: none;" minlength="10" class="faqcontent" placeholder="내용을 입력해주세요" required><c:out value="${data}" escapeXml="true"/></textarea>
						<br>
						<button id="addpost4" class="btns add" type="button">등 록 하
							기</button>
						<button class="btns" type="reset">다 시 작 성 하 기</button>
					</form>
				</div>
			</div>
		</div>
		<script>
			const back = document.getElementById("back");
			const addpost = document.getElementById("addpost4");
			back.onclick = function() {
				let text = " 이 창을 나가시겠습니까?\n 현재 입력하신 정보는 저장되지 않습니다.\n 나가시려면 '확인'을 누르세요.";
				/* console.log('누름확인'); */
				if (confirm(text) == true) {
					location.href = "${pageContext.servletContext.contextPath}/index.jsp";
				}
			};
<<<<<<< HEAD
			addpost.onclick = function() {
				let text = "FAQ를 등록하시겠습니까?\n등록하시려면 '확인'을 누르세요.";
				 /* if (confirm(text) == true) {
					document.getElementById("update").submit();
				} */
			};
=======
			/* addpost.onclick = function() {
				
				const content = document.getElementById("content").value.length;
				const title = document.getElementById("title").value.length;
				const cate = document.getElementById("cate").value.length;
				
				console.log(content)
				console.log(title)
				if(content != 0 && title !=0 && cate !=0){
					let text = "FAQ를 등록하시겠습니까?\n등록하시려면 '확인'을 누르세요.";
					if (confirm(text) == true) {
						document.getElementById("update").submit(); 
					}
				}
				else {
					alert('내용을 입력해주세요')
				}
				
				
			}; */
>>>>>>> main
		</script>

	</section>

	<jsp:include page="../../common/includepage/AdminFooter.jsp" />
</body>
</html>
