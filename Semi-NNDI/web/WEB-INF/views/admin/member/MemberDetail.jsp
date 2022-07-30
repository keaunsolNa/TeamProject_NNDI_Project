
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
<!-- ajax -->
<script
	 src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- jQuery -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

<title>Admin MemberDetailList</title>
</head>
<body>
	<jsp:include page="../../common/includepage/AdminHeader.jsp" />

	<section>

		<jsp:include page="../../common/includepage/AdminAside.jsp" />

		<div>
			<div class="post title">
				<h3 class="top">회원 상세내역 조회</h3>
			</div>
		</div>
		<div class="post list" style="margin-left:3.2%">
			<input type="hidden" id="id" name="num"
				value="${ requestScope.detailMemberAlive.id }">
			<table class="tb_02">
				<tbody>
					<tr>
						<th>성명</th>
						<td>${ requestScope.detailMemberAlive.name }</td>
					</tr>
					<tr>
						<th>성별</th>
						<td>${ requestScope.detailMemberAlive.gender }</td>
					</tr>
					<tr>
						<th>아이디</th>
						<td>${ requestScope.detailMemberAlive.id }</td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td>****************</td>
					</tr>
					<tr>
						<th>생년월일</th>
						<td>${ requestScope.birth }</td>
					</tr>
					<tr>
						<th>이메일</th>
						<td>${ requestScope.detailMemberAlive.email }</td>
					</tr>
					<tr>
						<th>주소</th>
						<td>${ requestScope.detailMemberAlive.address }</td>
					</tr>
					<tr>

						<th>연락처</th>
						<td>${ requestScope.detailMemberAlive.phone }</td>
					</tr>
					<tr>
						<th>마지막 로그인</th>
						<td>${ requestScope.detailMemberAlive.lastLogin }</td>
					</tr>
					<tr>
						<th>회원 상태</th>
						<td>${ requestScope.detailMemberAlive.userStatus }</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="butmar40" style="margin-bottom:3%;  ">
			<button id="updatePwd" class="btn btn-primary" style="margin-right:1%">비밀번호
				초기화</button> 
			<button id="rentBooks" type="button" class="btn btn-primary" style="margin-right:1%">대출 내역 조회</button>
			<button id="takeClasses" type="button" class="btn btn-primary " style="margin-right:1%">수강 내역 조회</button>
			<button id="back" type="button" class="btn btn-secondary " >목록으로</button>
		</div>
	</section>

	<script>
   
    $("#updatePwd").click(function(){
      let txt = "해당 이용자의 비밀번호를 초기화 하시겠습니까?";
      const id = $("#id").val();
      if (confirm(txt) == true) {
        $.ajax({
             url: "${pageContext.servletContext.contextPath}/login/admin/memberPwdUpdate",
             type: "get",
             data:{
            	 id : id,
             },
             success: function(data){
                     alert('비밀번호가 변경되었습니다.\n변경된 비밀번호는 해당회원의 이메일로 발송되었습니다.');
                     console.log(data);
             },
             error: function(request, status){
                 alert("네트워크를 확인해주세요.")
             }
        });
 		}
    });
    
    const back = document.getElementById("back");
	const rentBooks = document.getElementById("rentBooks");
	const takeClasses = document.getElementById("takeClasses");
    back.onclick = function(){
    	location.href = "${pageContext.servletContext.contextPath}/login/admin/memberList"; 
    };
    rentBooks.onclick = function(){
    	location.href = "${pageContext.servletContext.contextPath}/login/admin/memberRentBookList.do?id=${ requestScope.detailMemberAlive.id }"; 
    };
    takeClasses.onclick = function(){
    	location.href = "${pageContext.servletContext.contextPath}/login/admin/memberClassList.do?id=${ requestScope.detailMemberAlive.id }"; 
    };
    
    </script>

	<jsp:include page="../../common/includepage/AdminFooter.jsp" />
</body>
</html>