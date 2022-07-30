package com.nndi.admin.board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.joindto.admin.board.ComplainAndCategoryDTO;
import com.nndi.model.joindto.admin.board.NoticeAndCategoryDTO;

@WebServlet("/login/admin/detailComplain.do")
public class AdminComplainDetailView extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int num = Integer.valueOf(request.getParameter("no"));
		
		System.out.println("가져왔니? " + num);
		
		BoardService boardService = new BoardService();
		
		ComplainAndCategoryDTO detailComplain = boardService.selectOneByNumComplain(num);
		
		System.out.println( "Servlet : " + detailComplain );
		
		String path = "";
		if (!"".equals(detailComplain.getMemId()) && detailComplain.getMemId() != null) {
			path = "/WEB-INF/views/admin/board/ComplainUpdate.jsp";
			request.setAttribute("detailComplain", detailComplain);
		} else {
			path = "/WEB-INF/views/admin/selectErrorPage/selectError.jsp";
			System.out.println("잔넨..");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
