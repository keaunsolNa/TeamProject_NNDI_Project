package com.nndi.client.Account;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nndi.model.commondto.MemberAliveDTO;

@WebServlet("/OutMember")
public class MemberDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("탈퇴 신청 서블릿 도착");
		
		HttpSession loginSession = request.getSession();
		MemberAliveDTO loginMember = (MemberAliveDTO) loginSession.getAttribute("loginMember");
		
		int result = new MemberService().deletemember(loginMember);
		
		String path = "";
		if(result > 0) {
			System.out.println("회원 탈퇴 성공");
			path = "/WEB-INF/views/common/resultPage/SucessResultPage.jsp";
			request.setAttribute("successCode", "deleteMember");

		} else {
			System.out.println("회원 탈퇴 실패");
			path = "/WEB-INF/views/common/resultPage/FailedResultPage.jsp";
			request.setAttribute("message", "회원 탈퇴에 실패하셨습니다. 자세한 사항은 유선으로 문의 부탁드립니다.");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}


}
