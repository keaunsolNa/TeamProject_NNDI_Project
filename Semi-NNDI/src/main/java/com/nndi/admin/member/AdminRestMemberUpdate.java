package com.nndi.admin.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.admin.member.AdminMemberService;

@WebServlet("/login/admin/changeAliveMember.do")
public class AdminRestMemberUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("컨트롤러");
		
		String id = request.getParameter("id");
		
		System.out.println("가져왔니 " + id);
		
		AdminMemberService adminMemberService = new AdminMemberService();
		
		int result = adminMemberService.updateRestMember(id);
		
		if(result>0) {
			response.sendRedirect("restMemberList");
			System.out.println("success");
		} else {
			request.getRequestDispatcher("/WEB-INF/views/selectErrorPage/UpdateFail.jsp").forward(request, response);
			System.out.println("fail");
		}
	
		
	}

}
