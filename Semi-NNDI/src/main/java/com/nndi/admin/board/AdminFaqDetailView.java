package com.nndi.admin.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.joindto.admin.board.FAQAndCategoryDTO;

@WebServlet("/login/admin/detailFaq.do")
public class AdminFaqDetailView extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int num = Integer.valueOf(request.getParameter("no"));
		
		System.out.println("가져왔니? " + num);
		
		BoardService boardService = new BoardService();
		
		FAQAndCategoryDTO detailFaq = boardService.selectFAQOneByNum(num);
		
		System.out.println( "Servlet : " + detailFaq );
		
		String path = "";
		if (!"".equals(detailFaq.getManagerId()) && detailFaq.getManagerId() != null) {
			path = "/WEB-INF/views/admin/board/FaqUpdate.jsp";
			request.setAttribute("detailFaq", detailFaq);
		} else {
			path = "/WEB-INF/views/admin/selectErrorPage/selectError.jsp";
			request.setAttribute("message", "목록 조회 실패!");
			
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
		
	}

}
