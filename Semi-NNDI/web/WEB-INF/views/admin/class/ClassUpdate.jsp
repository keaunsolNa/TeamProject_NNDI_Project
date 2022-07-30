<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/nndi-style.css">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/sidebars.css" >
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/post.css" >
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/teacherEmp.css" >
    <link href="https://fonts.googleapis.com/css2?family=Single+Day&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <script src="${pageContext.servletContext.contextPath}/resources/js/admincheck.js"></script>
    <style>
      .btn{
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
	<jsp:include page="../../common/includepage/AdminHeader.jsp"/>
	
	<section>
	 
	   <jsp:include page="../../common/includepage/AdminAside.jsp"/>
	  
    
		<div>
		    <div class="post title">
		        <h3 class="top">강좌 수정</h3>
		    </div>
		    <div>
		      <button id="back" class="back">목록으로</button>
		    </div>
    
		    <div class="post add">
		        <form id="update" action="${pageContext.servletContext.contextPath}/login/admin/classTwoUpdate" method="post">
		            <table class="tb_02">
				          <tbody>
				          	<tr>
				              <th >강좌고유번호</th>
				              <td><input name="clsNum" type="text" value="${ cls.clsNum }" readonly></td>
				            </tr>
				            <tr>
				              <th >강좌명</th>
				              <td><input name="clsName" class="clsName" type="text" value="${ cls.clsName }"></td>
				            </tr>
				            <tr>
				              <th >강좌분류</th>
				              <td><input name="clsCategoryName" type="text" value="${ cls.clsCategoryName }" readonly></td>
				            </tr>
				            <tr>
				              <th>강사이름</th>
				              <td><input name="tcrNo" type="text" class="teaCode" value="${ cls.teacher.name }" readonly></td>
				            </tr>
				            <tr>
				              <th>강사코드</th>
				              <td><input name="tcrNo" type="text" class="teaCode" value="${ cls.teacher.no }" readonly></td>
				            </tr>
				              <th>강좌 최대 수강 인원</th>
				              <td><input name="clsMaxCnt" class="maxnum" type="text" min="1" max="30" value="${ cls.clsMaxCnt }"></td>
				            </tr>
				            <tr>
				              <th>강좌 개강일</th>
				              <td><input id="start" name="clsStartDay" type="date" value="${ cls.clsStartDay }" required></td>
				            </tr>
				            <tr>
				              <th>강좌 종강일</th>
				              <td><input id="end" name="clsEndDay" type="date" value="${ cls.clsEndDay }" required></td>
				            </tr>
				            <tr>
				              <th>강좌 설명</th>
				              <td><input name="clsExplain" class="clsContent" type="text" value="${ cls.clsExplain }"></td>
				            </tr>
				            <tr>
				              <th>강좌 진행 총 시간</th>
				              <td><input name="clsTime" class="clsTime" type="text" value="${ cls.clsTime }"></td>
				            </tr>
			              	<tr>
				              <th>강좌 진행 시간</th>
				              <td><input name="clsRunTime" class="clsTime2" type="text" value="${ cls.clsRunTime }"></td>
				            </tr>
				            <tr>
				              <th>강좌 수강료</th>
				              <td><input name="clsCost" class="clsCost" type="number" min="1000" value="${ cls.clsCost }"></td>
				            </tr>
				            <tr>
				              <th>강좌 요일</th>
				              <td><input name="clsDay" class="clsDay" type="text" value="${ cls.clsDay }"></td>
				            </tr>
				            <tr>
				              <th>강좌 활성화여부</th>
				              <td>
			                  <select id="startYn" name="clsStartYn" required>
			                    <option value="">none</option>
			                    <option value="Y">Yes</option>
			                    <option value="N">No</option>
			                  </select>
			                </td>
				            </tr>
				          </tbody>
				          </table>
		              <button id="deletepost" class="btns" type="button">삭 제 하 기</button>
		              <button id="updatepost" class="btns add" 
		              		  type="button">수 정 하 기</button>
		        </form>
		    </div>
  		</div>
<!-- 	  <script>
			const back = document.getElementById("back");
			const updatepost = document.getElementById("updatepost");
			const deletepost = document.getElementById("deletepost");
		    back.onclick = function(){
		      	let text = " 이 창을 나가시겠습니까?\n 현재 입력하신 정보는 저장되지 않습니다.\n 나가시려면 '확인'을 누르세요.";
		      	/* console.log('누름확인'); */
		      	if (confirm(text) == true) {
		    	   location.href = "${pageContext.servletContext.contextPath}/login/admin/classList"; 
		      	}
		    };
		    deletepost.onclick = function(){
				let text = "강좌를 삭제하시겠습니까?\n삭제하시려면 '확인'을 누르세요.";
			    if (confirm(text) == true) {
			    	location.href = "${pageContext.servletContext.contextPath}/login/admin/classDelete.do?num=${ cls.clsNum }";
			    } 
		    };
	  </script> -->
	  <script type="text/javascript">
		/* 기간조회시 입력 오류 확인 날짜 비교 */
		$("#updatepost").click(function(){ 
			let date = new Date();
			
			let minDate = date.setDate(date.getDate());
			console.log('minDate' + minDate);
	
			let start = $("#start").val();
			let end = $("#end").val();
			
			console.log(start);
			console.log(end);
				
			let startArr = start.split('-');
			let endArr = end.split('-');
				
			console.log(startArr);
			console.log(endArr);
				
			let startDateCompare = new Date(startArr[0], parseInt(startArr[1])-1, startArr[2]);
			let endDateCompare = new Date(endArr[0], parseInt(endArr[1])-1, endArr[2]);
				
			console.log(startDateCompare);
			console.log(endDateCompare);
			
			if(startDateCompare.getTime() < minDate){
				alert("강좌 시작일은 금일 날짜 이후부터 가능합니다!");
				$("#start").focus();
			} else if(startDateCompare.getTime() > endDateCompare.getTime()){
				alert("시작 날짜와 종료 날짜를 확인해 주세요!");
				$("#start").focus();
			} /* else {
				let text = "강좌정보를 수정하시겠습니까?\n수정하시려면 '확인'을 누르세요.";
			    if (confirm(text) == true) {
			    	  document.getElementById("update").submit();
			      }
			} */
		})
		
	</script>
	</section>
	
	<jsp:include page="../../common/includepage/AdminFooter.jsp"/>
</body>
</html>
