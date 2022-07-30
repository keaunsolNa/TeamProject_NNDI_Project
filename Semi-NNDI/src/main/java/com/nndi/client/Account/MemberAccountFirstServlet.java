package com.nndi.client.Account;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Account/first")
public class MemberAccountFirstServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String path="";

		HttpSession loginSession = request.getSession();
		path="/WEB-INF/views/client/member-info/Account/MemberAccountPolicy.jsp";
		/*			path = "/WEB-INF/views/common/resultPage/FailedResultPage.jsp";
			request.setAttribute("message", "중복 계정은 허용되지 않습니다. 확인 부탁드립니다.");*/
		request.getRequestDispatcher(path).forward(request, response);
	}

}
