package com.nndi.admin.classes;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login/admin/classDelete.do")
public class AdminClassDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("왔니 여긴 처음이지?");
		
		int num = Integer.valueOf(request.getParameter("num"));
		
		System.out.println("가져왔니? " + num);
		
		ClassesService classService = new ClassesService();
		
		int result = classService.deleteClass(num);
		
		if(result>0) {
			response.sendRedirect("classList");
			System.out.println("success");
		} else {
			request.getRequestDispatcher("/WEB-INF/views/selectErrorPage/UpdateFail.jsp").forward(request, response);
			System.out.println("fail");
		}
		
	}

}
