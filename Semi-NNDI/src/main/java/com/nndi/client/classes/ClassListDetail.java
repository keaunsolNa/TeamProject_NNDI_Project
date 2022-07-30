package com.nndi.client.classes;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.joindto.admin.classes.ClassesAndTeacherAndCenterDTO;

@WebServlet("/login/board/ClassListDetail")
public class ClassListDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("ClassListDetail 서블릿 확인용");
		int num = Integer.parseInt(request.getParameter("num"));
		
		System.out.println("파라미터 확인용"+num);
		
		ClassListService classlist = new ClassListService();
		ClassesAndTeacherAndCenterDTO classdto = classlist.classdetail(num);
		
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		ClassesAndTeacherAndCenterDTO ctc = classdto;
		String start = sdf.format(ctc.getClsStartDay());
		String end =  sdf.format(ctc.getClsEndDay());
		
		System.out.println("dto확인용"+classdto);
		
		String path = "";
		path = "/WEB-INF/views/client/classes/ClassListDetail.jsp";
		request.setAttribute("classdto", classdto);
		request.setAttribute("start", start);
		request.setAttribute("end", end);
		
		request.getRequestDispatcher(path).forward(request, response);
		
		
		}	
}