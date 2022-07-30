package com.nndi.client.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nndi.model.commondto.MemberAliveDTO;
import com.nndi.model.commondto.QnaDTO;

@WebServlet("/login/board/QNAWritepage")
public class QNAWritepage extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		request.getRequestDispatcher("/WEB-INF/views/client/board/QNAWritepage.jsp").forward(request, response);
	}	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		HttpSession loginSession = request.getSession();
		MemberAliveDTO loginMember = (MemberAliveDTO) loginSession.getAttribute("loginMember");
		
		System.out.println(loginMember.getId());
		System.out.println("로그인 정보 확인용 : " + loginMember.getId());
		String login = loginMember.getId();
		
		int categoryCode = Integer.parseInt(request.getParameter("category"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		QnaDTO qnadto = new QnaDTO();
		qnadto.setMemId(login);
		qnadto.setCateNum(categoryCode);
		qnadto.setTitle(title);
		qnadto.setContent(content);
		
		QNAInsertService qnainsert = new QNAInsertService();
		int result = qnainsert.insertqna(qnadto);
		
		System.out.println("insert확인용"+qnadto);
		
		if(result>0) {
			response.sendRedirect("/Semi-NNDI/board/QNABoardList");
			System.out.println("성공시 콘솔 출력 문구");
		} else {
			System.out.println("실패시 콘솔 출력");
		}
	}	
}
