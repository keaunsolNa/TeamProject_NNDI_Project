package com.nndi.client.center;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nndi.model.commondto.MemberAliveDTO;
import com.nndi.model.commondto.RentRequestSQLDTO;


@WebServlet("/login/center/insert")
public class CenterRentInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		request.setCharacterEncoding("UTF-8");
		
		
		HttpSession loginSession = request.getSession();
		MemberAliveDTO loginMember = (MemberAliveDTO) loginSession.getAttribute("loginMember");
		System.out.println(loginMember.getId());
		
		String code = request.getParameter("code");
		java.sql.Date start = java.sql.Date.valueOf(request.getParameter("start"));
		java.sql.Date end = java.sql.Date.valueOf(request.getParameter("end"));
		String login = loginMember.getId();
		
		System.out.println(code);
		System.out.println(start);
		System.out.println(end);
		
		RentRequestSQLDTO rentReq = new RentRequestSQLDTO();
		rentReq.setCenterName(code);
		rentReq.setRentStart(start);
		rentReq.setRentEnd(end);
		rentReq.setMemId(login);
		
		int result = CenterService.insertRantReq(rentReq);
		
		String path = "";
		if(result > 0) {
			path = "/WEB-INF/views/common/resultPage/SucessResultPage.jsp";
			System.out.println("insert 성공");
			request.setAttribute("successCode", "insertRent");
		} else {
			path = "/WEB-INF/views/common/resultPage/FailedResultPage.jsp";
			System.out.println("insert 실패");
			request.setAttribute("message", "대관 신청을 실패하셨습니다. 입력값을 확인하세요.");
		}
		
		
		request.getRequestDispatcher(path).forward(request, response);
		
		}

}
