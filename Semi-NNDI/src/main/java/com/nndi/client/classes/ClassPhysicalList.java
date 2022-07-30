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

@WebServlet("/board/ClassphList")
public class ClassPhysicalList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("서블릿 확인용");
		ClassListService classservice = new ClassListService();
		List<ClassesAndTeacherAndCenterDTO> classList = classservice.ClassPhysicalList();
		System.out.println("dto 확인용 "+ classList);
		
		List<Map<String, String>> time = new ArrayList<>();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		for(ClassesAndTeacherAndCenterDTO ctc : classList) {
			Map<String, String> map = new HashMap<>();
			map.put("start", sdf.format( ctc.getClsStartDay()));
			map.put("end", sdf.format(ctc.getClsEndDay()));
			time.add(map);
		}
		
		
		request.setCharacterEncoding("UTF-8");
		
		request.setAttribute("classList", classList);
		request.setAttribute("time", time);
		
		request.getRequestDispatcher("/WEB-INF/views/client/classes/ClassPhysicalList.jsp").forward(request, response);
		
	}
	
}	
