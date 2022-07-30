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

@WebServlet("/login/board/ClsList")
public class ClassList2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("서블릿 확인용");
		ClassListService classservice = new ClassListService();
		Map<String,List<ClassesAndTeacherAndCenterDTO>> classList = classservice.ClassList();
		System.out.println("dto 확인용 "+ classList);
		
		List<ClassesAndTeacherAndCenterDTO> possibleCls =  classList.get("possibleCls");
		List<ClassesAndTeacherAndCenterDTO> impossibleCls = classList.get("impossibleCls");
		
		/* 신청가능 강좌 목록 개강, 종강일 */
		List<Map<String, String>> time1 = new ArrayList<>();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		for(ClassesAndTeacherAndCenterDTO ctc : possibleCls) {
			Map<String, String> map = new HashMap<>();
			map.put("start", sdf.format( ctc.getClsStartDay()));
			map.put("end", sdf.format(ctc.getClsEndDay()));
			time1.add(map);
		}
		
		/* 신청불가 강좌 목록 개강, 종강일 */
		List<Map<String, String>> time2 = new ArrayList<>();
		for(ClassesAndTeacherAndCenterDTO ctc : impossibleCls) {
			Map<String, String> map = new HashMap<>();
			map.put("start", sdf.format(ctc.getClsStartDay()));
			map.put("end", sdf.format( ctc.getClsEndDay()));
			time2.add(map);
		}
		
		System.out.println("controller : " + classList);
		
		String path = "";
		if (!classList.isEmpty()) {
			path = "/WEB-INF/views/client/classes/QNAClassList.jsp";
			request.setAttribute("possibleCls", possibleCls);
			request.setAttribute("time1", time1);
			request.setAttribute("impossibleCls", impossibleCls);
			request.setAttribute("time2", time2);
		} else {
			path = "/WEB-INF/views/selectErrorPage/selectError.jsp";
			System.out.println("잔넨..");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}
	
}	
