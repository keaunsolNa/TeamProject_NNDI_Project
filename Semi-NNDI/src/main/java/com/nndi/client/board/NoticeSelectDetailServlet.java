package com.nndi.client.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.commondto.NoticeDTO;

@WebServlet("/board/list/notice/detail/*")
public class NoticeSelectDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int num = Integer.valueOf(request.getParameter("num"));
		
		System.out.println(num);
		
		BoardService boardService = new BoardService();
		
		NoticeDTO noticeDetail = boardService.noticeDetail(num);
		
		System.out.println(noticeDetail); //확인용
		
		String path = "";
		if(noticeDetail != null) {
			path = "/WEB-INF/views/client/board/NoticeSelectDetail.jsp";
			request.setAttribute("noticeDetail", noticeDetail);
		} else {
			path = "/WEB-INF/views/client/board/NoticeSelectDetail.jsp";
			request.setAttribute("message", "게시물 목록 조회 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}


}
