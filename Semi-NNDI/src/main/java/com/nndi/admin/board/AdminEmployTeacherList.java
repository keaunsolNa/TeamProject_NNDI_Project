package com.nndi.admin.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.joindto.admin.board.EmpTeacherAndClassDTO;

@WebServlet("/login/admin/employTeacherList")
public class AdminEmployTeacherList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("컨트롤러 도착");
		
		BoardService boardService = new BoardService();
		
		List<EmpTeacherAndClassDTO> empTeacherList = boardService.selectAllEmpTeacherList();
		
		for(EmpTeacherAndClassDTO empTcr : empTeacherList) {
			System.out.println("Controller : " + empTcr);
		}
		
		String path = "";
		if (!empTeacherList.isEmpty()) {
			path = "/WEB-INF/views/admin/board/EmployTeacherList.jsp";
			request.setAttribute("empTeacherList", empTeacherList);
		} else {
			path = "/WEB-INF/views/admin/selectErrorPage/selectError.jsp";
			System.out.println("잔넨..");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
