package com.nndi.common.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Member/pwdinitialization")
public class MemberPwdFindServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path ="";
		path ="/WEB-INF/views/common/login/MemberPwdFind.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}


}
