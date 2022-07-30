package com.nndi.admin.teacher;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.commondto.TeacherDTO;

@WebServlet("/login/admin/teacherList")
public class AdminTeacherList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("컨트롤러 도착");
		
		TeacherService teacherService = new TeacherService();
		
		List<TeacherDTO> teacherList = teacherService.selectAllTeacherList();
		
		for(TeacherDTO notice : teacherList) {
			System.out.println(notice);
		}
		
		String path = "";
		if (!teacherList.isEmpty()) {
			path = "/WEB-INF/views/admin/teacher/TeacherList.jsp";
			request.setAttribute("teacherList", teacherList);
		} else {
			path = "/WEB-INF/views/admin/selectErrorPage/selectError.jsp";
			request.setAttribute("message", "목록 조회 실패!");
			
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}

