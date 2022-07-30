package com.nndi.admin.refund;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.joindto.admin.refund.RentRefunViewDTO;

@WebServlet("/login/admin/rentRefundList")
public class AdminRentRefundList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/* 대관 환불 내역 전체 조회용 Servlet */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("컨트롤러 도착");
		
		RefundService refundService = new RefundService();
		
		List<RentRefunViewDTO> refundList = refundService.selectAllrefundList();
		
		for(RentRefunViewDTO refund : refundList) {
			System.out.println("Controller : " + refund);
		}
		
		String path = "";
		if (!refundList.isEmpty()) {
			path = "/WEB-INF/views/admin/refund/RentRefundList.jsp";
			request.setAttribute("refundList", refundList);
		} else {
			path = "/WEB-INF/views/selectErrorPage/selectError.jsp";
			System.out.println("잔넨..");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	
	}

}
