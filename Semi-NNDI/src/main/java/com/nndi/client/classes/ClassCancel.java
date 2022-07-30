package com.nndi.client.classes;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nndi.model.commondto.ClassMemberDTO;
import com.nndi.model.commondto.ClassPaymentDTO;
import com.nndi.model.commondto.MemberAliveDTO;

@WebServlet("/login/board/Classcancel")
public class ClassCancel extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession loginSession = request.getSession();
		MemberAliveDTO loginMember = (MemberAliveDTO) loginSession.getAttribute("loginMember");
		
		String login = loginMember.getId();
		System.out.println("로그인아이디 값 확인용: " + login);
		
		String cls = request.getParameter("clsNum");
		System.out.println(cls+ " clsNum 값 확인용");
		
		ClassMemberDTO classmemberdto = new ClassMemberDTO();
		ClassPaymentDTO paymentdto = new ClassPaymentDTO();
		
		classmemberdto.setClsNum(cls);
		classmemberdto.setId(login);
		
		System.out.println(classmemberdto.getId());
		
		paymentdto.setId(login);
		paymentdto.setClsNum(cls);
		
		System.out.println("paymentdto 확인: " + paymentdto);
		
		ClassApplyService classapply = new ClassApplyService();
		int result = classapply.Classcancel(classmemberdto, paymentdto);
		System.out.println("인서트 확인용" + paymentdto);
		
		if(result>0) {
			response.sendRedirect("paging");
			System.out.println("성공시 콘솔 출력 문구");
		} else {
			System.out.println("실패시 콘솔 출력");
		}
	}	
}
