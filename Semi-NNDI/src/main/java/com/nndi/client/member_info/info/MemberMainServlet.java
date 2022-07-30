package com.nndi.client.member_info.info;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/MemberMain")
public class MemberMainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("main 서블릿 도착");
		HttpSession loginSession = request.getSession();
		
		System.out.println("로그인 상태 판별");
		System.out.println(loginSession.getAttribute("loginStatus"));
		
		HttpSession requestSession = request.getSession();

		String path = "";
		if("".equals(loginSession.getAttribute("loginStatus")) || loginSession.getAttribute("loginStatus") == null || loginSession.getAttribute("loginStatus").equals(0)) {
			System.out.println("로그인 기록 없음");
			path="/WEB-INF/views/main/main.jsp";
			request.getRequestDispatcher(path).forward(request, response);
		
		} else if(loginSession.getAttribute("loginStatus").equals(2)) {
			System.out.println("관리자 로그인");
			path="/login/admin/main";
			request.getRequestDispatcher(path).forward(request, response);
	
		} else if(loginSession.getAttribute("loginStatus").equals(1)) {
			System.out.println("회원 로그인");
			path="/WEB-INF/views/main/main.jsp";
			request.getRequestDispatcher(path).forward(request, response);
			
		} else if(loginSession.getAttribute("loginStatus").equals(3)) {
			System.out.println("로그아웃");
			
		} else if(loginSession.getAttribute("loginStatus").equals(4)) {
			
		}
	}
}
