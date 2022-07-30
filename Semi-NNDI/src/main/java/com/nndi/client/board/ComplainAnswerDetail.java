package com.nndi.client.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nndi.model.commondto.MemberAliveDTO;
import com.nndi.model.joindto.client.board.BoardAndCategoryDTO;

@WebServlet("/login/answer/complain/detail/*")
public class ComplainAnswerDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
	  HttpSession loginSession = request.getSession();
	  MemberAliveDTO loginMember = (MemberAliveDTO) loginSession.getAttribute("loginMember");
	  System.out.println(loginMember.getId());
		
      int num = Integer.valueOf(request.getParameter("num"));
      
      System.out.println(num);
      
      BoardService boardService = new BoardService();
      
      BoardAndCategoryDTO complainAnswer = boardService.selectComplainAnswer(num);
      
      System.out.println(complainAnswer); //확인용
      
      String path = "";
		if(loginMember.getId().equals(complainAnswer.getMemberId())) {
			path = "/WEB-INF/views/client/board/ComplainAnswerDetail.jsp";
			request.setAttribute("complainAnswer", complainAnswer);
		} else {
			path = "/WEB-INF/views/common/resultPage/FailedResultPage.jsp";
			request.setAttribute("message", "본인이 문의한 게시글의 답변만 확인할 수 있습니다.");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
		

	
	}


}
