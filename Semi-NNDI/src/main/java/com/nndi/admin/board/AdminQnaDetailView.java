package com.nndi.admin.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.joindto.admin.board.QnaAndCategoryDTO;


@WebServlet("/login/admin/detailqna.do")
public class AdminQnaDetailView extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int num = Integer.valueOf(request.getParameter("no"));
		
		System.out.println("가져왔니? " + num);
		
		BoardService boardService = new BoardService();
		
		QnaAndCategoryDTO detailqna = boardService.selectQnaOneByNum(num);
		
		System.out.println( "Servlet : " + detailqna );
		
		String path = "";
		if (!"".equals(detailqna.getMemId()) && detailqna.getMemId() != null) {
			path = "/WEB-INF/views/admin/board/QnaUpdate.jsp";
			request.setAttribute("detailqna", detailqna);
		} else {
			path = "/WEB-INF/views/admin/selectErrorPage/selectError.jsp";
			System.out.println("수정 실패");
			
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
		
	}

}
