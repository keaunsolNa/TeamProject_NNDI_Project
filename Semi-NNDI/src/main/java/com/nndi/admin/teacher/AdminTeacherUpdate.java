package com.nndi.admin.teacher;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.commondto.TeacherDTO;

@WebServlet("/login/admin/TeacherUpdate.do")
public class AdminTeacherUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
	System.out.println("컨트롤러 왔다");
	
	int no = Integer.valueOf(request.getParameter("no"));
	
//	String no = request.getParameter("no");
	
	System.out.println("가져왔니 ? " + no);
	
	TeacherService teacherService = new TeacherService();
	
	TeacherDTO teacher = teacherService.selectOneTeacherByNo(no);
	
	System.out.println("잘 가져왔니 컨트롤러에? " + teacher);
	
	String path = "";
	if (!"".equals(teacher.getNo()) && teacher.getNo() != null) {
		path = "/WEB-INF/views/admin/teacher/TeacherUpdate.jsp";
		request.setAttribute("teacher", teacher);
	} else {
		path = "/WEB-INF/views/admin/selectErrorPage/selectError.jsp";
		System.out.println("실패");
	}
	
	request.getRequestDispatcher(path).forward(request, response);
	
	
}

}
