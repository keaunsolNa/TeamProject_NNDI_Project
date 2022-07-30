package com.nndi.admin.board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.joindto.admin.board.AdmireAndCategoryDTO;
import com.nndi.model.joindto.admin.board.ComplainAndCategoryDTO;

@WebServlet("/login/admin/detailAdmire.do")
public class AdminAdmireDeteilView extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int num = Integer.valueOf(request.getParameter("no"));
		
		System.out.println("가져왔니? " + num);
		
		BoardService boardService = new BoardService();
		
		AdmireAndCategoryDTO detailAdmire = boardService.selectOneByNumAdmire(num);
		
		System.out.println( "Servlet : " + detailAdmire );
		
		String path = "";
		if (!"".equals(detailAdmire.getMemId()) && detailAdmire.getMemId() != null) {
			path = "/WEB-INF/views/admin/board/AdmireDetail.jsp";
			request.setAttribute("detailAdmire", detailAdmire);
		} else {
			path = "/WEB-INF/views/admin/selectErrorPage/selectError.jsp";
			System.out.println("잔넨..");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
