package com.nndi.admin.classes;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.nndi.model.commondto.TeacherDTO;

@WebServlet("/login/admin/teacherCheck")
public class AdminClassTeacherCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("Controller 도착");
		
		String tcrName = request.getParameter("teacherName");
		
		System.out.println("잘왔니 " + tcrName);
		
		ClassesService classService = new ClassesService();
		
		List<TeacherDTO> tcr = classService.selectTeacher(tcrName);
		
		System.out.println("Controller : " + tcr);
		
		if(tcr.isEmpty()) {
			String jsonString = new Gson().toJson("false");
			response.setContentType("application/json; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.print(jsonString);
			out.flush();
			out.close();
		} else {
			String jsonString = new Gson().toJson("true");
			response.setContentType("application/json; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.print(jsonString);
			out.flush();
			out.close();
		}
		
	}

}
