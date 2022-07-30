package com.nndi.client.Account;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nndi.model.commondto.ManagerDTO;

@WebServlet("/Account/Managerinput")
public class AccountManagerInputServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ManagerDTO managerList = new ManagerDTO();
		
		managerList.setManagerId(request.getParameter("managerId"));
		managerList.setPwd(request.getParameter("password"));
		managerList.setManagerName(request.getParameter("managerName"));
		
		int result = new MemberService().registManager(managerList);
		
		String page = "";
		
		if(result > 0) {
		
			page = "/WEB-INF/views/common/resultPage/SucessResultPage.jsp";
			HttpSession loginSession = request.getSession();
			loginSession.setAttribute("loginStatus", 2);
			loginSession.setAttribute("loginMember", managerList);
			request.setAttribute("successCode", "insertMember");

		} else {

			page = "/WEB-INF/views/common/resultPage/FailedResultPage.jsp";
			
			request.setAttribute("message", "회원 가입에 실패하셨습니다. 입력값을 확인해 주세요.");
		}
		
		request.getRequestDispatcher(page).forward(request, response);
	}

}
