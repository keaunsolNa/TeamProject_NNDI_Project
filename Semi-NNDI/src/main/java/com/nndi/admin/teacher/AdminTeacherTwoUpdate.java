package com.nndi.admin.teacher;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.commondto.TeacherDTO;

@WebServlet("/login/admin/teacherTwoUpdate")
public class AdminTeacherTwoUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("강사정보 수정 컨트롤러");
//db가 number 면 이걸로 하면됨		
//		int no = Integer.valueOf(request.getParameter("no"));
		String no = request.getParameter("no");
		System.out.println(no);

		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String birth = request.getParameter("birth");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String contractYn = request.getParameter("contractYn");
		
		//생년월일 sql로 변경 하기 위한 작업 
		int birthY= Integer.valueOf(birth.substring(0,4));
		int birthM = Integer.valueOf(birth.substring(5,7));
		int birthD = Integer.valueOf(birth.substring(8));
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date startIn = new java.util.Date((birthY-1900), (birthM-1), birthD);
		birth = sdf.format(startIn);
		
		java.sql.Date birthDay = java.sql.Date.valueOf(birth);
		
		System.out.println(birthDay);
        System.out.println(name);
        System.out.println(gender);
        System.out.println(birth);
        System.out.println(email);
        System.out.println(phone);
        System.out.println(address);
        System.out.println(contractYn);
        
        TeacherDTO teacher = new TeacherDTO();
        
        teacher.setNo(no);
        teacher.setName(name);
        teacher.setGender(gender);
        teacher.setBirth(birthDay);
        teacher.setEmail(email);
        teacher.setPhone(phone);
        teacher.setAddress(address);
        teacher.setContractYn(contractYn);
        
        System.out.println(teacher);
        
        TeacherService teacherService = new TeacherService();
        
		int result = teacherService.updateTeacher(teacher);
		
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
