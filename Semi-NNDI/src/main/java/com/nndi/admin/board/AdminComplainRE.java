package com.nndi.admin.board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.commondto.ComplainDTO;

@WebServlet("/login/admin/complainRE")
public class AdminComplainRE extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");

		String content = request.getParameter("content");
		String managerId = request.getParameter("managerId");
		int num = Integer.valueOf(request.getParameter("num"));
		
		System.out.println("Controller " + content + " " + num +"  " + managerId);
		
		ComplainDTO complain = new ComplainDTO();
		
		complain.setNum(num);
		complain.setAnswerContent(content);
		complain.setManagerId(managerId);
		
		BoardService boardService = new BoardService();
		
		int result = boardService.UpdateComplainRE(complain);
		
		if(result>0) {
			response.sendRedirect("complainList");
			System.out.println("success");
		} else {
			request.getRequestDispatcher("/WEB-INF/views/admin/selectErrorPage/UpdateFail.jsp").forward(request, response);
			System.out.println("fail");
		}
		
	}

}
