package com.nndi.client.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.commondto.FAQDTO;

@WebServlet("/login/board/FAQListDetail")
public class FAQListDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int num = Integer.parseInt(request.getParameter("num"));
		
		FAQListService faqservice = new FAQListService();
		FAQDTO faqdto = faqservice.FaqDetail(num);
		
		System.out.println(faqdto);
		request.setAttribute("faqdto", faqdto);
		
		request.getRequestDispatcher("/WEB-INF/views/client/board/FAQListDetail.jsp").forward(request, response);
		
		
		}	
}
