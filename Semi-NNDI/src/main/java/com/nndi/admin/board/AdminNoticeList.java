package com.nndi.admin.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.nndi.model.commondto.NoticeDTO;
import com.nndi.model.joindto.admin.board.NoticeAndCategoryDTO;

@WebServlet("/login/admin/noticeList")
public class AdminNoticeList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("컨트롤러 도착");
		
		BoardService boardService = new BoardService();
		
		List<NoticeAndCategoryDTO> noticeList = boardService.selectAllNoticeList();
		
		for(NoticeAndCategoryDTO notice : noticeList) {
			System.out.println(notice);
		}
		
		String path = "";
		if (!noticeList.isEmpty()) {
			path = "/WEB-INF/views/admin/board/NoticeList.jsp";
			request.setAttribute("noticeList", noticeList);
		} else {
			path = "/WEB-INF/views/selectErrorPage/selectError.jsp";
			System.out.println("잔넨..");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	
	}

}
