package com.nndi.client.board;

import java.io.IOException;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.joindto.client.board.AdmireAndCategoryDTO;

@WebServlet("/board/list/commend")
public class CommendServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("서블릿 도착");
		
		
		/* 조회 */
		List<AdmireAndCategoryDTO> commendList = BoardService.selectAllCommendList();
		System.out.println(commendList);
		
		
		String path = "";
		if (commendList != null) {
			path = "/WEB-INF/views/client/board/CommendList.jsp";
			request.setAttribute("commendList", commendList);
		} else {
			path = "/WEB-INF/views/client/board/CommendList.jsp";
			request.setAttribute("message", "게시물 목록 조회 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
