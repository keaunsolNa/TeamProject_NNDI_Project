package com.nndi.client.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nndi.model.commondto.AdmireDTO;
import com.nndi.model.commondto.BoardDTO;
import com.nndi.model.commondto.MemberAliveDTO;

@WebServlet("/login/board/commend/insert")
public class CommendInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		
		HttpSession loginSession = request.getSession();
		MemberAliveDTO loginMember = (MemberAliveDTO) loginSession.getAttribute("loginMember");
		System.out.println(loginMember.getId());
		
		String login = loginMember.getId();
		int categoryCode = Integer.parseInt(request.getParameter("category"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		AdmireDTO commend = new AdmireDTO();
		commend.setMemId(login);
		commend.setCateNum(categoryCode);
		commend.setTitle(title);
		commend.setContent(content);
		
		BoardService boardService = new BoardService();
		int result = boardService.insertCommend(commend);
			
		String path = "";
		if(result > 0) {
			path = "/WEB-INF/views/common/resultPage/SucessResultPage.jsp";
			System.out.println("insert 성공");
			request.setAttribute("successCode", "insertCommend");
		} else {
			path = "/WEB-INF/views/common/resultPage/FailedResultPage.jsp";
			System.out.println("insert 실패");
			request.setAttribute("message", "민원 신청 접수 실패");
		}
		
		
		//request.getRequestDispatcher(path).forward(request, response);
		
		response.sendRedirect("/Semi-NNDI/board/list/commend");
	
	
	}

}
