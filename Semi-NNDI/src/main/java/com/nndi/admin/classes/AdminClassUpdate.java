package com.nndi.admin.classes;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.joindto.admin.classes.ClassesAndTeacherAndCenterDTO;

@WebServlet("/login/admin/classUpdate.do")
public class AdminClassUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("컨트롤러 왔다");
		
		int num = Integer.valueOf(request.getParameter("num"));
		
//		String num = request.getParameter("num");
		
		System.out.println("가져왔니 ? " + num);
		
		ClassesService classService = new ClassesService();
		
		ClassesAndTeacherAndCenterDTO cls = classService.selectOneByNumClass(num);
		
		System.out.println("잘 가져왔니 컨트롤러에? " + cls);
		
		String path = "";
		if (!"".equals(cls.getClass()) && cls.getClass() != null) {
			path = "/WEB-INF/views/admin/class/ClassUpdate.jsp";
			request.setAttribute("cls", cls);
		} else {
			path = "/WEB-INF/views/admin/selectErrorPage/selectError.jsp";
			System.out.println("잔넨..");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
		
	}

}
