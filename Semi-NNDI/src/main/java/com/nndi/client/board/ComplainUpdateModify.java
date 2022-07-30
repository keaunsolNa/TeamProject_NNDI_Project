package com.nndi.client.board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.commondto.BoardDTO;

@WebServlet("/login/board/complain/modify/*")
public class ComplainUpdateModify extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		request.setCharacterEncoding("UTF-8");
		
		int num = Integer.valueOf(request.getParameter("num"));
		int categoryCode = Integer.parseInt(request.getParameter("category"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		BoardDTO board = new BoardDTO();
		board.setNum(num);
		board.setCate(categoryCode);
		board.setTitle(title);
		board.setContent(content);
		
		BoardService boardService = new BoardService();
		int result = boardService.updateComplain(board);
		
		String path = "";
		if(result > 0) {
			path = "/WEB-INF/views/common/resultPage/SucessResultPage.jsp";
			System.out.println("update 성공");
			request.setAttribute("successCode", "updateComplain");
		} else {
			path = "/WEB-INF/views/common/resultPage/FailedResultPage.jsp";
			System.out.println("update 실패");
			request.setAttribute("message", "민원 수정 실패");
		}
		
		
		//request.getRequestDispatcher(path).forward(request, response);
		response.sendRedirect("/Semi-NNDI/board/list/complain");
		
	}

}
