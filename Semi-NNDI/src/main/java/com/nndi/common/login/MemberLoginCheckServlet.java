package com.nndi.common.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

import com.nndi.model.commondto.MemberAliveDTO;

@WebServlet("/MemberLogin/check")
public class MemberLoginCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String userId = request.getParameter("userId");
		String password = request.getParameter("password");

		MemberAliveDTO memberAlive = new MemberAliveDTO();
		memberAlive.setId(userId);
		memberAlive.setPwd(password);
		
		/* Login Service 객체 생성 */
		MemberLoginService memberLoginService = new MemberLoginService();
		
		/* Login한 Member DAO 생성및 loginMember DTO 받아오기 */
		MemberAliveDTO loginMember = memberLoginService.memberLoginService(memberAlive);
		String path = "";
		
		/* Login이 성공하고 활동 중인 회원일 때 */
		if(loginMember != null) {
			
			/* 마지막 로그인 시기 Update */
			int result = memberLoginService.memberLastLoginService(memberAlive);
			if(result > 0) {
				
				/* Session에 로그인 상태, 로그인한 회원 정보 객체(DTO) setAttribute */
				HttpSession loginSession = request.getSession();
				loginSession.setAttribute("loginStatus", 1);
				loginSession.setAttribute("loginMember", loginMember);
				response.sendRedirect(request.getContextPath());
				
			}
			
		} else {
			
			/* 휴면 회원 여부 체크 및 휴면회원 고객 DTO 객체 받아오기 */
			MemberAliveDTO restLoginMember = memberLoginService.restMemberLoginSevice(memberAlive);
			System.out.println(restLoginMember);
			/* 휴면 회원일 때 */
			if(restLoginMember != null) {
				
				/* Session에 로그인 상태, 로그인한 회원 정보 객체(DTO) setAttribute */
				System.out.println("휴면 회원 상태 확인");
				HttpSession loginSession = request.getSession();
				loginSession.setAttribute("loginMember", restLoginMember);
				System.out.println(loginSession.getAttribute("loginMember"));
				path="/WEB-INF/views/common/login/RestMemberLogin.jsp";
				request.getRequestDispatcher(path).forward(request, response);
				
				/* 로그인 실패했을 경우 */
			} else {
				path="/WEB-INF/views/common/login/UserLogin.jsp";
				request.setAttribute("loginStatus", 3);
				request.getRequestDispatcher(path).forward(request, response);
			}
		}
		
		
	}
}
