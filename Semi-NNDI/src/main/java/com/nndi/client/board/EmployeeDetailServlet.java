package com.nndi.client.board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.commondto.TCREmploymentDTO;

@WebServlet("/employee/board/list/detail/*")
public class EmployeeDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int num = Integer.valueOf(request.getParameter("num"));
		
		System.out.println(num);
		
		BoardService boardService = new BoardService();
		
		TCREmploymentDTO empDetail = BoardService.selectEmpDetail(num);
		
		System.out.println(empDetail);
		
		String path = "";
		if(empDetail != null) {
			path = "/WEB-INF/views/client/board/EmployeeDetail.jsp";
			request.setAttribute("emp", empDetail);
		} else {
			path = "/WEB-INF/views/client/board/EmployeeDetail.jsp";
			request.setAttribute("message", "게시물 목록 조회 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	
	
	
	
	
	
	}


}
