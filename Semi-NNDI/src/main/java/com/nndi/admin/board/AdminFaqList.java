package com.nndi.admin.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.joindto.admin.board.FAQAndCategoryDTO;

@WebServlet("/login/admin/faqList")
public class AdminFaqList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("컨트롤러 도착");
		
		BoardService boardService = new BoardService();
		
		List<FAQAndCategoryDTO> FaqList = boardService.selectAllFAQList();
		
		for(FAQAndCategoryDTO faq : FaqList) {
			System.out.println(faq);
		}
		
		String path = "";
		if (!FaqList.isEmpty()) {
			path = "/WEB-INF/views/admin/board/FaqList.jsp";
			request.setAttribute("FaqList", FaqList);
		} else {
			path = "/WEB-INF/views/admin/selectErrorPage/selectError.jsp";
			request.setAttribute("message", "목록 조회 실패!");
			
		}

		request.getRequestDispatcher(path).forward(request, response);
		
	}

}

