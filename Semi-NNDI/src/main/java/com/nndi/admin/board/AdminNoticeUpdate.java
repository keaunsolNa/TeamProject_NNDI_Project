package com.nndi.admin.board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.commondto.NoticeDTO;

@WebServlet("/login/admin/noticeUpdate")
public class AdminNoticeUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("hihihihihihihihiihihihihihi");
		
		int num = Integer.valueOf(request.getParameter("num"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String managerId = request.getParameter("managerId");
		
		NoticeDTO updateNotice = new NoticeDTO();
		
		updateNotice.setNum(num);
		updateNotice.setTitle(title);
		updateNotice.setContent(content);
		updateNotice.setManagerId(managerId);
		
		BoardService boardService = new BoardService();
		
		int result = boardService.updateNotice(updateNotice);
		
		if(result>0) {
			response.sendRedirect("noticeList");
			System.out.println("success");
		} else {
			request.getRequestDispatcher("/WEB-INF/views/admin/selectErrorPage/UpdateFail.jsp").forward(request, response);
			System.out.println("fail");
		}
	}

}
