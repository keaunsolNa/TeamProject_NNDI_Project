<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js" type="text/javascript"></script>
    
<title>Admin Teacher List</title>
</head>
<body>
	<jsp:include page="../../common/includepage/AdminHeader.jsp"/>
	
	<section>
	 
	   <jsp:include page="../../common/includepage/AdminAside.jsp"/>
	  
    <div>
	    <div class="post title">
	        <h3 class="top">강사 등록</h3>
	    </div>
	    <div>
	      <button id="back" class="back">목록으로</button>
	    </div>
	    
	    <div class="post add">
	    <form id="teacheradd" action="${ pageContext.servletContext.contextPath }/login/admin/teacherAdd" method="post" >
	        <label>이름 </label>
	        <input name="name" type="text" class="input1" id="uName" placeholder="이름을 두 글자이상 입력해주세요" required>
	        <label >성별 </label>
		        <select class="input1" name="gender"
					id="gender" required>
		              <option value="">none</option>
		              <option value="M" id="M" >남</option>
                	  <option value="W" id="W">여</option>
		        </select>
	        <label>생년월일 </label>
		    <input type="date" name="birth" class="input1" id="bbirth" required>
		    
		    
		    <label>이메일 &nbsp;&nbsp;&nbsp;</label><input type="text" class="mam" name="email01" id="str_email01" style="width:250px" required>@
                	<input type="text" name="email02" id="str_email02" style="width:300px;" disabled value="naver.com" required>
                		<select style="width:300px;margin-right:10px" name="email03" id="selectEmail">
	                    	<option value="1">직접입력</option>
	                        <option value="naver.com" selected>naver.com</option>
	                        <option value="hanmail.net">hanmail.net</option>
	                        <option value="hotmail.com">hotmail.com</option>
	                        <option value="nate.com">nate.com</option>
	                        <option value="yahoo.co.kr">yahoo.co.kr</option>
	                        <option value="empas.com">empas.com</option>
	                        <option value="dreamwiz.com">dreamwiz.com</option>
	                        <option value="freechal.com">freechal.com</option>
	                        <option value="lycos.co.kr">lycos.co.kr</option>
	                        <option value="korea.com">korea.com</option>
	                        <option value="gmail.com">gmail.com</option>
	                        <option value="hanmir.com">hanmir.com</option>
	                        <option value="paran.com">paran.com</option>
            </select><br>
		    
            <label>연락처 </label>
		    <input type="text" id="phnumber" class="input1" name="phone" required>
		    
		    <label for="address1"> 우편 번호: </label>
					<input type="button" value="검색" class="btn btn-yg" id="searchZipCode" style="border: 1px solid black; background-color: #9d9adf;">
					<input type="text" name="zipCode" id="zipCode" required>
			
				<br>
			
				<label for="address2"> 주소: </label>            
					<input type="text" name="address1" id="address1" required>
			
				<br>
			
				<label for="address3"> 상세 주소: </label>		
					<input type="text" name="address2" id="address2" minlength="2" required> 

    			<br>
		    
	        <label >계약해지 여부 </label>
		    <select class="input1" name="contractYn" id="contractYn" required>
		             <option value="">none</option>
		             <option value="Y">Y</option>
		             <option value="N">N</option>
		    </select> <br><br><br>
	          <button id="addpost" class="btns add">등 록 하 기</button>
	          <button class="btns">다 시   작 성 하 기</button><br><br><br><br><br><br>
	      </form>
	  	</div>
	  </div>

 <script>
	const back = document.getElementById("back");
	const addpost = document.getElementById("addpost");
	back.onclick = function() {
		let text = " 이 창을 나가시겠습니까?\n 현재 입력하신 정보는 저장되지 않습니다.\n 나가시려면 '확인'을 누르세요.";
		/* console.log('누름확인'); */
		if (confirm(text) == true) {
			location.href = "${pageContext.servletContext.contextPath}/login/admin/teacherList";
		}
	};

	addpost.onclick = function() {
		let text = "강사를 등록하시겠습니까?\등록하시려면 '확인'을 누르세요.";
		if (confirm(text) == true) {
			document.getElementById("addpost").submit();
		}
	};
	</script>
 <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		const $searchZipCode = document.getElementById("searchZipCode");
		
		
		$searchZipCode.onclick = function() {
		
			new daum.Postcode({
				oncomplete: function(data){
					document.getElementById("zipCode").value = data.zonecode;
					document.getElementById("address1").value = data.address;
					document.getElementById("address2").focus();
				}
			}).open();
		}
		
	</script>
	</section>
	
	<jsp:include page="../../common/includepage/AdminFooter.jsp"/>
</body>
</html>