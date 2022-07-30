package com.nndi.admin.classes;

import java.io.IOException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.commondto.ClassDTO;

import java.text.ParseException;

@WebServlet("/login/admin/classTwoUpdate")
public class AdminClassTwoUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("Controller 도챡");
		
		int clsNum = Integer.valueOf(request.getParameter("clsNum"));
		System.out.println(clsNum);
		
		int clsMaxCnt = Integer.valueOf(request.getParameter("clsMaxCnt"));
		java.util.Date clsStartDay = null;
		java.util.Date clsEndDay = null;
	    String clsExplain = request.getParameter("clsExplain");
	    int clsTime = Integer.valueOf(request.getParameter("clsTime"));
	    String clsRunTime = request.getParameter("clsRunTime");
	    int clsCost = Integer.valueOf(request.getParameter("clsCost"));
	    String clsDay = request.getParameter("clsDay");
	    String clsStartYn = request.getParameter("clsStartYn");
		
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        try {
        	clsStartDay = formatter.parse(request.getParameter("clsStartDay"));
            clsEndDay = formatter.parse(request.getParameter("clsEndDay"));
            	
        } catch (ParseException e) {
               e.printStackTrace();
        }
        
        System.out.println(clsMaxCnt);
        System.out.println(clsStartDay);
        System.out.println(clsEndDay);
        System.out.println(clsExplain);
        System.out.println(clsTime);
        System.out.println(clsRunTime);
        System.out.println(clsCost);
        System.out.println(clsDay);
        System.out.println(clsStartYn);
        
        ClassDTO cls = new ClassDTO();
        
        cls.setClsNum(clsNum);
        cls.setClsMaxCnt(clsMaxCnt);
        cls.setClsStartDay(clsStartDay);
        cls.setClsEndDay(clsEndDay);
        cls.setClsExplain(clsExplain);
        cls.setClsTime(clsTime);
        cls.setClsRunTime(clsRunTime);
        cls.setClsCost(clsCost);
        cls.setClsDay(clsDay);
        cls.setClsStartYn(clsStartYn);
        
        System.out.println(cls);
        
        ClassesService classService = new ClassesService();
        
		int result = classService.UpdateCls(cls);
		
		System.out.println(result);
		
		if(result>0) {
			response.sendRedirect("classList");
			System.out.println("success");
		} else {
			request.getRequestDispatcher("/WEB-INF/views/selectErrorPage/UpdateFail.jsp").forward(request, response);
			System.out.println("fail");
		}
	
	}

}
