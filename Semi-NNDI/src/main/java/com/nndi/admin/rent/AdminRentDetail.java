package com.nndi.admin.rent;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.joindto.admin.rent.RentAndMemberAliveDTO;

@WebServlet("/login/admin/detailRent.do")
public class AdminRentDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("Detail Rent Servlet");
		
		int num = Integer.valueOf(request.getParameter("num"));
		
		System.out.println("잘가져왔니 ? " + num);
		
		RentService rentService = new RentService();
		
		RentAndMemberAliveDTO rent = rentService.selectOneByNumRent(num);
		
		System.out.println("나와라 " + rent);
		
		String path = "";
		if (!"".equals(rent.getMemId()) && rent.getMemId() != null) {
			path = "/WEB-INF/views/admin/rent/RentDetail.jsp";
			request.setAttribute("rent", rent);
		} else {
			path = "/WEB-INF/views/admin/selectErrorPage/selectError.jsp";
			System.out.println("잔넨..");
		}
		
		request.getRequestDispatcher(path).forward(request, response);

	
	}

}
