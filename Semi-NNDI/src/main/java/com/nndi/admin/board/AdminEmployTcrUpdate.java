package com.nndi.admin.board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nndi.model.commondto.ManagerDTO;
import com.nndi.model.commondto.MemberAliveDTO;
import com.nndi.model.commondto.TCREmploymentDTO;
import com.nndi.model.joindto.admin.board.ComplainAndCategoryDTO;
import com.nndi.model.joindto.admin.board.EmpTeacherAndClassDTO;

@WebServlet("/login/admin/empTcrUpdate")
public class AdminEmployTcrUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int num = Integer.valueOf(request.getParameter("num"));
		
		System.out.println("가져왔니? " + num);
		
		TCREmploymentDTO emp = new TCREmploymentDTO();
		
		String title = request.getParameter("title");
		String empYn = request.getParameter("empYn");
		String empCondition = request.getParameter("empCondition");
		int empNumber = Integer.valueOf(request.getParameter("empNumber"));
		String environment = request.getParameter("environment");
		String empProcess = request.getParameter("empProcess");
		String managerId = request.getParameter("managerId2");
		
		System.out.println("중간확인");
		
		emp.setNum(num);
		emp.setTitle(title);
		emp.setEmpYn(empYn);
		emp.setEmpCondition(empCondition);
		emp.setEmpNumber(empNumber);
		emp.setEnvironment(environment);
		emp.setEmpProcess(empProcess);
		emp.setManagerId(managerId);
		
		System.out.println("Controller : " + emp);
		
		BoardService boardService = new BoardService();
		
		int result = boardService.updateEmpTcr(emp);
		
		if(result>0) {
			response.sendRedirect("employTeacherList");
			System.out.println("success");
		} else {
			request.getRequestDispatcher("/WEB-INF/views/selectErrorPage/UpdateFail.jsp").forward(request, response);
			System.out.println("fail");
		}
	
	}

}
