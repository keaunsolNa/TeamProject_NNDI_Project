package com.nndi.admin.rent;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.joindto.admin.rent.RentAndMemberAliveDTO;

@WebServlet("/login/admin/rentList")
public class AdminRentList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("어서와 렌탈은 처음이지?");
		
		RentService rentService = new RentService();
		
		List<RentAndMemberAliveDTO> rentList = rentService.selectAllrentList();
		
		System.out.println("Controller : " + rentList);
		
		String path = "";
		if (!rentList.isEmpty()) {
			path = "/WEB-INF/views/admin/rent/RentList.jsp";
			request.setAttribute("rentList", rentList);
		} else {
			path = "/WEB-INF/views/admin/selectErrorPage/selectError.jsp";
			System.out.println("잔넨..");
		}
		
		request.getRequestDispatcher(path).forward(request, response);

	}

}
