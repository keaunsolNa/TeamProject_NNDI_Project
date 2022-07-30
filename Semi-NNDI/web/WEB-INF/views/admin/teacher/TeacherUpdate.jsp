<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<!-- ajax -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<!-- jQuery -->
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
<title>Admin Teacher List</title>
</head>
<body>
   <jsp:include page="../../common/includepage/AdminHeader.jsp"/>
   
   <section>
    
      <jsp:include page="../../common/includepage/AdminAside.jsp"/>
     
    <div>
       <div class="post title">
           <h3 class="top">강사 정보수정</h3>
       </div>
       <div>
         <button id="back" class="back">목록으로</button>
       </div>
    
		    <div class="post add">
		        <form id="update" action="${pageContext.servletContext.contextPath}/login/admin/teacherTwoUpdate" method="post">
		            <table class="tb_02">
				          <tbody>
				          	<tr>
				              <th>강사고유번호</th>
				              <td><input name="no" type="text" value="${ teacher.no }" readonly></td>
				            </tr>
				            <tr>
				              <th>이름</th>
				              <td><input name="name" type="text" value="${ teacher.name }" minlength="2" readonly></td>
				            </tr>
				            <tr>
				              <th>성별</th>
				              <td><input name="gender" type="text" value="${ teacher.gender }" readonly></td>
				            </tr>
				            <tr>
				              <th>생년월일</th>
				              <td><input name="birth" type="date" value="${ teacher.birth }" required></td>
				            </tr>
				            <tr>
				              <th>이메일</th>
				              <td><input name="email" class="udtemail" type="text" value="${ teacher.email }" minlength="2" required></td>
				            </tr>
				            <tr>
				              <th>연락처</th>
				              <td><input name="phone" class="udtphone" type="text" value="${ teacher.phone }" minlength="11" required></td>
				            </tr>
				            <tr>
				              <th>주소</th>
				              <td><input name="address" class="udtadress" type="text" value="${ teacher.address }" minlength="5" required readonly></td>
				            </tr> 
				            
 				            <tr>
				              <th>계약해지 여부</th>
				              <td><input name="contractYn" type="text" value="${ teacher.contractYn }" readonly></td>
				            </tr> 
				          </tbody>
				          </table>
		              <button id="deletepost" class="btns" type="button">계약 해지 / 해지 취소</button>
		              <button id="updatepost" class="btns add" 
		              		  type="button">수 정 하 기</button>
		        </form>
		    </div>
  		</div>
    <!--  <script>
			const back = document.getElementById("back");
			const updatepost = document.getElementById("updatepost");
			const deletepost = document.getElementById("deletepost");
		    back.onclick = function(){
		      let text = " 이 창을 나가시겠습니까?\n 현재 입력하신 정보는 저장되지 않습니다.\n 나가시려면 '확인'을 누르세요.";
		      /* console.log('누름확인'); */
		      if (confirm(text) == true) {
		    	   location.href = "${pageContext.servletContext.contextPath}/login/admin/teacherList"; 
		      }
		    };
		    updatepost.onclick = function(){
			    let text = "강사 정보를 수정하시겠습니까?\n수정하시려면 '확인'을 누르세요.";
			    if (confirm(text) == true) {
			    	  document.getElementById("update").submit();
			      }
			 };
		    deletepost.onclick = function(){
				let text = "계약을 해지 하시겠습니까?\n해지하시려면 '확인'을 누르세요.\n계약해지를 취소하실 경우 취소를 눌러주세요.";
			    if (confirm(text) == true) {
			    	location.href = "${pageContext.servletContext.contextPath}/login/admin/deleteTeacher.do?no=${ teacher.no }";
			    } else {
			    	location.href = "${pageContext.servletContext.contextPath}/login/admin/recontactTeacher.do?no=${ teacher.no }";
			    }
		    };
			
			
	  </script> 
	  <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		const $searchZipCode = document.getElementById("searchZipCode");
		const $goMain = document.getElementById("goMain");
		
		$searchZipCode.onclick = function() {
		
			new daum.Postcode({
				oncomplete: function(data){
					document.getElementById("zipCode").value = data.zonecode;
					document.getElementById("address1").value = data.address;
					document.getElementById("address2").focus();
				}
			}).open();
		}
		
		$goMain.onclick = function() {
			location.href = "${ pageContext.servletContext.contextPath }";
		}
	</script> -->
	</section>
   
   <jsp:include page="../../common/includepage/AdminFooter.jsp"/>
</body>
</html>