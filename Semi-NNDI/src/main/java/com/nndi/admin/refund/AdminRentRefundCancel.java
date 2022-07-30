package com.nndi.admin.refund;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login/admin/rentRefundUpdateCancel.do")
public class AdminRentRefundCancel extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("업데이트 취소 서블릿 도착 확인");
		System.out.println(request.getParameter("postNum"));
		int num = Integer.valueOf(request.getParameter("postNum"));
		System.err.println(num);
		
		RefundService refundService = new RefundService();
		
		int result = refundService.updateClassRefundCancel(num);
		System.out.println("업데이트 결과값: " + result);
		String page = "";
		
		if(result > 0) {
			page = "/WEB-INF/views/common/resultPage/SucessResultPage.jsp";
			request.setAttribute("successCode", "updateRentRefund");

		} else {
			
			page = "/WEB-INF/views/common/resultPage/FailedResultPage.jsp";
			request.setAttribute("message", "정보 변경에 실패하셨습니다. 입력값을 확인해주세요.");
		}
		
		request.getRequestDispatcher(page).forward(request, response);
		
	}

}
