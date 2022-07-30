package com.nndi.admin.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.commondto.FAQDTO;
@WebServlet("/login/admin/insertFaq")
public class AdmoinFaqInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("FAQ 생성 DoGet 컨트롤러 도착");
		
		request.getRequestDispatcher("/WEB-INF/views/admin/board/FaqAdd.jsp").forward(request, response);
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("FAQ 생성 DoPost 컨트롤러 도착");
		
		FAQDTO faqDTO = new FAQDTO();
		
		int cateNum = Integer.valueOf(request.getParameter("cateNum"));
		String content = request.getParameter("content");
		String managerId = request.getParameter("managerId");
		String title = request.getParameter("title");
		
		faqDTO.setCateNum(cateNum);
		faqDTO.setContent(content);
		faqDTO.setManagerId(managerId);
		faqDTO.setTitle(title);
		
		BoardService boardService = new BoardService();
		
		int result = boardService.inserFaq(faqDTO);
		
		if(result > 0) {
			response.sendRedirect("faqList");
			System.out.println("success");
		} else {
			request.getRequestDispatcher("/WEB-INF/views/selectErrorPage/UpdateFail.jsp").forward(request, response);
			System.out.println("fail");
		}
	}

}
