package com.nndi.client.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.commondto.QnaDTO;

@WebServlet("/board/QNABoardList")
public class QNABoardList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("서블릿 확인용");
		QNABoardListService qnaservice = new QNABoardListService();
		List<QnaDTO> qnalist = qnaservice.QNABoardList();
		System.out.println("dto 확인용 "+qnalist);
		
		request.setCharacterEncoding("UTF-8");
		
		request.setAttribute("qnalist", qnalist);
		
		request.getRequestDispatcher("/WEB-INF/views/client/board/QNABoardList.jsp").forward(request, response);
		
		
		}	
}
