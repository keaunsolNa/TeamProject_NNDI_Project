
$(function(){

    $("#uName").focus(function(){
    }).blur(function(){
    }).change(function(){
    }).select(function(){
    })

    $(".userTitle").change(function(){
        
        var regExp = /^\s*(?:\S\s*){5,}$/;

        if(regExp.test($(this).val())){     
        } else {
        	alert("제목은 한글로 다섯 자 이상 입력하세요")
            $(this).val('');
        }
    })
    
    $(".userContent").change(function(){
        
        var regExp = /^\s*(?:\S\s*){10,}$/;

        if(regExp.test($(this).val())){     
        } else {
        	alert("본문은 한글로 열 자 이상 입력하세요")
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

$("#cmdWrite").click ( function() {
            
            const content = $(".userContent").val().length;
            const title = $(".userTitle").val().length;
            
            console.log(content)
            console.log(title)
            if(content != 0 && title !=0 && cate !=0){
               let text = "게시글을 등록하시겠습니까?\n등록하시려면 '확인'을 누르세요.";
               if (confirm(text) == true) {
                  document.getElementById("cmdInsert").submit(); 
               }
            }
            else {
               alert('내용을 입력해주세요')
            }
            
            
         })
         
         
         