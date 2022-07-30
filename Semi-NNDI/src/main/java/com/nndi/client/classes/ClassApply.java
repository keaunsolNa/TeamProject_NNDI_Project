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

@WebServlet("/login/board/ClassApply")
public class ClassApply extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession loginSession = request.getSession();
		MemberAliveDTO loginMember = (MemberAliveDTO) loginSession.getAttribute("loginMember");
		
		String login = loginMember.getId();
		System.out.println("로그인아이디 값 확인용: " + login);
		
		String cls = request.getParameter("clsNum");
		System.out.println(cls+ " clsNum 값 확인용");
		
		int cost = Integer.parseInt(request.getParameter("cencost"));
		System.out.println("cost값 넘어오는지 확인용 " + cost);
		
		ClassMemberDTO classmemberdto = new ClassMemberDTO();
		ClassPaymentDTO paymentdto = new ClassPaymentDTO();
		
		classmemberdto.setClsNum(cls);
		classmemberdto.setId(login);
		
		System.out.println(classmemberdto.getId());
		
		paymentdto.setId(login);
		paymentdto.setClsNum(cls);
		paymentdto.setClsPrice(cost);
		
		System.out.println("paymentdto 확인: " + paymentdto);
		
		ClassApplyService classapply = new ClassApplyService();
		int result = classapply.classmemberinsert(classmemberdto, paymentdto, login);
		System.out.println("인서트 확인용" + paymentdto);
		
		String path = "";
			if(result>0) {
				response.sendRedirect("paging");
		        System.out.println("성공시 콘솔 출력 문구");
		    } else {
		        path = "/WEB-INF/views/common/resultPage/FailedResultPage.jsp";
		        request.setAttribute("message", "이미 본인이 수강신청한 강좌이거나, 수강을 취소한 강좌입니다.");
		        request.getRequestDispatcher(path).forward(request, response);
		    }
	}	
}
