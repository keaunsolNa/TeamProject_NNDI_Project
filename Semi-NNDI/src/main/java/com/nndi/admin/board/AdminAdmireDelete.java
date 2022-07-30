package com.nndi.admin.board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/login/admin/admireDelete.do")
public class AdminAdmireDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("하이루 컨트롤러");
		
		int num = Integer.valueOf(request.getParameter("num"));
		
		System.out.println("가져왔니 " + num);
		
		BoardService boardService = new BoardService();
		
		int result = boardService.deleteAdmire(num);
		
		if(result>0) {
			response.sendRedirect("admireList");
			System.out.println("success");
		} else {
			request.getRequestDispatcher("/WEB-INF/views/selectErrorPage/UpdateFail.jsp").forward(request, response);
			System.out.println("fail");
		}
	
	}



}
