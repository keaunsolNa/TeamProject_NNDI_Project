package com.nndi.admin.rent;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login/admin/rentRequest.do")
public class AdminRentRequest extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("안녕~~~~~~서블릿~~~~~");
		
		String answer = request.getParameter("answer");
		System.out.println(answer);
		int cost = 0;
		int num = Integer.valueOf(request.getParameter("num"));
		if("Y".equals(answer)) {
			cost = Integer.valueOf(request.getParameter("cost"));
		}
		
		Map<String, Object> updateRent = new HashMap<String, Object>();
		
		updateRent.put("answer", answer);
		updateRent.put("cost", cost);
		updateRent.put("num", num);
		
		System.out.println("Controller : " + updateRent);
		
		RentService rentService = new RentService();
		
		int result = rentService.updateRent(updateRent);
		
		if(result>0) {
			response.sendRedirect("rentList");
			System.out.println("success");
		} else {
			request.getRequestDispatcher("/WEB-INF/views/selectErrorPage/UpdateFail.jsp").forward(request, response);
			System.out.println("fail");
		}
	}

}
