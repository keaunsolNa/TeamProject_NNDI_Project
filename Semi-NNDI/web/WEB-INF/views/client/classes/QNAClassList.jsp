<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/post.css">
<jsp:include page="../../common/includepage/UserHeader.jsp"/>
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../../common/includepage/ClassAside.jsp"/>
<section>	

  <div>
  
    <h3 class="notice" style="margin-top:200px"><b><u>강좌</u>조회</b></h3>
  </div>
 
	<div class="post list"> 
	 <p style="float: right;"><b>※내부사정으로 요일은 불가피하게 변경될수있습니다<br>※한번 취소한 강좌는 재신청이 불가능합니다.</b></p>
    <table class="blueone">
      <thead>
        <tr>
            <th>강좌명</th>           
            <th>강사명</th>
            <th>장소</th>
            <th>신청인원</th>
            <th>개강일</th>
            <th>종강일</th>
            <th>진행시간</th>
            <th>요일</th>
		    </tr>        
    </thead>
    <tbody>
<%--     <c:forEach var="cls" items="${ requestScope.possibleCls }"  varStatus="status">
      <tr>
          <td class="mudo" style="display: none;">${cls.clsNum}</td>
          <td class="mudo">${cls.clsName}</td>
          <td class="mudo">${cls.teacher.name}</td>
          <td class="mudo">${cls.cenName} 호</td>
          <td class="mudo">${cls.clsApplyCnt}명//${cls.clsMaxCnt}명</td>
          <td class="mudo">${requestScope.time1[status.index].start}</td>
          <td class="mudo">${requestScope.time1[status.index].end}</td>
          <td class="mudo">${cls.clsRunTime}</td>
          <td class="mudo">${cls.clsDay}</td>
      </tr>
      </c:forEach> --%>
      
      <c:forEach var="cls" items="${ requestScope.possibleCls }"  varStatus="status">
      <tr>  
          <td class="mudo" style="display: none;">${cls.clsNum}</td>
          <td class="mudo"><c:out value="${cls.clsName}"/></td>
          <td class="mudo"><c:out value="${cls.teacher.name}"/></td>
          <td class="mudo"><c:out value="${cls.cenName}"/> 호</td>
          <td class="mudo"><c:out value="${cls.clsApplyCnt}"/>명//<c:out value="${cls.clsMaxCnt}"/>명</td>
          <td class="mudo"><c:out value="${requestScope.time1[status.index].start}"/></td>
          <td class="mudo"><c:out value="${requestScope.time1[status.index].end}"/></td>
          <td class="mudo"><c:out value="${cls.clsRunTime}"/></td>
          <td class="mudo"><c:out value="${cls.clsDay}"/></td>
      </tr>
      </c:forEach>
      
      
    </tbody>
    
    </table>
    <br><br>
      <jsp:include page="../../common/includepage/paging.jsp"/>
    <br><br>
    <h3>수강 신청 인원 초과</h3>
    <br><br>
    <table class="blueone">
      <thead>
        <tr>
            <!-- <th>번호</th> -->
            <th>강좌명</th>           
            <th>강사명</th>
            <th>장소</th>
            <th>신청인원</th>
            <th>개강일</th>
            <th>종강일</th>
            <th>진행시간</th>
            <th>요일</th>
		    </tr>        
    </thead>
    <tbody>
    <c:forEach var="cls2" items="${ requestScope.impossibleCls }"  varStatus="status">
      <tr>
          <td style="display: none;">${cls2.clsNum}</td>
          <td>${cls2.clsName}</td>
          <td>${cls2.teacher.name}</td>
          <td>${cls2.cenName} 호</td>
          <td>${cls2.clsApplyCnt}명//${cls2.clsMaxCnt}명</td>
          <td>${requestScope.time2[status.index].start}</td>
          <td>${requestScope.time2[status.index].end}</td>
          <td>${cls2.clsRunTime}</td>
          <td>${cls2.clsDay}</td>
      </tr>
      </c:forEach>
      
    </tbody>
    
    </table>
    <br><br> 
    </div>
	
  </section>
  <jsp:include page="../../common/includepage/UserFooter.jsp"/>
    <script>
		
		if(document.getElementsByClassName("mudo")) {
			
			const $tds = document.getElementsByClassName("mudo");
			for(let i = 0; i < $tds.length; i++) {
				
				$tds[i].onmouseenter = function() {

					this.parentNode.style.cursor = "pointer";
				}
				
				$tds[i].onclick = function() {
					const num = this.parentNode.children[0].innerText;
					location.href="${pageContext.servletContext.contextPath}/login/board/ClassListDetail?num=" + num;
					
				}
				
			}
			
		} 
   </script>
   
</body>
</html>