package com.nndi.common.login;

import java.io.IOException;
import java.lang.ProcessBuilder.Redirect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nndi.model.commondto.MemberAliveDTO;

@WebServlet("/Member/idFind/ByQ/Check")
public class MemberIdFindByQCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		MemberAliveDTO memberAlive = new MemberAliveDTO();
		memberAlive.setName(request.getParameter("userName"));
		memberAlive.setIdQueNum(Integer.valueOf(request.getParameter("userIdFindQue")));
		memberAlive.setIdAnswer(request.getParameter("userQuestionAnswer"));
		
		MemberLoginService memberService = new MemberLoginService();
		String memberId = memberService.findMemberIdByQ(memberAlive);
		
		String path = "";
		
		if(memberId != null) {
			path="/WEB-INF/views/common/login/MemberIdFindByQReust.jsp";
			request.setAttribute("message2", memberId);
			request.setAttribute("message", 2);
			request.getRequestDispatcher(path).forward(request, response);
		} else {
			path="/WEB-INF/views/common/login/MemberIdFindByQReust.jsp";
			request.setAttribute("message", 1);
			request.getRequestDispatcher(path).forward(request, response);
		}
		
	}

}
