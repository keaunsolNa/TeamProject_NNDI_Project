<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	
	<meta charset="UTF-8">
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c27cb14696b2beb5681a7ea02da13c9a"></script>
	    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/location.css" >

<title>너나들이 중랑</title>

	<jsp:include page="../../common/includepage/UserHeader.jsp"/>

</head>

<body>
	<aside>
	<jsp:include page="../../common/includepage/NNDIIntroduceAside.jsp"/>
	</aside>
	
	<section>
	<h3 class="locationhead" style="border:3px solid gray; padding: 25px 100px 25px 100px;"> 오시는 길</h3>
   <div id="googleMap" style="width: 50%; height: 700px; float: left; margin-left:20%;"></div>
	  
		<table style="width: 50%; height: 700px; margin-left:20%; border:3px solid gray;">
		   <!--  <tr>
		        <td>
					주소 : 서울특별시 중랑구 묵2동  <br>
					전화 : 02-123-4567 (대표)  <br>
					FAX : 02-2000-1234   <br>
					7호선 먹골역 5번출구, 
					다이소 안쪽 212m <br>
					2114  :  묵2동 주민센터 하차 <br>
					105, 202, 1224  :  먹골역  
		        </td>
		    </tr> -->
		    <tr>
		    	<th>주소</th>
		    	<td>서울특별시 중랑구 묵2동</td>
		    </tr>
		    <tr>
		    	<th>전화</th>
		    	<td>02-123-4567 (대표)</td>
		    </tr>
		    <tr>
		    	<th>FAX</th>
		    	<td>02-2000-1234</td>
		    </tr>
		    <tr>
		    	<th>지하철로 오시는 법</th>
		    	<td>7호선 먹골역 5번출구, 다이소 안쪽 212m</td>
		    </tr>
		    <tr>
		    	<th>버스로 오시는 법</th>
		    	<td>2114  :  묵2동 주민센터 하차<br>105, 202, 1224  :  먹골역</td>
		    </tr>
		</table>
	  
   <script>
   
      function myMap(){
         var uluru = {lat: 37.609584, lng: 127.076004};
         var mapOptions = { 
               center:new google.maps.LatLng(37.609584, 127.076004),   //37.609584 127.076004
               zoom:17
         };
    
         var map = new google.maps.Map( 
                document.getElementById("googleMap") 
               , mapOptions );
         var marker = new google.maps.Marker({position: uluru, map: map});
      }
   </script> 
   <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAngVeADK8oiPm38ZgHWsvQKsW9FgUQZe0&callback=myMap"></script>
   	<div class="location">
        

        
   	</div>
      
</section>
	
</body>

	<jsp:include page="../../common/includepage/UserFooter.jsp"/>
</html>