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

@WebServlet("/login/board/QNABoardListDetail")
public class QNABoardListDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int num = Integer.parseInt(request.getParameter("num"));
		
		HttpSession loginSession = request.getSession();
		MemberAliveDTO loginMember = (MemberAliveDTO) loginSession.getAttribute("loginMember");
		System.out.println("당신의 ID를 확인해볼까요: "+loginMember.getId());
		
		QNABoardListService qnaservice = new QNABoardListService();
		QnaDTO qnadto = qnaservice.QnaDetail(num);
		
		System.out.println("이글의 ID를 확인해볼까요: " + qnadto.getMemId());
		
			
		String path = "";
		if(loginMember.getId().equals(qnadto.getMemId())) {
			path = "/WEB-INF/views/client/board/QNABoardListDetail.jsp";
			request.setAttribute("qnadto", qnadto);
		} else {
			path = "/WEB-INF/views/common/resultPage/FailedResultPage.jsp";
			request.setAttribute("message", "본인이 문의한 게시글만 확인할 수 있습니다.");
		}
		request.getRequestDispatcher(path).forward(request, response);
		
	}	
}
