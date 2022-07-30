package com.nndi.client.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.commondto.TCREmploymentDTO;

@WebServlet("/employee/board/list")
public class EmployeeSelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		List<TCREmploymentDTO> emp = BoardService.selectEmployee();
		
		System.out.println(emp);
		
		String path = "";
		if(emp != null) {
			path = "/WEB-INF/views/client/board/EmployeeSelect.jsp";
			request.setAttribute("emp", emp);
		} else {
			path = "/WEB-INF/views/client/board/EmployeeSelect.jsp";
			request.setAttribute("message", "게시물 목록 조회 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	
	
	}


}
