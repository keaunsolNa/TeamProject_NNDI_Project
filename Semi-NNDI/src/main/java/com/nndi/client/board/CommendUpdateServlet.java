package com.nndi.client.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.commondto.AdmireDTO;
import com.nndi.model.joindto.client.board.BoardAndCategoryDTO;

@WebServlet("/login/board/commend/update/modify")
public class CommendUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int num = Integer.valueOf(request.getParameter("num"));
		int categoryCode = Integer.parseInt(request.getParameter("category"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		AdmireDTO board = new AdmireDTO();
		board.setNum(num);
		board.setCateNum(categoryCode);
		board.setTitle(title);
		board.setContent(content);
		
		int result = BoardService.updateCommend(board);
		
		String path = "";
		if(result > 0) {
			path = "/WEB-INF/views/common/resultPage/SucessResultPage.jsp";
			System.out.println("update 성공");
			request.setAttribute("successCode", "updateCommend");
		} else {
			path = "/WEB-INF/views/common/resultPage/FailedResultPage.jsp";
			System.out.println("update 실패");
			request.setAttribute("message", "칭찬 수정 실패");
		}
		
		
		//request.getRequestDispatcher(path).forward(request, response);
		
		response.sendRedirect("/Semi-NNDI/board/list/commend");
	
	}

}
