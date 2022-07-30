package com.nndi.admin.summing;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login/admin/postSumming")
public class AdminPostSummingUp extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("Controller 도착");
		
		SummingService summingService = new SummingService();  
		
		Map<String, Object> requestList = summingService.postSummingRequestList();
		
		System.out.println("Controller " + requestList);
		
		String path="";
		if(!requestList.isEmpty()) {
			request.setAttribute("complainTotalcnt", requestList.get("complainTotalcnt"));
			request.setAttribute("complainRECnt", requestList.get("complainRECnt"));
			request.setAttribute("complainNotRECnt", requestList.get("complainNotRECnt"));
			request.setAttribute("qnaTotalcnt", requestList.get("qnaTotalcnt"));
			request.setAttribute("qnaRECnt", requestList.get("qnaRECnt"));
			request.setAttribute("qnaNotRECnt", requestList.get("qnaNotRECnt"));
			request.setAttribute("noticeHitTops", requestList.get("noticeHitTops"));
			request.setAttribute("faqHitTops", requestList.get("faqHitTops"));
			
			path = "/WEB-INF/views/admin/summing/PostSumming.jsp";
			
		} else {
			path = "/WEB-INF/views/admin/selectErrorPage/selectError.jsp";
		}

		request.getRequestDispatcher(path).forward(request, response);
	
	}

}
