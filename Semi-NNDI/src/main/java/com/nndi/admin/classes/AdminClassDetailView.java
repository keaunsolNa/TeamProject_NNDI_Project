package com.nndi.admin.classes;

import java.io.IOException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.joindto.admin.classes.ClassesAndTeacherAndCenterDTO;

@WebServlet("/login/admin/detailClass.do")
public class AdminClassDetailView extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int num = Integer.valueOf(request.getParameter("num"));
		
		System.out.println("가져왔니? " + num);
		
		ClassesService classService = new ClassesService();
		
		ClassesAndTeacherAndCenterDTO cls = classService.selectOneByNumClass(num);
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		ClassesAndTeacherAndCenterDTO ctc = cls;
		String start = sdf.format(ctc.getClsStartDay());
		String end =  sdf.format(ctc.getClsEndDay());
		
		
		System.out.println("Controller : " + cls);
		
		String path = "";
		if (!"".equals(cls.getClass()) && cls.getClass() != null) {
			path = "/WEB-INF/views/admin/class/ClassDetailView.jsp";
			request.setAttribute("cls", cls);
			request.setAttribute("start", start);
			request.setAttribute("end", end);
		} else {
			path = "/WEB-INF/views/admin/selectErrorPage/selectError.jsp";
			System.out.println("잔넨..");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
