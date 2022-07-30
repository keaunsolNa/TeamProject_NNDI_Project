<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/Account.css">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/sidebars.css" >
	<jsp:include page="../../../common/includepage/UserHeader.jsp"/>
	<title>너나들이 중랑</title>

	<style>
		label{
			color:gray;
		}
	</style>

</head>
<body>
<aside>
	<jsp:include page="../../../common/includepage/UserMyPageAside.jsp"/>
</aside>
<section>
    <div>
        <div class="post title" style="background-color: rgba(254, 190, 190, 0.5);">
            <h3 class="top" style="text-align: center">개인 정보 수정</h3>
        </div>
    </div>

    <div class="post add">
        <form action="${ pageContext.servletContext.contextPath }/Account/Update" method="post" >
            <label>이름</label>
            	<input type="text" name="uName" id="uName" value='${ loginMember.name }' readonly >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			
			<br>
			
			<c:set var="gender" value="${ loginMember.gender }"/>
				<c:if test="${ loginMember.gender eq 'M'}">
					<label>성별: </label>
            		<select id="ugender" name="selectGender" style="width: auto;">
                		<option value="male" id="male" selected>남</option>
            		</select>
				</c:if>
				
				<c:if test="${ loginMember.gender eq 'W'}">
					<label>성별: </label>
            		<select id="ugender" name="selectGender" style="width: auto;">
                		<option value="male" id="female" selected>여</option>
            		</select>
				</c:if>
				
            <br>

            <label for="uid" id="inputid">아이디:</label>   
            	<input type="text" id="uid" name="userId" size="30" value='${ loginMember.id }' readonly>
    		
    		<br>
    		
    		<c:set var="idQueNum" value="${ loginMember.idQueNum }"/>
    			<input type="text" name="selectIdQueNum" value="${ loginMember.idQueNum }" style="display: none;">
    		
	    		<label>
		    		<c:if test="${ loginMember.idQueNum eq 1 }">
		    			출신 고등학교는?
		    		</c:if>
		    		
		    		<c:if test="${ loginMember.idQueNum eq 2 }">
		    			가장 친한 친구의 이름은?
		    		</c:if>
		    		
		    		<c:if test="${ loginMember.idQueNum eq 3 }">
		    			가장 존경하는 인물의 이름은?
		    		</c:if>
		    		
		    		<c:if test="${ loginMember.idQueNum eq 4 }">
		    			어릴적 별명은?
		    		</c:if>
		    		
		    		<c:if test="${ loginMember.idQueNum eq 5 }">
		    			고향은?
		    		</c:if>
		    		
		    		<c:if test="${ loginMember.idQueNum eq 6 }">
		    			좋아하는 책의 제목은?
		    		</c:if> 
	    		</label>
	    		
    		<input type="text" id=idQueAnser" name="idQueAnswer" value='${ loginMember.idAnswer }'>
    		
    		<br>
            
            <label for="upwd" id="inputpwd">비밀번호: </label>  
            	<input type="password" name="password" id="password" size="30" value='${ loginMember.pwd }'> <p id="pwdresult"></p>
    
    		<p id="pwdresult2"></p> 
            
            <label for="upwd2" id="inputpwd2">비밀번호 확인: </label>
            	<input type="password" name="password2" id="password2" size="30" value='${ loginMember.pwd }'>
            
    		<br>
    		
            <label>이메일</label><input type="text" name="str_email01" id="str_email01" value='${ loginMember.email1 }' style="width:100px"> @
            	<input type="text" name="str_email02" id="str_email02" style="width:100px;" value='${ loginMember.email2 }'>
                
            <br>
            <label for="address1"> 우편 번호: </label>
				<input type="text" name="zipCode" id="zipCode" value='${ loginMember.address1 }' readonly>
				<input type="button" value="검색" class="btn btn-yg" id="searchZipCode" style="border: 1px solid black; background-color:  rgba(254, 190, 190, 1);">
			
			<br>
			
			<label for="address2"> 주소: </label>            
				<input type="text" name="address1" id="address1" value='${ loginMember.address2 }' readonly>
			
			<br>
			
			<label for="address3"> 상세 주소: </label>		
				<input type="text" name="address2" id="address2" value='${ loginMember.address3 }'>

    		<br>
            
            <label for="phone" id="input">연락처: </label>
            	<select name="selectUserPhone" style="width: auto;">
                	<option value="010">010</option>
                	<option value="016">016</option>
	                <option value="011">011</option>
	                <option value="019">019</option>
            	</select>
            
            <input type="tel" name="phone2" size="4" id="phone2" value='${ loginMember.phone2 }' >
            <input type="tel" name="phone3" size="4" id="phone3" value='${ loginMember.phone3 }'><p>
            
            <div style="margin-left: 40%;">
            	<button id="submitbutton" onclick="location.href='${pageContext.servletContext.contextPath}/login/MemberInfo/Update'">
                제출
                </button>
                
                <button type="reset" id="submitbutton">취소</button>
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
})
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
	</script>

		  <script>
	    $("#back").click(function(){
	      let text = "이 창을 나가시겠습니까?\n 현재 입력하신 정보는 저장되지 않습니다.\n 나가시려면 '확인'을 누르세요.";
	      if (confirm(text) == true) {
	        	location.href = "${ pageContext.servletContext.contextPath }";
	      } else {
	        
	      }
	    });

	  </script>
	  

</html>