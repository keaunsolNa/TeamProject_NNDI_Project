<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/AsideButton.css" >
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    <title>너나들이중랑</title>
</head>
<jsp:include page="/WEB-INF/views/common/includepage/UserHeader.jsp"/>
<body>


    <aside>
		<jsp:include page="/WEB-INF/views/common/includepage/NNDIIntroduceAside.jsp"/>
    </aside>
       
    <section style="float: left;">

    <div style="margin-left: 12%;">
        <h3 style="text-align: center"> 사이트 맵</h3><br><br>
    </div>

    <div id="siteMapDiv">
        <table id="siteMapDiv" >
            <tr> 
                <td>
                    <strong> 너나들이 소개</strong> <br><br>
                    <button onclick="location.href='${pageContext.servletContext.contextPath}/site/location'"
                    		style="background-color: white; color: rgba(254, 190, 190, 1);">
                    오시는길
                    </button>
                    
                    <br>
                    <br>
                    <button onclick="location.href='${pageContext.servletContext.contextPath}/site/SiteMap'"
                    		style="background-color: white; color: rgba(254, 190, 190, 1);">
                    사이트맵
                    </button>
                </td>
            </tr>
        </table>
    </div>

    <div id="siteMapDiv">
        <table id="siteMapDiv">
            <tr>
                <td>
                    <strong> 이용 안내</strong> <br><br>
                    <button onclick="location.href='${pageContext.servletContext.contextPath}/site/CenterInfo'"
                    		style="background-color: white; color: rgba(254, 190, 190, 1);">
                    시설 이용
                    </button>
                    <br>
                    <br>
                    
                    <button	onclick="location.href='${pageContext.servletContext.contextPath}/center/list/select'"
                    		style="background-color: white; color: rgba(254, 190, 190, 1);">
		    		대관 안내
		    		</button>
                    <br>
                    <br>
                    
                    <button onclick="location.href='${pageContext.servletContext.contextPath}/employee/board/list'"
                    		style="background-color: white; color: rgba(254, 190, 190, 1);">
         			강사 모집
         			</button>
                    <br>
                    <br>
                    
                    <button onclick="location.href='${pageContext.servletContext.contextPath}/site/agreement'"
                    		style="background-color: white; color: rgba(254, 190, 190, 1);">
                    이용약관
                    </button>
                    <br>
                </td>
            </tr>
        </table>
    </div>

    <div id="siteMapDiv">
        <table id="siteMapDiv" >
          	<tr>
              	<td>
                  	<strong> 고객 지원 센터</strong> <br><br>
                    <button onclick="location.href='${pageContext.servletContext.contextPath}/board/list/notice'"
                  		  	style="background-color: white; color: rgba(254, 190, 190, 1);">
                  	공지 사항
                  	</button>
                  	<br>
                  	<br>
                  
                  	<button onclick="location.href='${pageContext.servletContext.contextPath}/login/board/QNABoardList'"
                  			style="background-color: white; color: rgba(254, 190, 190, 1);">
                  	문의 하기
                  	</button>
                  	<br>
                  	<br>
                  
                  	<button onclick="location.href='${pageContext.servletContext.contextPath}/board/list/commend'"
                  			style="background-color: white; color: rgba(254, 190, 190, 1);">
         		  	칭찬 하기
         		  	</button>
                  	<br>
                  	<br>
                  
                  	<button onclick="location.href='${pageContext.servletContext.contextPath}/login/board/FAQList'"
                  			style="background-color: white; color: rgba(254, 190, 190, 1);">
                  	자주 묻는 질문
                  	</button>
                  	<br>
                  	<br>
                  
                  	<button onclick="location.href='${pageContext.servletContext.contextPath}/board/list/complain'"
                  			style="background-color: white; color: rgba(254, 190, 190, 1);">
                  	민원 신청
                  	</button>
                  	<br>
                  	<br>
              </td>
          </tr>
      </table>
    </div>

    <div id="siteMapDiv2">
      <table id="siteMapDiv2" >
          <tr>
            	<td>
                  	<strong> 시설 이용</strong> <br><br>
                	<button onclick="location.href='${pageContext.servletContext.contextPath}/site/ClientBookInfo'"
                			style="background-color: white; color: rgba(254, 190, 190, 1);">
                	작은 도서관
                	</button>
                	<br>
                	<br>
                
                <button onclick="location.href='${pageContext.servletContext.contextPath}/center/list/select'"
                		style="background-color: white; color: rgba(254, 190, 190, 1);">
		    	대관 안내
		   		</button>
                <br>
                <br>
            </td>
        </tr>
      </table>
    </div>

    <div id="siteMapDiv2">
      <table id="siteMapDiv2">
        <tr>
            <td>
                <strong> 강좌 안내</strong> <br><br>
                <button onclick="location.href='${pageContext.servletContext.contextPath}/login/board/CultureLand'"
		                style="background-color: white; color: rgba(254, 190, 190, 1);">
                문화
                </button>
                <br>
                <br>
                
                <button	onclick="location.href='${pageContext.servletContext.contextPath}/login/board/ClassphList'"
                		style="background-color: white; color: rgba(254, 190, 190, 1);">
                체육
                </button>
                <br>
            </td>
        </tr>
      </table>
    </div>
</section>
</body>
<br clear="both">
<jsp:include page="/WEB-INF/views/common/includepage/UserFooter.jsp"/>
</html>    