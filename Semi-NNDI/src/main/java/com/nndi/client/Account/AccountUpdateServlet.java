package com.nndi.client.Account;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.commondto.MemberAliveDTO;

@WebServlet("/Account/Update")
public class AccountUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("고객 정보 수정 서블릿 도착");
		
		MemberAliveDTO updateMemberList = new MemberAliveDTO();
		
		updateMemberList.setName(request.getParameter("uName"));
		updateMemberList.setGender(request.getParameter("selectGender"));
		
		if(updateMemberList.getGender().equals("남")){
			updateMemberList.setGender("M");
		} else {
			updateMemberList.setGender("W");
		}
		
		updateMemberList.setId(request.getParameter("userId"));
		System.out.println(request.getParameter("userId"));
		updateMemberList.setIdQueNum(Integer.valueOf(request.getParameter("selectIdQueNum")));
		updateMemberList.setIdAnswer(request.getParameter("idQueAnswer"));
		updateMemberList.setPwd(request.getParameter("password"));
		
		updateMemberList.setEmail1(request.getParameter("str_email01"));
		updateMemberList.setEmail2("@"+ request.getParameter("selectEmail"));
		
			updateMemberList.setAddress1(request.getParameter("zipCode"));
			updateMemberList.setAddress2(request.getParameter("address1"));
			updateMemberList.setAddress3(request.getParameter("address1"));
			updateMemberList.setPhone1(request.getParameter("selectUserPhone"));
			updateMemberList.setPhone2(request.getParameter("phone2"));
			updateMemberList.setPhone3(request.getParameter("phone3"));
		
			System.out.println(updateMemberList);
			
			int result = new MemberService().UpdateMember(updateMemberList);
			
			String path = "";
			if(result > 0) {
				System.out.println("정보 수정 성공");
				path = "/WEB-INF/views/common/resultPage/SucessResultPage.jsp";
				request.setAttribute("successCode", "updateMember");

			} else {
				System.out.println("정보 수정 실패");
				path = "/WEB-INF/views/common/resultPage/FailedResultPage.jsp";
				request.setAttribute("message", "정보 수정에 실패하셨습니다. 입력값을 확인하세요.");
			}
			
			request.getRequestDispatcher(path).forward(request, response);
	}

}
