package com.nndi.admin.board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.commondto.TCREmploymentDTO;

@WebServlet("/login/admin/employTeacherinsert")
public class AdminEmployTcrInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("하이루 컨트롤러");

		request.getRequestDispatcher("/WEB-INF/views/admin/board/EmpAdd.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("안녕~~~~~~~");

		TCREmploymentDTO emp = new TCREmploymentDTO();

		int clsNum = Integer.valueOf(request.getParameter("clsNum"));
		String title = request.getParameter("title");
		String empYn = request.getParameter("empYn");
		String empCondition = request.getParameter("empCondition");
		int empNumber = Integer.valueOf(request.getParameter("empNumber"));
		String environment = request.getParameter("environment");
		String empProcess = request.getParameter("empProcess");
		String managerId = request.getParameter("managerId2");

		System.out.println("중간확인");

		emp.setClsNum(clsNum);
		emp.setTitle(title);
		emp.setEmpYn(empYn);
		emp.setEmpCondition(empCondition);
		emp.setEmpNumber(empNumber);
		emp.setEnvironment(environment);
		emp.setEmpProcess(empProcess);
		emp.setManagerId(managerId);

		System.out.println("Controller : " + emp);

		BoardService boardService = new BoardService();

		int result = boardService.insertEmpTcr(emp);

		if (result > 0) {
			response.sendRedirect("employTeacherList");
			System.out.println("success");
		} else {
			request.getRequestDispatcher("/WEB-INF/views/selectErrorPage/UpdateFail.jsp").forward(request, response);
			System.out.println("fail");
		}
	}

}
