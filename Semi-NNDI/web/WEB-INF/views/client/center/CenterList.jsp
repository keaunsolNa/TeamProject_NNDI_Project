<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>너나들이 중랑</title>
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/post.css">
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/centerRent.css">
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/centerList.css">
	<jsp:include page="../../common/includepage/UserHeader.jsp"/>
</head>
<body>

	
	<jsp:include page="../../common/includepage/CenterAside.jsp"/>
	
	
	<section style="float: left">
		<div style="margin-left:20%; margin-top:10%; border:3px solid gray; width:500px; text-align:auto; padding:25px">
    	<h3 style="padding: 20px 20px 20px 100px;"> 대관List</h3>
        		<p class="pp">상담 및 접수 후 신청서는 메일로 송부 받습니다. <br>홈페이지 대관 신청만 있을 경우 반려될 수 있습니다.
        		<br>신청 기간은 신청일로부터 7일 이후, 30일 이내로 가능합니다</p>
    	</div>
        
        		<div class="post list">
            		<table class="blueone">
                		<thead align="center">
		                    <th style="width:200px;">시설 번호</th>
		                    <th style="width:200px;">시설 이름</th>
		                    <th style="width:200px;">수용 인원</th>
		                    <th style="width:200px;">조회</th>
                		</thead>
                 		
                 		<c:forEach var="center" items="${ requestScope.centerList }">
							<tr>
								<td><c:out value="${ center.cenName }"/></td>
								<td><c:out value="${ center.centerKindName }"/></td>
								<td><c:out value="${ center.cenCapacity}"/></td>
								<td align="center"><button type="button" onclick="location.href='${ pageContext.servletContext.contextPath }/login/center/list/select/detail?num=${ center.cenName }'" >상세보기</button></td>
							</tr>
						</c:forEach>

            		</table>
	          </div>
	</section>

</body>
	<br clear="both">
	<jsp:include page="../../common/includepage/UserFooter.jsp"/>
</html>