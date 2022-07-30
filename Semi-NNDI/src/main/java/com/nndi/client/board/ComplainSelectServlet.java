package com.nndi.client.board;

import java.io.IOException;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.commondto.BoardDTO;

@WebServlet("/board/list/complain")
public class ComplainSelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<BoardDTO> boardList = BoardService.selectBoardList();
		System.out.println(boardList);
		
		String path = "";
		if(boardList != null) {
			path = "/WEB-INF/views/client/board/ComplainSelect.jsp";
			request.setAttribute("boardList", boardList);
		} else {
			path = "/WEB-INF/views/client/board/ComplainSelect.jsp";
			request.setAttribute("message", "게시물 목록 조회 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	
	
	
	}


}
