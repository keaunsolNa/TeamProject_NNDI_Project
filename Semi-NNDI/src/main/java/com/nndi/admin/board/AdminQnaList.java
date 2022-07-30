package com.nndi.admin.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.commondto.QnaDTO;
import com.nndi.model.joindto.admin.board.QnaAndCategoryDTO;

@WebServlet("/login/admin/qnaList")
public class AdminQnaList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("컨트롤러 도착");
		
		BoardService boardService = new BoardService();
		
		List<QnaAndCategoryDTO> qnaList = boardService.selectAllQnaList();
		
		for(QnaAndCategoryDTO qna : qnaList) {
			System.out.println(qna);
		}
		
		String path = "";
		if (!qnaList.isEmpty()) {
			path = "/WEB-INF/views/admin/board/QnaList.jsp";
			request.setAttribute("QnaList", qnaList);
		} else {
			path = "/WEB-INF/views/admin/selectErrorPage/selectError.jsp";
			request.setAttribute("message", "목록 조회 실패!");
			
		}
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
