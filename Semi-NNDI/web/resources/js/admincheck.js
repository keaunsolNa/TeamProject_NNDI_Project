
$(function(){

    $("#uName").change(function(){
        
        var regExp = /^[가-힣]{2,}$/;

        if(regExp.test($(this).val())){     
        } else {
        	alert("이름을 한글로 두 자 이상 입력하세요")
            $(this).val('');
        }
    })
    
    
  $(".mam").change(function(){
        
        var regExp = /^[0-9a-zA-Z]{2,}$/;

        if(regExp.test($(this).val())){     
        } else {
        	alert("이메일 형식으로 입력해주세요")
            $(this).val('');
        }
    })
    
  $("#clsruntime").change(function(){
        
        var regExp = /^([1-9]|[01][0-9]|2[0-3]):([0-5][0-9])*~([1-9]|[01][0-9]|2[0-3]):([0-5][0-9])$/;

        if(regExp.test($(this).val())){     
        } else {
        	alert("시간을 ex) 12:00~16:00 형식으로 입력해주세요")
            $(this).val('');
        }
    })
    
  $("#clsTime2").change(function(){
        
        var regExp = /^([1-9]|[01][0-9]|2[0-3]):([0-5][0-9])*~([1-9]|[01][0-9]|2[0-3]):([0-5][0-9])$/;

        if(regExp.test($(this).val())){     
        } else {
        	alert("시간을 ex) 12:00~16:00 형식으로 입력해주세요")
            $(this).val('');
        }
    })

  $(".peanut").change(function(){
        
       var regExp = /^\s*(?:\S\s*){10,}$/;

        if(regExp.test($(this).val())){     
        } else {
        	alert("강좌설명은 10자 이상 입력해 주세요")
            $(this).val('');
        }
    })

  $("#burgerking").change(function(){
        
       var regExp = /^\s*(?:\S\s*){2,}$/;

        if(regExp.test($(this).val())){     
        } else {
        	alert("강의명은 2자 이상 입력해 주세요")
            $(this).val('');
        }
    })
    
    
  $(".noticecontent").change(function(){
        
       var regExp = /W*(?:\w+\b\W*){10,100}$/;

        if(regExp.test($(this).val())){     
        } else {
        	alert("공지사항은 10자 이상 입력해 주세요")
            $(this).val('');
        }
    })
    
  
  $("#addpost").click (function() {
            
            const content = $(".noticecontent").val().length;
            const title = $("#noticetitle").val().length;
            const cate = $("#noticecate").val().length;
            if(content != 0 && title !=0 && cate !=0){
               let text = "공지사항을 등록하시겠습니까?\n등록하시려면 '확인'을 누르세요.";
               if (confirm(text) == true) {
                  document.getElementById("update").submit();	 
               }
            }
            else {
               alert('작성이 되어있지 않은 항목이 존재합니다.')
            }
         })
         
       $("#addpost3").click (function() {
            
            const name = $("#burgerking").val().length;
            const clsCategoryName = $("#clsCategoryName").val().length;
            const teachcode = $("#teachcode").val().length;
            const clsMaxNum = $("#clsMaxNum").val().length;
            const clsroom = $("#clsroom").val().length;
            const clsage = $("#clsage").val().length;
            const ccCost = $("#ccCost").val().length;
            const ccday = $("#ccday").val().length;
            const peanut = $(".peanut").val().length;
            const start = $("#start").val().length;
            const end = $("#end").val().length;
            const clsruntime = $("#clsruntime").val().length;
            const cls1time = $("#cls1time").val().length;
            
            
            if(name != 0 && clsCategoryName != 0 && teachcode != 0 && clsMaxNum != 0 && clsroom != 0 && clsage != 0 &&
              ccCost != 0 && ccday != 0 && peanut != 0 && start != 0 && end != 0 && clsruntime != 0 &&
              cls1time != 0){
               let text = "강좌를 등록하시겠습니까?\n등록하시려면 '확인'을 누르세요.";
               if (confirm(text) == true) {
                  document.getElementById("addpost2").submit();	 
               }
            }
            else {
               alert('작성이 되어있지 않은 항목이 존재합니다.')
            }
         })    
         
    $("#updatepost").click (function() {
            
            const name = $(".clsName").val().length;
            const code = $(".teaCode").val().length;
            const maxnum = $(".maxnum").val().length;
            const start = $("#start").val().length;
            const end = $("#end").val().length;
            const content = $(".clsContent").val().length;
            const clsTime = $(".clsTime").val().length;
            const clsTime2 = $(".clsTime2").val().length;
            const clsCost = $(".clsCost").val().length;
            const day = $(".clsDay").val().length;
            
            if(name != 0 && code !=0 && maxnum !=0 && start !=0 && end !=0 
               && content !=0 && clsTime !=0 && clsTime2 !=0 && clsCost !=0 && day !=0){
               let text = "강좌를 수정하시겠습니까?\n등록하시려면 '확인'을 누르세요.";
               if (confirm(text) == true) {
                  document.getElementById("update").submit();	 
               }
            }
            else {
               alert('작성이 되어있지 않은 항목이 존재합니다.')
            }
         })       
         
           
  $("#updatepost").click (function() {
            
            const email = $(".udtemail").val().length;
            const pnumber = $(".udtphone").val().length;
            
            if(email != 0 && pnumber !=0){
               let text = "강사를 수정하시겠습니까?\n등록하시려면 '확인'을 누르세요.";
               if (confirm(text) == true) {
                  document.getElementById("update").submit();	 
               }
            }
            else {
               alert('작성이 되어있지 않은 항목이 존재합니다.')
            }
         })  
         
     $(".udtemail").change(function(){
        
       var regExp = /^[a-zA-Z0-9+-\_.]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/;

        if(regExp.test($(this).val())){     
        } else {
        	alert("이메일 형식으로 입력해 주세요")
            $(this).val('');
        }
    })           
  
  $(".qnacontent").change(function(){
        
       var regExp = /^\s*(?:\S\s*){10,}$/;

        if(regExp.test($(this).val())){     
        } else {
        	alert("문의 답변은 10자 이상 입력해 주세요")
            $(this).val('');
        }
    })
    
  $("#createpost").click (function() {
            
            const qnacontent = $("#qnacontent").val().length;
            
            if(qnacontent != 0 ){
               let text = "문의 답변을 작성하시겠습니까?\n등록하시려면 '확인'을 누르세요.";
               if (confirm(text) == true) {
                  document.getElementById("update").submit();	 
               }
            }
            else {
               alert('답변을 작성해 주세요.')
            }
         })
         
  $("#updatepost6").click (function() {
            
            const qnacontent = $("#qnacontent").val().length;
            
            if(qnacontent != 0 ){
               let text = "문의 답변을 수정하시겠습니까?\n수정하시려면 '확인'을 누르세요.";
               if (confirm(text) == true) {
                  document.getElementById("update").submit();	 
               }
            }
            else {
               alert('답변을 작성해 주세요.')
            }
         })
          
         
  $("#createpost100").click (function() {
            
            const adminCPcontent = $("#adminCPcontent").val().length;
            
            if(adminCPcontent != 0){
               let text = "민원 답변을 등록하시겠습니까?\n등록하시려면 '확인'을 누르세요.";
               if (confirm(text) == true) {
                  document.getElementById("update").submit();	 
               }
            }
            else {
               alert('작성하지 않은 항목이 존재합니다.')
            }
         })              
  $("#updatepost100").click (function() {
            
            const adminCPcontent = $("#adminCPcontent").val().length;
            
            if(adminCPcontent != 0){
               let text = "민원 답변을 수정하시겠습니까?\n수정하시려면 '확인'을 누르세요.";
               if (confirm(text) == true) {
                  document.getElementById("update").submit();	 
               }
            }
            else {
               alert('작성하지 않은 항목이 존재합니다.')
            }
         })              
 

  $("#updatepost3").click (function() {
            
            const qnacontent = $("#content4").val().length;
            
            if(qnacontent != 0){
               let text = "FAQ 수정하시겠습니까?\n수정하시려면 '확인'을 누르세요.";
               if (confirm(text) == true) {
                  document.getElementById("update").submit();	 
               }
            }
            else {
               alert('작성하지 않은 항목이 존재합니다.')
            }
         })  
   
  $(".complaincontent").change(function(){
        
       var regExp = /^\s*(?:\S\s*){10,}$/;

        if(regExp.test($(this).val())){     
        } else {
        	alert("민원 답변은 10자 이상 입력해 주세요")
            $(this).val('');
        }
    }) 
    
  $(".faqcontent").change(function(){
        
       var regExp = /^\s*(?:\S\s*){10,}$/;

        if(regExp.test($(this).val())){     
        } else {
        	alert("자주묻는 질문내용은 10자 이상 입력해 주세요")
            $(this).val('');
        }
    })   
    
      $(".faqadder").change(function(){
        
       var regExp = /^\s*(?:\S\s*){10,}$/;

        if(regExp.test($(this).val())){     
        } else {
        	alert("자주묻는 질문내용은 10자 이상 입력해 주세요")
            $(this).val('');
        }
    })
  
    
  $("#addpost4").click (function() {
            
            const qnacontent = $("#content").val().length;
            const faqCate = $("#faqCate").val().length;
            const faqtitle = $("#faqtitle").val().length;
            
            if(qnacontent != 0 && faqtitle != 0 && faqCate != 0){
               let text = "FAQ를 등록하시겠습니까?\n등록하시려면 '확인'을 누르세요.";
               if (confirm(text) == true) {
                  document.getElementById("update").submit();	 
               }
            }
            else {
               alert('작성하지 않은 항목이 존재합니다.')
            }
         })    
    
  $("#addpost7").click (function() {
            
            const empcontent = $("#empcontent").val().length;
            const clsNumber = $("#clsNumber").val().length;
            const empYn = $("#empYn").val().length;
            const emp2content = $("#emp2content").val().length;
            const empnumber = $("#empnumber").val().length;
            const empevcontent = $("#empevcontent").val().length;
            const empprocontent = $("#empprocontent").val().length;
            
            if(empcontent != 0 && clsNumber != 0 && empYn != 0  && emp2content != 0
            	 && empnumber != 0  && empevcontent != 0  && empprocontent != 0){
               let text = "강사 모집 등록하시겠습니까?\n등록하시려면 '확인'을 누르세요.";
               if (confirm(text) == true) {
                  document.getElementById("teacheradd").submit();	 
               }
            }
            else {
               alert('작성하지 않은 항목이 존재합니다.')
            }
         })    
         
  $("#updatepost23").click (function() {
            
            const empcontent = $("#empcontent").val().length;
            const empYn = $("#empYn").val().length;
            const emp2content = $("#emp2content").val().length;
            const empnumber = $("#empnumber").val().length;
            const empevcontent = $("#empevcontent").val().length;
            const empprocontent = $("#empprocontent").val().length;
            
            if(empcontent != 0 && empYn != 0  && emp2content != 0
            	 && empnumber != 0  && empevcontent != 0  && empprocontent != 0){
               let text = "강사 모집정보를 수정하시겠습니까?\n수정하시려면 '확인'을 누르세요.";
               if (confirm(text) == true) {
                  document.getElementById("update").submit();	 
               }
            }
            else {
               alert('작성하지 않은 항목이 존재합니다.')
            }
         })

    
})
