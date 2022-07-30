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
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/resources/css/admin/teacherEmp.css">
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
<title>Admin EmployTeacher List</title>
</head>
<body>
	<jsp:include page="../../common/includepage/AdminHeader.jsp" />

	<section>

		<jsp:include page="../../common/includepage/AdminAside.jsp" />

		<div>
			<div class="post title">
				<h3 class="top">강사모집 글작성</h3>
			</div>
		</div>
		<div>
			<button id="back" class="back">목록으로</button>
		</div>
		<div class="post list">
			<form id="update"
				action="${pageContext.servletContext.contextPath}/login/admin/employTeacherinsert"
				method="post">
				<table class="tb_02">
					<tbody>
						<tr>
							<th>작성자</th>
							<td><input name="managerId2" type="text"
								value='${ sessionScope.loginMember.managerId }' readonly></td>
						</tr>
						<tr>
							<th>글제목</th>
							<td><textarea name="title" id="empcontent" cols="60" rows="1"
									style="resize: none;" minlength="5" placeholder="5글자 이상 입력해주세요" required><c:out value="${data}" escapeXml="true"/></textarea>
							</td>
						</tr>
						<tr>
							<th>강좌고유번호</th>
							<td><input name="clsNum" id="clsNumber" type="text" placeholder="위의 강사표를 참고하여 입력해 주세요" required><c:out value="${data}" escapeXml="true"/></td>
						</tr>
						<tr>
							<th>모집여부</th>
							<td><select id="empYn" name="empYn" required>
									<option value=""></option>
									<option value="Y">모집완료</option>
									<option value="N">모집중</option>
							</select></td>
						</tr>
						<tr>
							<th>자격요건</th> 
							<td><textarea name="empCondition" id="emp2content" cols="60"
									rows="10" style="resize: none;" minlength="10" placeholder="10글자 이상 입력해주세요" required><c:out value="${data}" escapeXml="true"/></textarea>
							</td>
						</tr>
						<tr>
							<th>모집인원</th>
							<td><input name="empNumber" type="number" placeholder="숫자만 입력해주세요" id="empnumber"
								value=${ detailEmp.empNumber }><c:out value="${data}" escapeXml="true"/></td>
						</tr>
						<tr>
							<th>근무환경</th>
							<td><textarea name="environment" id="empevcontent" cols="60"
									rows="10" style="resize: none;" minlength="10" placeholder="10글자 이상 입력해주세요" required><c:out value="${data}" escapeXml="true"/></textarea>
							</td>
						</tr>
						<tr>
							<th>채용절차</th>
							<td><textarea name="empProcess" id="empprocontent" cols="60"
									rows="10" style="resize: none;" minlength="10" placeholder="10글자 이상 입력해주세요" required><c:out value="${data}" escapeXml="true"/></textarea>
							</td>
						</tr>
					</tbody>
				</table>
				<button id="addpost7" class="btns add">등 록 하 기</button>
            	<button class="btns" type="reset">다 시   작 성 하 기</button>
			</form>
		</div>
		<script>
			const back = document.getElementById("back");
			const addpost = document.getElementById("addpost");
			back.onclick = function() {
				let text = " 이 창을 나가시겠습니까?\n나가시려면 '확인'을 누르세요.";
				/* console.log('누름확인'); */
				if (confirm(text) == true) {
					location.href = "${pageContext.servletContext.contextPath}/login/admin/employTeacherList";
				}
			};
			addpost.onclick = function() {
				let text = "게시글을 등록하시겠습니까?\n등록하시려면 '확인'을 누르세요.";
				/* if (confirm(text) == true) {
					document.getElementById("update").submit();
				} */
			};
		</script>
	</section>

	<jsp:include page="../../common/includepage/AdminFooter.jsp" />
</body>
</html>