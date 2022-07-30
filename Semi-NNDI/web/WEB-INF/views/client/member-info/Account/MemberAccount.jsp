<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script 
		type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
    <link 
    	rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/Account.css">
    
<title>너나들이 중랑</title>
	<jsp:include page="../../../common/includepage/UserHeader.jsp"/>
	
	<style>
	
		label{
			color:gray;
		}
		
		.id_ok{
			color:#008000;
			display: none;
		}

		.id_already{
			color:#6A82FB; 
			display: none;
		}
		
	</style>

</head>
<body>
<aside>
	<jsp:include page="../../../common/includepage/UserFindAside.jsp"/>
</aside>
<section>
        <div class="post title" style="background-color: rgba(254, 190, 190, 0.5); ">
            <h3 class="top" style="text-align: center">회원 가입</h3>
        </div>

		<br>
   		<div class="hc"style="top: 10%" >
        	<div class="it">약관 동의</div>
        	<div class="it first">회원정보 입력</div>
        	<div class="it">가입 완료</div>
   	 	</div>

    	<div class="post add">
        	
        	<form action="${ pageContext.servletContext.contextPath }/Account/input" method="post" >
            
            	<label>이름: </label>
            		<input type="text" name="uName" id="uName"  placeholder="한글로 2자 이상" required>
				
				<br>
            	
            	<label>성별: </label>
            		<select id="ugender" name="selectGender"  style="width: auto;" required>
            			<option value="" ></option>
                		<option value="male" id="male" >남</option>
                		<option value="female" id="female">여</option>
            		</select>
            	
            	<br>

            	<label for="uid" id="inputid" >아이디:</label>   
            		<input type="text" id="uid" name="userId" size="30" placeholder="소문자와 숫자 6~12자리" required>
            		<button type="button" id="sendIdCheck">중복체크</button>
            		<p id="checkId"></p>
    			<br>
    			
    			<label for="idQueNum" id="idQueNum">아이디 질문: </label>
    				<select name="selectIdQueNum" id="selectIdQueNum">
    					<option value="1">출신 고등학교를 적어주세요.</option>
    					<option value="2">가장 친한 친구의 이름을 적어주세요.</option>
		    			<option value="3">가장 존경하는 인물의 이름을 적어주세요.</option>
		    			<option value="4">어릴적 별명을 적어주세요.</option>
		    			<option value="5">고향을 적어주세요.</option>
		    			<option value="6">좋아하는 책의 제목을 적어주세요.</option>
   					</select>
    		
    			<br>
    			<label for="idQueAnser">질문 답변: </label>
    				<input type="text" id="idQueAnser" name="idQueAnswer" placeholder="답변을 작성하세요." required>
    		
    			<br>
            
            	<label for="upwd" id="inputpwd">비밀번호: </label>  
            		<input type="password" name="password" id="password" size="30" placeholder="소문자,숫자,특수문자 8~12글자" required> <p id="pwdresult"></p>
    
    			<p id="pwdresult2"></p> 
            
            	<label for="upwd2" id="inputpwd2">비밀번호 확인: </label>
	            	<input type="password" name="password2" id="password2" size="30" placeholder="비밀번호 재입력" required>
            
    			<br>
    		
           		<label>이메일: </label><input type="text" name="str_email01" id="str_email01" style="width:100px" required placeholder="영문과 숫자만 입력 가능"> @
                	<input type="text" name="str_email02" id="str_email02" style="width:100px;" disabled value="naver.com" required>
                		<select style="width:100px;margin-right:10px" name="selectEmail" id="selectEmail">
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
                  	</select>
				<br>                                                                   
            
            	<label for="birth" id="input">생년월일:</label>
            		<input type="date" name="userBD" id="userBirthDate" size="30" required> <p>
    
            
            	<label for="address1"> 우편 번호: </label>
					<input type="text" name="zipCode" id="zipCode" readonly>
					<input type="button" value="검색" class="btn btn-yg" id="searchZipCode" style="border: 1px solid black; background-color:  rgba(254, 190, 190, 1);">
			
				<br>
			
				<label for="address2"> 주소: </label>            
					<input type="text" name="address1" id="address1" readonly>
			
				<br>
			
				<label for="address3"> 상세 주소: </label>		
					<input type="text" name="address2" id="address2"
							value='<c:out value="${data}" escapeXml="false"/>'>

    			<br>
            
            	<label for="phone" id="input">연락처: </label>
            		<select name="selectUserPhone" style="width: auto;" required>
	                	<option value="010">010</option>
	                	<option value="016">016</option>
	                	<option value="011">011</option>
	                	<option value="019">019</option>
            		</select>
            		
            		<input type="tel" name="phone2" size="4" id="phone2" required>
            		<input type="tel" name="phone3" size="4" id="phone3" required><p>
            
           		<div style="margin-left: 40%;">
            		<button id="submitbutton">등록</button>
                	<button type="reset">취소</button>
            	</div>
        	</form>
    	</div>
</section>

</body>
	<jsp:include page="../../../common/includepage/UserFooter.jsp"/>
	
<script>

$(function(){

    $("#uName").focus(function(){
    }).blur(function(){
    }).change(function(){
    }).select(function(){
    })

    $("#uName").change(function(){
        
        var regExp = /^[가-힣]{2,}$/;

        if(regExp.test($(this).val())){     
        } else {
        	alert("한글로 두 자 이상 입력하세요")
            $(this).val('');
        }
    })

      $("#uid").change(function(){
    	
    	var idCheck = /^(?=.*[a-z])(?=.*[0-9]).{6,12}$/;
    	
    	if(idCheck.test($(this).val())){
    	} else {
    		alert("아이디는 소문자, 숫자로 이루어진 6~12자로 작성해주세요.")
    		$(this).val('');
    	}
    }) 

      $("#phone2").change(function(){
    	
    	var phoneCheck = /^(?=.*[0-9]).{3,4}$/;
    	
    	if(phoneCheck.test($(this).val())){
    	} else {
    		alert("전화번호 앞자리는 3~4자리 숫자만 입력가능합니다..")
    		$(this).val('');
    	}
    })
      
      $("#phone3").change(function(){
    	
    	var phoneCheck2 = /^(?=.*[0-9]).{4}$/;
    	
    	if(phoneCheck2.test($(this).val())){
    	} else {
    		alert("전화번호 뒷자리는 4자리 숫자만 입력가능합니다..")
    		$(this).val('');
    	}
    })
    
     $("#password").change(function(){
    	
    	var pwdCheck = /^(?=.*[a-z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/;
    	
    	if(pwdCheck.test($(this).val())){
    	} else {
    		alert("비밀번호는 소문자, 특수기호, 숫자로 이루어진 8~12글자로 작성해주세요.")
    		$(this).val('');
    	}
    })
    
    $("#password2").change(function(){                  
        if($("#password").val() != $(this).val()){     
        	alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.")
        	$(this).val('');
        } else {
        }
    })

    $("#password").change(function(){                   
        if($("#password2").val() != $(this).val()){      
            if(!$("#password2").val().length == 0) {     
            	alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.")
            	$(this).val('');
            }
        } else {
        }
    })
    
    $('#selectEmail').change(function(){
        $("#selectEmail option:selected").each(function () {
                                                                         
          if($(this).val()== '1'){ 
          $("#str_email02").val('');                        
           $("#str_email02").attr("disabled",false); 
           }else{ 
          $("#str_email02").val($(this).text());     
          $("#str_email02").attr("disabled",true); 
         }
      })
  })
})
</script>
	  <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		const searchZipCode = document.getElementById("searchZipCode");
		
		searchZipCode.onclick = function() {
		
			new daum.Postcode({
				oncomplete: function(data){
					document.getElementById("zipCode").value = data.zonecode;
					document.getElementById("address1").value = data.address;
					document.getElementById("address2").focus();
				}
			}).open();
		}
		
		
		
	</script>
	<script type="text/javascript">
	<!-- 아이디 중복체크 확인 ajax처리 -->
	$("#sendIdCheck").click(function(){
		const userId = $("#uid").val();
		console.log("호출됐니");
	        $.ajax({
	             url: "${pageContext.servletContext.contextPath}/client/checkUserId",
	             type: "get",
	             data:{
	            	 userId : userId
	             },
	             success: function(data){
	            	 if(data=="1"){
	                     $("#checkId").html("현재 사용중인 아이디 입니다. 다시 시도해 주세요!");
	                     console.log(data);
	                     $("#checkId").css('color', 'red').css('font-size', '16px');
	            	 } else {
	            		 $("#checkId").html("사용 가능한 아이디 입니다.");
	                     console.log(data);
	                     $("#checkId").css('color', 'blue').css('font-size', '16px');
	            	 }
	             },
	             error: function(request, status){
	                 alert("네트워크를 확인해주세요.")
	             }
	         });
	 	});
	</script>
</html>