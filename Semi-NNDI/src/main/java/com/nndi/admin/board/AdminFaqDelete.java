package com.nndi.admin.board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/login/admin/deletefaq.do")
public class AdminFaqDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("컨트롤러 hihihihihihihihihihihihihihihihi?");
		
		int num = Integer.valueOf(request.getParameter("num"));
		
		System.out.println("가져왔니 " + num);
		
		BoardService boardService = new BoardService();
		
		int result = boardService.deletefaq(num);
		
		if(result>0) {
			response.sendRedirect("faqList");
			System.out.println("success");
		} else {
			request.getRequestDispatcher("/WEB-INF/views/admin/selectErrorPage/UpdateFail.jsp").forward(request, response);
			System.out.println("fail");
		}
	}

}
