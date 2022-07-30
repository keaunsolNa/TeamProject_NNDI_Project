package com.nndi.client.member_info.info;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nndi.client.board.QNABoardListService;
import com.nndi.model.commondto.MemberAliveDTO;
import com.nndi.model.commondto.QnaDTO;

@WebServlet("/login/board/MyPageQNA")
public class MypageQNAServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession loginSession = request.getSession();
		MemberAliveDTO loginMember = (MemberAliveDTO) loginSession.getAttribute("loginMember");
		System.out.println("당신의 ID를 확인해볼까요: "+ loginMember.getId());
		
		String loginId = loginMember.getId();
		
		QNABoardListService qnaservice = new QNABoardListService();
		List<QnaDTO> qnalist = qnaservice.MyPageQNAList(loginId);
		
		System.out.println("반환값 확인용" + qnalist);
		
		
		request.setAttribute("qnalist", qnalist);
		
		request.getRequestDispatcher("/WEB-INF/views/client/member-info/info/MyPageQNAList.jsp").forward(request, response);
		
		
		}	
}
