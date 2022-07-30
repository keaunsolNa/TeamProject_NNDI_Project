package com.nndi.common.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nndi.model.commondto.MemberAliveDTO;

@WebServlet("/RestMemberLogin")
public class RestMemberLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* Session에 있는 로그인한 회원 정보 getSession */
		HttpSession loginSession = request.getSession();
		MemberAliveDTO loginMember = (MemberAliveDTO) loginSession.getAttribute("loginMember");
		System.out.println(loginMember);
		
		
		/* Login Service 객체 생성 */
		MemberLoginService memberLoginService = new MemberLoginService();
		String path ="";
		
		System.out.println("휴면 회원 서블릿 도착 확인");
		System.out.println(loginMember);
		/* 고객 상태 R->A 로 Update */
		int result = memberLoginService.restMemberUpdate(loginMember);
		
		/* Update 성공 시 */
		if(result > 0) {
			
			loginSession.setAttribute("loginStatus", 1);
			loginSession.setAttribute("loginMember", loginMember);
			response.sendRedirect(request.getContextPath());
			
			/* Update 실패 시 */
		} else {
			path="/WEB-INF/views/common/login/UserLogin.jsp";
			request.setAttribute("loginStatus", 3);
			request.getRequestDispatcher(path).forward(request, response);
		}
		
	}

}
