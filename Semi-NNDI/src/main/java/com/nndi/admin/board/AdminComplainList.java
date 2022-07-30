package com.nndi.admin.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.joindto.admin.board.ComplainAndCategoryDTO;

@WebServlet("/login/admin/complainList")
public class AdminComplainList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("컨트롤러 도착");
		
		BoardService boardService = new BoardService();
		
		List<ComplainAndCategoryDTO> complainList = boardService.selectAllComplainList();
		
		for(ComplainAndCategoryDTO complain : complainList) {
			System.out.println("Controller : " + complain);
		}
		
		String path = "";
		if (!complainList.isEmpty()) {
			path = "/WEB-INF/views/admin/board/ComplainList.jsp";
			request.setAttribute("complainList", complainList);
		} else {
			path = "/WEB-INF/views/selectErrorPage/selectError.jsp";
			System.out.println("잔넨..");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	
	}

}
