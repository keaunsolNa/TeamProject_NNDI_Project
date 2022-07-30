package com.nndi.admin.book;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login/admin/deleteBookReturn.do")
public class AdminBookListReturn extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("서블릿 도착");
		
		int code = Integer.valueOf(request.getParameter("code"));
		System.out.println(code);
		
		BookService bookService = new BookService();
		int result = bookService.updateBookSearchYnReturn(code);
		
		String page = "";
		
		if (result > 0) {
			
			System.out.println("변경 성공");
			page = "/WEB-INF/views/common/resultPage/SucessResultPage.jsp";
			request.setAttribute("successCode", "UpdateBookDeleteReturn");
			
		} else {
			page = "/WEB-INF/views/common/resultPage/FailedResultPage.jsp";
			request.setAttribute("message", "도서 폐기 취소에 실패하셨습니다. 입력값을 확인해 주세요.");
			
		}
	
		request.getRequestDispatcher(page).forward(request, response);
	}


}
