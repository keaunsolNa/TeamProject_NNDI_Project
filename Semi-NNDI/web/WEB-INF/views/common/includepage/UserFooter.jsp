<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html class="htmlinFooter">
<head>
<meta charset="UTF-8">
    <title>너나들이중랑</title>
    
</head>

<body>
  <body>
	    <footer>
	    	<div class="nav">
	    		
	    		<button 
	      			onclick="location.href='${pageContext.servletContext.contextPath}/site/location'" 
	      			class="FooterButton">
	      			오시는길</button>
	      		
	      		<button
	      			onclick="location.href='${pageContext.servletContext.contextPath}/site/Policy'" 
	      			class="FooterButton">
	      			개인정보방침</button>
	    	</div>
	    	
	      	<img src="${pageContext.servletContext.contextPath}/resources/image/client/main_footer.png" class="nndi-foot">
	    
	    </footer>
	</body>
</html>
    