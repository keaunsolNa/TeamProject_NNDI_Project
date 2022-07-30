package com.nndi.admin.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.commondto.NoticeDTO;


@WebServlet("/login/admin/noticeAdd")
public class AdminNoticeAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.getRequestDispatcher("/WEB-INF/views/admin/board/NoticeAdd.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("하이하이~~~~~공지 등록임");
		
		String title = request.getParameter("title");
		String managerId = request.getParameter("managerId");
		int cateNum = Integer.valueOf(request.getParameter("cateNum"));
		String content = request.getParameter("content");
		
		NoticeDTO addNotice = new NoticeDTO();
		
		addNotice.setTitle(title);
		addNotice.setManagerId(managerId);
		addNotice.setCateNum(cateNum);
		addNotice.setContent(content);
		
		BoardService boardService = new BoardService();
		
		int result = boardService.insertNotice(addNotice);
		
		if(result>0) {
			response.sendRedirect("noticeList");
			System.out.println("success");
		} else {
			request.getRequestDispatcher("/WEB-INF/views/admin/selectErrorPage/UpdateFail.jsp").forward(request, response);
			System.out.println("fail");
		}
		
	}

}
