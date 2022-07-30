package com.nndi.admin.teacher;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.commondto.TeacherDTO;

@WebServlet("/login/admin/detailTeacher.do")
public class TeacherDetailView extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int no = Integer.valueOf(request.getParameter("no"));
//		String no = request.getParameter("no");
		
		System.out.println("가져왔니? " + no);
		
		TeacherService teacherService = new TeacherService();
		
		TeacherDTO detailTeacher = teacherService.selectOneTeacherByNo(no);
		
		System.out.println( "Servlet : " + detailTeacher );
		
		String path = "";
		if (!"".equals(detailTeacher.getNo()) && detailTeacher.getNo() != null) {
			path = "/WEB-INF/views/admin/teacher/TeacherDetailView.jsp";
			request.setAttribute("detailTeacher", detailTeacher);
		} else {
			path = "/WEB-INF/views/admin/selectErrorPage/selectError.jsp";
			request.setAttribute("message", "목록 조회 실패!");
			
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
		
	}

}
