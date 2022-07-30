package com.nndi.client.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.commondto.QnaDTO;

@WebServlet("/login/board/QNAUpdate")
public class QNABoardQNAUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int num = Integer.parseInt(request.getParameter("num"));
		
		QNABoardListService qnaservice = new QNABoardListService();
		QnaDTO qnadto = qnaservice.QnaDetail(num);
		
		System.out.println(qnadto);
		request.setAttribute("qnadto", qnadto);
		
		request.setCharacterEncoding("UTF-8");
		
		request.getRequestDispatcher("/WEB-INF/views/client/board/QNAUpdatePage.jsp").forward(request, response);
	}	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		int num = Integer.parseInt(request.getParameter("num"));
		System.out.println("글번호 파라미터 확인 값: " + num);
		
		int categoryCode = Integer.parseInt(request.getParameter("category"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		System.out.println("수정 후 제목 확인용: " + title);
		System.out.println("수정 후 글내용 확인용: " + content);
		
		QnaDTO qnadto = new QnaDTO();
		qnadto.setNum(num);
		qnadto.setCateNum(categoryCode);
		qnadto.setTitle(title);
		qnadto.setContent(content);
		
		QNAInsertService qnaupdate = new QNAInsertService();
		int result = qnaupdate.QNAUpdateService(qnadto);
		
		request.setCharacterEncoding("UTF-8");
		
		if (result>0) {
			response.sendRedirect("/Semi-NNDI/board/QNABoardList");
			System.out.println("성공시 출력하는 문구");
		} else {
			System.out.println("실패임");
		}
		
//		if (qnadto != null) request.getRequestDispatcher("/WEB-INF/views/client/board/QNABoardList.jsp").forward(request, response);
		
		
		
	}	
}
