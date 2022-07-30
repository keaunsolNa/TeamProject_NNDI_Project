<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/resources/css/admin/nndi-style.css">
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/resources/css/admin/sidebars.css">
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/resources/css/admin/post.css">
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/resources/css/admin/teacherEmp.css">
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/resources/css/admin/selectTeacher.css">
<link
	href="https://fonts.googleapis.com/css2?family=Single+Day&display=swap"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=Single+Day&display=swap" rel="stylesheet">
<script src="${pageContext.servletContext.contextPath}/resources/js/admincheck.js"></script>
<style>
.btn {
	font-size: 20px !important;
	color: aliceblue !important;
}
</style>
    <!-- ajax -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<!-- jQuery -->
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<title>Admin Teacher List</title>
</head>
<body>
	<jsp:include page="../../common/includepage/AdminHeader.jsp" />

	<section>

		<jsp:include page="../../common/includepage/AdminAside.jsp" />


		<div>
			<div class="post title">
				<h3 class="top">강좌 개설</h3>
			</div>
			<div>
				<button id="back" class="back">목록으로</button>
			</div>

			<div class="post add">
				<h5 style="text-align: center;">강사목록</h5>
				<table>
					<tr>
					<thead>
						<tr>
							<th>강사코드</th>
							<th>이름</th>
							<th>연락처</th>
							<th>이메일</th>
							<th>주소</th>
							<th>계약해지여부</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="teacher" items="${ requestScope.teacherList }">
							<tr>
								<td>${ teacher.no }</td>
								<td>${ teacher.name }</td>
								<td>${ teacher.phone }</td>
								<td>${ teacher.email }</td>
								<td>${ teacher.address }</td>
								<td>${ teacher.contractYn }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="post add" style="float: right;">
				<form
					id="addpost2"
					action="${ pageContext.servletContext.contextPath }/login/admin/classAdd"
					method="post">
					<label>강좌명 </label> <input name="clsName" type="text" id="burgerking" class="input1" minlength="2" placeholder="2글자 이상 입력해주세요" required> 
					<label>강좌 분류 </label> <select class="input1" name="clsCategoryName" id="clsCategoryName" required>
						<option value="">none</option>
						<option value="문화">문화</option>
						<option value="체육">체육</option>
					</select> <br> 
					<label>강사 코드 </label> <input type="number" id="teachcode" name="tcrNo" class="input1" minlength="10" placeholder="강사코드를 확인한 후 숫자만 입력해주세요" required> 
					<label>최대수강인원 </label> <input type="number" id="clsMaxNum" class="input1" name="clsMaxCnt" placeholder="숫자만 입력해주세요" required><br>
					<label>강의실 </label> <select name="cenName" id="clsroom" class="input1" required>
						<option value=" ">--체육 시설--</option>
						<option value="201">수영장</option>
						<option value="301">탁구장</option>
						<option value="302">배드민턴장</option>
						<option value="303">클라이밍</option>
						<option value="401">농구장</option>
						<option value=" ">--문화 시설--</option>
						<option value="304">304호 강의실</option>
						<option value="305">305호 강의실</option>
						<option value="306">306호 강의실</option>
						<option value="307">307호 강의실</option>
						<option value="308">308호 강의실</option>
						<option value="309">309호 강의실</option>
						<option value="310">310호 강의실</option>
						<option value=" " selected>--</option>
					</select> <label>강의 추천연령</label> <select id="clsage" class="input1" name="clsRecoAge"
						required>
						<option value="" selected>None</option>
						<option value="아동">아동</option>
						<option value="청소년">청소년</option>
						<option value="성인">성인</option>
						<option value="시니어">시니어</option>
						<option value="전체">전체</option>
					</select> <label>강좌수강료 </label> <input type="number" class="input1"
						id="ccCost" name="clsCost" min="10" placeholder="숫자만 입력해주세요" required>
					<label>강좌요일 </label> <input type="text" class="input1" id="ccday" 
						name="clsDay" minlength="1" placeholder="요일을 입력해주세요 예)금, 월화 ,월수목"
						required><br> <label>강좌 설명</label>
					<textarea name="clsExplain" class="peanut" id="content" cols="30"
						rows="3" style="resize: none;" minlength="10"
						placeholder="10글자 이상 입력해주세요" required></textarea>
					<br> <label>강의 기간 </label> <input type="date" id="start"
						name="clsStartDay" class="input1" required> ~ <input
						type="date" id="end" name="clsEndDay" class="input1" required>
					<p>
						<label>강의 시간</label> <input type="text" name="clsRunTime"
							id="clsruntime" class="input1"
							placeholder="강의 진행 시간을 입력해 주세요. 예) 12:00~13:00" required>
						<label style="margin-left: 1%;">진행시간</label> <input type="number" id="cls1time"
							name="clsTime" class="input1" placeholder="1회 진행시 총 진행시간을 입력하세요"
							required>
					<p>

						<button id="addpost3" type="button" class="btns add">등 록 하
							기</button>
						<button class="btns">다 시 작 성 하 기</button>
				</form>
			</div>
		</div>
		
		<script>
					const back = document.getElementById("back");
					const addpost = document.getElementById("addpost");
					const selectTeacher = document
							.getElementById("selectTeacher");

					back.onclick = function() {
						let text = " 이 창을 나가시겠습니까?\n 현재 입력하신 정보는 저장되지 않습니다.\n 나가시려면 '확인'을 누르세요.";
						/* console.log('누름확인'); */
						if (confirm(text) == true) {
							location.href = "${pageContext.servletContext.contextPath}/login/admin/classList";
						}
					};
		</script>
			  
	<script type="text/javascript">
		/* 기간조회시 입력 오류 확인 날짜 비교 */
		$("#addpost2").click(function(){ 
			let date = new Date();
			
			let minDate =
		date.setDate(date.getDate());
					console.log('minDate' + minDate);

					let start = $("#start").val();
					let end = $("#end").val();

					console.log(start);
					console.log(end);

					let startArr = start.split('-');
					let endArr = end.split('-');

					console.log(startArr);
					console.log(endArr);

					let startDateCompare = new Date(startArr[0],
							parseInt(startArr[1]) - 1, startArr[2]);
					let endDateCompare = new Date(endArr[0],
							parseInt(endArr[1]) - 1, endArr[2]);

					console.log(startDateCompare);
					console.log(endDateCompare);

					if (startDateCompare.getTime() < minDate) {
						alert("강좌 시작일은 금일 날짜 이후부터 가능합니다!");
						$("#start").focus();
					} else if (startDateCompare.getTime() > endDateCompare
							.getTime()) {
						alert("시작 날짜와 종료 날짜를 확인해 주세요!");
						$("#start").focus();
					} /* else {
						let text = "강좌를 등록하시겠습니까?\등록하시려면 '확인'을 누르세요.";
						if (confirm(text) == true) {
							document.getElementById("addpost2").submit();
						}
					} */
				})
	</script>
	</section>
	
	<jsp:include page="../../common/includepage/AdminFooter.jsp" />
</body>
</html>
