package com.nndi.client.board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/board/commend/delete/*")
public class CommendDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int num = Integer.valueOf(request.getParameter("num"));
		
		int result = BoardService.deleteCommend(num);
		
		String path = "";
		if(result > 0) {
			path = "/WEB-INF/views/common/resultPage/SucessResultPage.jsp";
			System.out.println("update 성공");
			request.setAttribute("successCode", "deleteCommend");
		} else {
			path = "/WEB-INF/views/common/resultPage/FailedResultPage.jsp";
			System.out.println("update 실패");
			request.setAttribute("message", "칭찬 삭제 실패");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
		
	
	
	}


}
