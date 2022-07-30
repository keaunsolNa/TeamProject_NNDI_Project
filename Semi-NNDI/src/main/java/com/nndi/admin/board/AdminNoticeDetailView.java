package com.nndi.admin.board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.joindto.admin.board.NoticeAndCategoryDTO;

@WebServlet("/login/admin/detailNotice.do")
public class AdminNoticeDetailView extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int num = Integer.valueOf(request.getParameter("no"));
		
		System.out.println("가져왔니? " + num);
		
		BoardService boardService = new BoardService();
		
		NoticeAndCategoryDTO detailNotice = boardService.selectOneByNumNotice(num);
		
		System.out.println( "Servlet : " + detailNotice );
		
		String path = "";
		if (!"".equals(detailNotice.getContent()) && detailNotice.getContent() != null) {
			path = "/WEB-INF/views/admin/board/NoticeUpdate.jsp";
			request.setAttribute("detailNotice", detailNotice);
		} else {
			path = "/WEB-INF/views/admin/selectErrorPage/selectError.jsp";
			System.out.println("잔넨..");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
		
	}

}
