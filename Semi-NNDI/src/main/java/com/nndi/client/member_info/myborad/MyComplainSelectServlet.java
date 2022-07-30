package com.nndi.client.member_info.myborad;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nndi.model.commondto.BoardDTO;
import com.nndi.model.commondto.MemberAliveDTO;

@WebServlet("/login/myboard/complain")
public class MyComplainSelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		HttpSession loginSession = request.getSession();
		MemberAliveDTO loginMember = (MemberAliveDTO) loginSession.getAttribute("loginMember");
		System.out.println(loginMember.getId());
		
		String login = loginMember.getId();
		
		List<BoardDTO> myComplain = MyboardService.selectMyBoardList(login); 
		
		System.out.println(myComplain);
		
		String path = "";
		if(myComplain != null) {
			path = "/WEB-INF/views/client/member-info/myborad/myComplainBoard.jsp";
			request.setAttribute("myComplain", myComplain);
		} else {
			path = "/WEB-INF/views/client/member-info/myborad/myComplainBoard.jsp";
			request.setAttribute("message", "게시물 목록 조회 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	
	
	
	
	
	
	}

}
