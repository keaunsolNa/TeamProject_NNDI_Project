package com.nndi.admin.board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.commondto.QnaDTO;

@WebServlet("/login/admin/QnaDelete.do")
public class AdminQnaDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Delete 서블릿 도착");
		
		int num = Integer.valueOf(request.getParameter("num"));
		
		System.out.println("Controller " + num);
		
		BoardService boardService = new BoardService();
		
		int result = boardService.deleteQnaRE(num);
		
		if(result>0) {
			response.sendRedirect("qnaList");
			System.out.println("success");
		} else {
			request.getRequestDispatcher("/WEB-INF/views/selectErrorPage/UpdateFail.jsp").forward(request, response);
			System.out.println("fail");
		}
	
	}


}
