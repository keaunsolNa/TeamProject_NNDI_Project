package com.nndi.common.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nndi.model.commondto.ManagerDTO;
import com.nndi.model.commondto.MemberAliveDTO;

@WebServlet("/AdminLogin/check")
public class AdminLoginCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String managerId = request.getParameter("managerId");
		String password = request.getParameter("password");

		/* 매니저 DTO 객체 생성 */
		ManagerDTO managerList = new ManagerDTO();
		managerList.setManagerId(managerId);
		managerList.setPwd(password);
				/* ManagerService 객체 생성 */
		ManagerLoginService managerLoginService = new ManagerLoginService();
		
		/* 로그인한 매니저 정보 SELECT */
		ManagerDTO loginManager = managerLoginService.managerLoginService(managerList);

		/* Session 생성 (공유) */
		String path = "";
		HttpSession loginSession = request.getSession();
		
		/* 로그인 성공 했을 때 */
		if(null != loginManager) {
				loginSession.setAttribute("loginStatus", 2);
				loginSession.setAttribute("loginMember", loginManager);
				System.out.println("관리자 로그인 성공");
				path="/login/admin/main";
				request.getRequestDispatcher(path).forward(request, response);
				
				/*로그인 실패 했을 때 */
		} else {
			path="/WEB-INF/views/admin/login/adminLogin.jsp";
			request.setAttribute("loginStatus", 3); 
			System.out.println("관리자 로그인 실패");
			request.getRequestDispatcher(path).forward(request, response);
		}
	}
}
