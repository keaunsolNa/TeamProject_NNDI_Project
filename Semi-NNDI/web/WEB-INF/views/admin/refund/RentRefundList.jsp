<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/nndi-style.css">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/sidebars.css" >
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/post.css" >
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/youchanEdit.css" >
    <link href="https://fonts.googleapis.com/css2?family=Single+Day&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
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
    			<h3 class="top">대관 환불내역 조회</h3>
			</div>

		    
   			<div class="post list"> 
	        		<table class="t1">
	            		<thead>
	              			<tr>
				                <th>게시글 번호</th>
				                <th>  </th>
				                <th>고객 이름</th>
				                <th>시설 이름</th>
				                <th>결제 금액</th>
				                <th>철회, 환불신청 여부</th>
				                <th>  </th>
				                <th>환불 여부</th>
				                <th>대관 시작일</th>
				                <th>대관 종료일</th>
				                <th>환불 승인</th>
	              			</tr>
	            		</thead>
	           	
	           			<tbody>
	              			<c:forEach var="refund" items="${ requestScope.refundList }">
	              				<tr>
					                <td>${ refund.postNum }</td>
					                <td><input type="hidden" value="${ refund.rentRefYn }" id="rentRefYn"></td>
					                <td>${ refund.name }</td>
					                <td>${ refund.cenKindsname }</td>
					                <td>${ refund.rentCost }</td>
					                <td>${ refund.rentPayYn }</td>
					                <td><input type="hidden" value="${ refund.postNum }" id="num"></td>
					                <td>${ refund.rentRefYn }</td>
					                <td>${ refund.rentStart }</td>
					                <td>${ refund.rentEnd }</td>
	              	<!-- 				<td>
	                					<button class="btn btn-secondary app" 
	                							id="refundUpdate"> 
		                				승인 결정
		                				</button>
	                				</td> -->
	                			</tr>	
	            			</c:forEach>
	            		</tbody>
	        		</table>
   			</div>
		</div>
	</section>
	<script type="text/javascript">
		$(".app").on("click",function () {
			/* btn부터 출발해서 input태그 value값 선택자로 가져오기 */
			let rentRefYn = $(this).parent().parent().children().eq(1).children().val()
			//table > tbody > tr > td:eq(1)
			let num = $("#num").val();
			
			console.log(rentRefYn);
			if(rentRefYn == 'N'){
				let text = "환불을 승인하시겠습니까?\n승인하시려면 '확인'을 누르세요.";
				if (confirm(text) == true) {
					location.href=
						'${ pageContext.servletContext.contextPath }/login/admin/rentRefundUpdate.do?postNum='+num;
				}
			}
			
			if (rentRefYn == 'Y') {
				let text = "환불을 취소하시겠습니까?\n취소하시려면 '확인'을 누르세요.";
				if (confirm(text) == true) {
					location.href=
						'${ pageContext.servletContext.contextPath }/login/admin/rentRefundUpdateCancel.do?postNum='+num;
				}
			}		
		});
	</script>
	
	<jsp:include page="../../common/includepage/AdminFooter.jsp"/>
</body>
</html>
