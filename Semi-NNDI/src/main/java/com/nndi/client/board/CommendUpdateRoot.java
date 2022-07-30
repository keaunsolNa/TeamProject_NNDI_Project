package com.nndi.client.board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.joindto.client.board.AdmireAndCategoryDTO;
import com.nndi.model.joindto.client.board.BoardAndCategoryDTO;

@WebServlet("/login/board/commend/update")
public class CommendUpdateRoot extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int num = Integer.parseInt(request.getParameter("num"));
		
		System.out.println(num);
		
		System.out.println("여기는" + num);
		
		
	
		BoardService board = new BoardService();
		
		AdmireAndCategoryDTO cmd = board.detailUpdatecmd(num);
		
		System.out.println("여기냐?" + cmd);
		
		request.setAttribute("cmd", cmd);
	
	
		
		request.getRequestDispatcher("/WEB-INF/views/client/board/CommendUpdate.jsp").forward(request, response);

	}


}
