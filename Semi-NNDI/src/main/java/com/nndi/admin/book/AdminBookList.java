package com.nndi.admin.book;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.commondto.BookInfoDTO;

@WebServlet("/login/admin/bookList")
public class AdminBookList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("컨트롤러 도착");
		
		BookService bookService = new BookService();
		
		List<BookInfoDTO> bookList = bookService.selectAllBookList();
		
		for(BookInfoDTO book : bookList) {
			System.out.println(book);
		}
		
		String path = "";
		if (!bookList.isEmpty()) {
			path = "/WEB-INF/views/admin/book/BookList.jsp";
			request.setAttribute("bookList", bookList);
		} else {
			path = "/WEB-INF/views/admin/selectErrorPage/selectError.jsp";
			request.setAttribute("message", "목록 조회 실패!");
			
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	
	}

}

