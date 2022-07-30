package com.nndi.client.Account;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nndi.model.commondto.MemberAliveDTO;

@WebServlet("/Account/input")
public class AccounInputServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		MemberAliveDTO memberlist = new MemberAliveDTO();
		
		memberlist.setName(request.getParameter("uName"));
		memberlist.setGender(request.getParameter("selectGender"));
		System.out.println(memberlist.getGender());
		if(memberlist.getGender().equals("male")){
			memberlist.setGender("M");
		} else {
			memberlist.setGender("W");
		}
		
		memberlist.setId(request.getParameter("userId"));
		memberlist.setIdQueNum(Integer.valueOf(request.getParameter("selectIdQueNum")));
		memberlist.setIdAnswer(request.getParameter("idQueAnswer"));
		memberlist.setPwd(request.getParameter("password"));
		
		memberlist.setEmail1(request.getParameter("str_email01"));
		memberlist.setEmail2(request.getParameter("selectEmail"));
		
		java.util.Date date = null;
		
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
				try {
					date = formatter.parse(request.getParameter("userBD"));
					memberlist.setBirth(date);
				} catch (ParseException e) {
					e.printStackTrace();
				}
			
		memberlist.setAddress1(request.getParameter("zipCode"));
		memberlist.setAddress2(request.getParameter("address1"));
		memberlist.setAddress3(request.getParameter("address2"));
		
		memberlist.setPhone1(request.getParameter("selectUserPhone"));
		memberlist.setPhone2(request.getParameter("phone2"));
		memberlist.setPhone3(request.getParameter("phone3"));
		
		int result = new MemberService().registMember(memberlist);
	
		String page = "";
		
		if(result > 0) {
			
			page = "/WEB-INF/views/common/resultPage/SucessResultPage.jsp";
			
			HttpSession loginSession = request.getSession();
			loginSession.setAttribute("loginStatus", 1);
			loginSession.setAttribute("loginMember", memberlist);
			request.setAttribute("successCode", "insertMember");

		} else {
			
			page = "/WEB-INF/views/common/resultPage/FailedResultPage.jsp";
			
			request.setAttribute("message", "회원 가입에 실패하셨습니다. 입력값을 확인하세요.");
		}
		
		request.getRequestDispatcher(page).forward(request, response);
	}

}
