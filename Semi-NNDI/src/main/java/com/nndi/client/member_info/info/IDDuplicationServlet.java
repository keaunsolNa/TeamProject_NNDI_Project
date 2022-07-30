package com.nndi.client.member_info.info;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.client.Account.MemberService;

@WebServlet("/user/id/check")
public class IDDuplicationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("서블릿 도착");
		String userId = request.getParameter("inputid");
		System.out.println(userId);
		PrintWriter out = response.getWriter();
		
		MemberService memberService = new MemberService();
		
		int idCheck = memberService.checkId(userId);
		
		out.write(idCheck + "1");
	}

}
