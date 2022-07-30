package com.nndi.admin.book;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.commondto.BookInfoDTO;

@WebServlet("/login/admin/deleteBookList")
public class AdminDeleteBookList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("컨트롤러 도착");
		
		BookService bookService = new BookService();
		
		List<BookInfoDTO> deleteBookList = bookService.selectDeleteBookList();
		
		for(BookInfoDTO book : deleteBookList) {
			System.out.println(book);
		}
		
		String path = "";
		if (!deleteBookList.isEmpty()) {
			path = "/WEB-INF/views/admin/book/DeleteBookList.jsp";
			request.setAttribute("deleteBookList", deleteBookList);
		} else {
			path = "/WEB-INF/views/admin/selectErrorPage/selectError.jsp";
			request.setAttribute("message", "목록 조회 실패!");
			
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	
	}
}
