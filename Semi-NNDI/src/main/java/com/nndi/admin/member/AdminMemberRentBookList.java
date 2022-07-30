package com.nndi.admin.member;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.client.Account.MemberService;
import com.nndi.model.joindto.admin.member.BookRentAndBookInfoDTO;

@WebServlet("/login/admin/memberRentBookList.do")
public class AdminMemberRentBookList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("hihihihihihihihi");
		
		String memId = request.getParameter("id");
		
		System.out.println(memId);
	
		AdminMemberService memberService = new AdminMemberService();
		
		List<BookRentAndBookInfoDTO> memberRentBookList = memberService.memberRentBookList(memId);
		
		String path = "";
		if (!memberRentBookList.isEmpty()) {
			path = "/WEB-INF/views/admin/member/MemberDetailBookRentList.jsp";
			request.setAttribute("memberRentBookList", memberRentBookList);
		} else {
			path = "/WEB-INF/views/admin/selectErrorPage/selectError.jsp";
			request.setAttribute("message", "목록 조회 실패!");
			
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

}
