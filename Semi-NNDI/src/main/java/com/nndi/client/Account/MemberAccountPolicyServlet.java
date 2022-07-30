package com.nndi.client.Account;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Account/policy")
public class MemberAccountPolicyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String xo1 = request.getParameter("agree");
		String xo2 = request.getParameter("agree2");
		
		String path="";
		if(xo1.equals("true") && xo2.equals("true")) {
			path="/WEB-INF/views/client/member-info/Account/MemberAccount.jsp";
		} else {
			path="/WEB-INF/views/client/member-info/info/UserMainPage.jsp";
		}
	
		request.getRequestDispatcher(path).forward(request, response);

	}

}
