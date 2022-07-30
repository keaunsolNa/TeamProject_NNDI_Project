package com.nndi.admin.teacher;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.commondto.TeacherDTO;

@WebServlet("/login/admin/teacherAdd")
public class AdminTeacherAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.getRequestDispatcher("/WEB-INF/views/admin/teacher/TeacherAdd.jsp").forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("teacherAdd 컨트롤러");
		
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String birth = request.getParameter("birth");
		
		String email01 = request.getParameter("email01");
		String email02 = request.getParameter("email02");
		String email03 = request.getParameter("email03");
		String email = email01+email02+email03;
		
		System.out.println(email);
		
		String phone = request.getParameter("phone");
		
		String address1 = request.getParameter("zipCode");
		String address2 = request.getParameter("address1");
		String address3 = request.getParameter("address2");
		String address = address1+" "+address2+address3;
		
		System.out.println(address);
		
		String contractYn = request.getParameter("contractYn");
		
		//생년월일 sql로 변경 하기 위한 작업 
		int birthY= Integer.valueOf(birth.substring(0,4));
		int birthM = Integer.valueOf(birth.substring(5,7));
		int birthD = Integer.valueOf(birth.substring(8));
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date startIn = new java.util.Date((birthY-1900), (birthM-1), birthD);
		birth = sdf.format(startIn);
		
		java.sql.Date birthDay = java.sql.Date.valueOf(birth);
		
        System.out.println(name);
        System.out.println(gender);
        System.out.println(birth);
        System.out.println(email);
        System.out.println(phone);
        System.out.println(address);
        System.out.println(contractYn);
        
        TeacherDTO teacher = new TeacherDTO();
		
        teacher.setName(name);
        teacher.setGender(gender);
        teacher.setBirth(birthDay);
        teacher.setEmail(email);
        teacher.setPhone(phone);
        teacher.setAddress(address);
        teacher.setContractYn(contractYn);

		System.out.println(teacher);
		
		TeacherService teacherService = new TeacherService();
		
		int result = teacherService.insertTeacher(teacher);
		
		System.out.println(result);
		
		if(result>0) {
			response.sendRedirect("teacherList");
			System.out.println("success");
		} else {
			request.getRequestDispatcher("/WEB-INF/views/selectErrorPage/UpdateFail.jsp").forward(request, response);
			System.out.println("fail");
		}


	}

}
