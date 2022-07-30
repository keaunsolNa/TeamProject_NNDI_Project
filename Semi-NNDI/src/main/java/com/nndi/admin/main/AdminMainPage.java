package com.nndi.admin.main;

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

import com.nndi.admin.summing.SummingService;
import com.nndi.model.commondto.ClassDTO;
import com.nndi.model.joindto.admin.classes.ClassesAndTeacherAndCenterDTO;

@WebServlet("/login/admin/main")
public class AdminMainPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		나중에 로그인 완료되면 바껴야 함다!!!!!!!!!!!!!!!!!
//		request.setCharacterEncoding("UTF-8");
//		
//		request.getRequestDispatcher("/WEB-INF/views/admin/login/AdminMain.jsp").forward(request, response);
//	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		System.out.println("Controller 도착");
		
		SummingService summingService = new SummingService();  
		
		Map<String, Object> requestList = summingService.mainRequestList();
		List<ClassDTO> classList = (List<ClassDTO>) requestList.get("classList");
		List<Map<String, String>> time = new ArrayList<>();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		for(ClassDTO ctc : classList) {
			Map<String, String> map = new HashMap<>();
			map.put("start", sdf.format(ctc.getClsStartDay()));
			time.add(map);
		}
		
		System.out.println("Controller " + requestList);
		
		if(!requestList.isEmpty()) {
			request.setAttribute("classList", requestList.get("classList"));
			request.setAttribute("qnaList", requestList.get("qnaList"));
			request.setAttribute("memberList", requestList.get("memberList"));
			request.setAttribute("rentList", requestList.get("rentList"));
			request.setAttribute("time", time);
		} 
		
		request.getRequestDispatcher("/WEB-INF/views/admin/login/AdminMain.jsp").forward(request, response);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		System.out.println("Controller 도착");
		
		SummingService summingService = new SummingService();  
		
		Map<String, Object> requestList = summingService.mainRequestList();
		List<ClassDTO> classList = (List<ClassDTO>) requestList.get("classList");
		List<Map<String, String>> time = new ArrayList<>();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		for(ClassDTO ctc : classList) {
			Map<String, String> map = new HashMap<>();
			map.put("start", sdf.format(ctc.getClsStartDay()));
			time.add(map);
		}
		
		System.out.println("Controller " + requestList);
		
		if(!requestList.isEmpty()) {
			request.setAttribute("classList", requestList.get("classList"));
			request.setAttribute("qnaList", requestList.get("qnaList"));
			request.setAttribute("memberList", requestList.get("memberList"));
			request.setAttribute("rentList", requestList.get("rentList"));
			request.setAttribute("time", time);
		} 
		
		request.getRequestDispatcher("/WEB-INF/views/admin/login/AdminMain.jsp").forward(request, response);
	}
}
