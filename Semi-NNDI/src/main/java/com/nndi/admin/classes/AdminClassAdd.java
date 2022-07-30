package com.nndi.admin.classes;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.admin.teacher.TeacherService;
import com.nndi.model.commondto.ClassDTO;
import com.nndi.model.commondto.TeacherDTO;

@WebServlet("/login/admin/classAdd")
public class AdminClassAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("컨트롤러 도착");
		
		TeacherService teacherService = new TeacherService();
		
		List<TeacherDTO> teacherList = teacherService.selectAllTeacherList();
		
		for(TeacherDTO notice : teacherList) {
			System.out.println(notice);
		}
		
		request.setAttribute("teacherList", teacherList);
		
		request.getRequestDispatcher("/WEB-INF/views/admin/class/ClassAdd.jsp").forward(request, response);

	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.err.println("헤이 모두들 안녕~");

		String tcrNo = request.getParameter("tcrNo");
		String cenName = request.getParameter("cenName");
		String clsName = request.getParameter("clsName");
		int clsMaxCnt = Integer.valueOf(request.getParameter("clsMaxCnt"));
		java.util.Date clsStartDay = null;
		java.util.Date clsEndDay = null;
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        try {
        	clsStartDay = formatter.parse(request.getParameter("clsStartDay"));
            clsEndDay = formatter.parse(request.getParameter("clsEndDay"));
            	
        } catch (ParseException e) {
               e.printStackTrace();
        }
		String clsExplain = request.getParameter("clsExplain");
		int clsTime = Integer.valueOf(request.getParameter("clsTime"));
		int clsCost = Integer.valueOf(request.getParameter("clsCost"));
		String clsDay = request.getParameter("clsDay");
		String clsStartYn = request.getParameter("clsStartYn");
		String clsCategoryName = request.getParameter("clsCategoryName");
		String clsRecoAge = request.getParameter("clsRecoAge");
		String clsRunTime = request.getParameter("clsRunTime");
		
		ClassDTO cls = new ClassDTO();
		
		cls.setTcrNo(tcrNo);
		cls.setCenName(cenName);
		cls.setClsName(clsName);
		cls.setClsMaxCnt(clsMaxCnt);
		cls.setClsStartDay(clsStartDay);
		cls.setClsEndDay(clsEndDay);
		cls.setClsExplain(clsExplain);
		cls.setClsTime(clsTime);
		cls.setClsCost(clsCost);
		cls.setClsDay(clsDay);
		cls.setClsStartYn(clsStartYn);
		cls.setClsCategoryName(clsCategoryName);
		cls.setClsRecoAge(clsRecoAge);
		cls.setClsRunTime(clsRunTime);
		
		System.out.println(cls);
		
		ClassesService classService = new ClassesService();
		
		int result = classService.insertClass(cls);
		
		System.out.println(result);
		
		if(result>0) {
			response.sendRedirect("classList");
			System.out.println("success");
		} else {
			request.getRequestDispatcher("/WEB-INF/views/selectErrorPage/UpdateFail.jsp").forward(request, response);
			System.out.println("fail");
		}

//		request.getRequestDispatcher("/WEB-INF/views/admin/class/ClassAdd.jsp").forward(request, response);

	}

}
