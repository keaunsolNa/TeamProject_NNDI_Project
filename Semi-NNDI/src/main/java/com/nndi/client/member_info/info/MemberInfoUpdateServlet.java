package com.nndi.client.member_info.info;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login/MemberInfo/Update")
public class MemberInfoUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

			System.out.println("회원 정보 수정 서블릿");
			
			request.getRequestDispatcher("/WEB-INF/views/client/member-info/info/MemberInfoUpdate.jsp").forward(request, response);
	}

}
