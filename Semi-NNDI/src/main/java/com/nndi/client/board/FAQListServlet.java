package com.nndi.client.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.commondto.FAQDTO;

@WebServlet("/login/board/FAQList")
public class FAQListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("서블릿 확인용");
		FAQListService faqservice = new FAQListService();
		List<FAQDTO> faqdto = faqservice.FAQlistservice();
		System.out.println("dto 확인용 "+ faqdto);
		
		request.setCharacterEncoding("UTF-8");
		
		request.setAttribute("faqdto", faqdto);
		
		request.getRequestDispatcher("/WEB-INF/views/client/board/FAQList.jsp").forward(request, response);
		
		
		}	
}
