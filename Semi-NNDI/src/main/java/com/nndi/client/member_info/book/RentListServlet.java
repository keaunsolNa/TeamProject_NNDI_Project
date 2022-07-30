package com.nndi.client.member_info.book;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nndi.model.commondto.MemberAliveDTO;
import com.nndi.model.joindto.client.member_info.book.MemberAndBookRentDTO;


@WebServlet("/login/Member/BookRent")
public class RentListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("고객 대출 도서 조회 Servlet 도착 ");
		/* Service, DTO 객체 생성 */
		MemberBookService memberService = new MemberBookService();
		
		/* 로그인 된 고객 Session 정보 가져오기 */
		HttpSession loginSession = request.getSession();
		MemberAliveDTO member =(MemberAliveDTO) loginSession.getAttribute("loginMember");
		
		/* 가져온 로그인 된 고객 Session정보로 해당 고객이 빌린 도서 대출 내역 조회해 오기(반납되지 않은 도서만) */
		List<MemberAndBookRentDTO>bookRentList = memberService.UserRentBook(member);
		
		for(MemberAndBookRentDTO rentList : bookRentList) {
			System.out.println("Controller : " + rentList);
		}
		
		String path = "";
		System.out.println("Servlet에서의 조회 결과값: " + bookRentList);
		
		/* 가져온 결과값에 따른 조건문 처리 */
		if(bookRentList.isEmpty()) {
			path = "/WEB-INF/views/common/resultPage/FailedResultPage.jsp";
			request.setAttribute("message", "현재 빌리신 도서가 존재하지 않습니다.");
			System.out.println("대출 도서 없음");
		} else {
			path = "/WEB-INF/views/client/member-info/book/MemberRentBookList.jsp";
			request.setAttribute("bookRentList", bookRentList);
			System.out.println("대출 도서 있음");;
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}


}
