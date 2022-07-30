package com.nndi.client.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.commondto.QnaDTO;

@WebServlet("/login/board/QNAdelete")
public class QNABoarddelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		int num = Integer.parseInt(request.getParameter("num"));
		System.out.println("글번호 파라미터 확인 값: " + num);
		
		
		QnaDTO qnadto = new QnaDTO();
		qnadto.setNum(num);
		
		QNAInsertService qnaupdate = new QNAInsertService();
		int result = qnaupdate.QNAdelete(qnadto);
		
		request.setCharacterEncoding("UTF-8");
		
		
		if (result>0) {
			System.out.println("성공시 출력하는 문구");
			response.sendRedirect("/Semi-NNDI/board/QNABoardList");
		} else {
			System.out.println("실패임");
		}
		
		
//		if (qnadto != null) request.getRequestDispatcher("/WEB-INF/views/client/board/QNABoardList.jsp").forward(request, response);
		
	}	
}
