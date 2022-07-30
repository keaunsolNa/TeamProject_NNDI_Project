<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		(function(){
		const successCode = "${ requestScope.successCode }";
		let successMessage = "";
		let movePath = "";
		
		switch(successCode){
			case "insertMember" : 
				successMessage = "회원 가입에 성공하셨습니다!";
				movePath = "../index.jsp";
				break;
			case "updateMember" : 
				successMessage = "회원 정보 변경에 성공하셨습니다!";
				movePath = "../index.jsp";
				break;
			case "deleteMember" : 
				successMessage = "회원 탈퇴에 성공하셨습니다!";
				movePath = "../index.jsp";
				break;
			case "insertRent" : 
				successMessage = "대관신청이 성공적으로 진행되었습니다 !";
				movePath = "../../index.jsp";
				break;
			case "updateRentCancel" : 
				successMessage = "대관신청 철회가 성공적으로 진행되었습니다. !";
				movePath = "../../../index.jsp";
				break;
			case "insertComplain" : 
				successMessage = "민원 신청이 성공적으로 접수되었습니다. !";
				movePath = "../../../index.jsp";
				break;
			case "updateComplain" : 
				successMessage = "해당 민원을 성공적으로 수정하였습니다 !";
				movePath = "../../../index.jsp";
				break;
			case "deleteComplain" : 
				successMessage = "해당 민원을 성공적으로 삭제하였습니다. !";
				movePath = "../../../index.jsp";
				break;
			case "insertCommend" : 
				successMessage = "칭찬 게시글을 성공적으로 작성하였습니다. !";
				movePath = "../../../index.jsp";
				break;
			case "deleteCommend" : 
				successMessage = "칭찬 게시글을 성공적으로 삭제하였습니다. !";
				movePath = "../../../index.jsp";
				break;
			case "updateCommend" : 
				successMessage = "칭찬 게시글을 성공적으로 수정하였습니다. !";
				movePath = "../../../../index.jsp";
				break;
			case "UpdateRefundss" :
				successMessage = "환불 승인이 완료되었습니다.";
				movePath = "/Semi-NNDI/login/admin/rentRefundList";
				break;
			case "UpdateBookDelete" :
				successMessage = "도서 폐기가 완료되었습니다.";
				movePath = "/Semi-NNDI/login/admin/bookList";
				break;
			case "UpdateBookDeleteReturn" :
				successMessage = "도서 폐기 취소가 완료되었습니다.";
				movePath = "/Semi-NNDI/login/admin/deleteBookList";
				break;
			case "updateRentRefund" :
				successMessage = "환불 신청이 완료되었습니다.";
				movePath = "/Semi-NNDI/login/admin/rentList";
				break;

			case "UpdateMemberPwd" :
				successMessage = "비밀번호가 이메일로 발송되었습니다. 재로그인 부탁드립니다.";
				movePath = "../../index.jsp";
				break;

			case "UpdateClassRefund" :
				successMessage = "환불 신청이 취소되었습니다.";
				movePath = "/Semi-NNDI/login/admin/rentRefundList";
				break;
			case "classrefundList" :
				successMessage = "환불 신청이 완료되었습니다.";
				movePath = "/Semi-NNDI/login/admin/rentRefundList";
				break;
				

				
		}

		alert(successMessage);
		
		location.replace(movePath);
	})();

	</script>

</body>
</html>