package com.nndi.admin.member;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.commondto.MemberAliveDTO;


@WebServlet("/login/admin/restMemberList")
public class AdminRestMemberList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("컨트롤러 도착");
		
		AdminMemberService adminmemberService = new AdminMemberService();
		
		List<MemberAliveDTO> memberRestList = adminmemberService.selectAllRestMemberList();
		
		for(MemberAliveDTO memberAlive : memberRestList) {
			System.out.println(memberAlive);
		}
		
		String path = "";
		if (!memberRestList.isEmpty()) {
			path = "/WEB-INF/views/admin/member/RestMemberList.jsp";
			request.setAttribute("memberRestList", memberRestList);
		} else {
			path = "/WEB-INF/views/admin/selectErrorPage/selectError.jsp";
			request.setAttribute("message", "목록 조회 실패!");
			
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}

