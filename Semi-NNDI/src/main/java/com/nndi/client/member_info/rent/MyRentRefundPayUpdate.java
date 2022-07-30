package com.nndi.client.member_info.rent;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login/rent/refund/update")
public class MyRentRefundPayUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int num = Integer.parseInt(request.getParameter("num"));
		
		System.out.println(num);
		
		int result = MyPageRentService.updateRefund(num);
		
		String path = "";
		if(result > 0) {
			path = "/WEB-INF/views/common/resultPage/SucessResultPage.jsp";
			System.out.println("update 성공");
			request.setAttribute("successCode", "UpdateRefundss");
		} else {
			path = "/WEB-INF/views/common/resultPage/FailedResultPage.jsp";
			System.out.println("update 실패");
			request.setAttribute("message", "환불 신청을 실패하셨습니다.");
		}

		request.getRequestDispatcher(path).forward(request, response);
	
	}


}
