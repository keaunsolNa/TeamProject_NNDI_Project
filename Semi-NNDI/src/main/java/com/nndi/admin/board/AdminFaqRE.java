package com.nndi.admin.board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.commondto.FAQDTO;

@WebServlet("/login/admin/faqRE")
public class AdminFaqRE extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");

		String content = request.getParameter("content");
		int num = Integer.valueOf(request.getParameter("num"));
		
		System.out.println("Controller " + content + " " + num);
		
		FAQDTO faq = new FAQDTO();
		
		faq.setNum(num);
		faq.setContent(content);
		
		BoardService boardService = new BoardService();
		
		int result = boardService.UpdateFaqRE(faq);
		
		if(result>0) {
			response.sendRedirect("faqList");
			System.out.println("success");
		} else {
			request.getRequestDispatcher("/WEB-INF/views/selectErrorPage/UpdateFail.jsp").forward(request, response);
			System.out.println("fail");
		}
		
	}

}
