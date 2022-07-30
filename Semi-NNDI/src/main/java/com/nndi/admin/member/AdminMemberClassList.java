package com.nndi.admin.member;

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
import com.nndi.model.joindto.admin.member.ClassMemberAndClassDTO;

@WebServlet("/login/admin/memberClassList.do")
public class AdminMemberClassList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("hihihihihihihihi");
		
		String memId = request.getParameter("id");
		
		System.out.println(memId);
	
		AdminMemberService memberService = new AdminMemberService();
		
		List<ClassMemberAndClassDTO> memberClasList = memberService.memberClasList(memId);
		List<Map<String, String>> time = new ArrayList<>();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		for(ClassMemberAndClassDTO ctc : memberClasList) {
			Map<String, String> map = new HashMap<>();
			map.put("start", sdf.format(ctc.getCls().getClsStartDay()));
			map.put("end", sdf.format(ctc.getCls().getClsEndDay()));
			time.add(map);
		}
		
		String path = "";
		if (!memberClasList.isEmpty()) {
			path = "/WEB-INF/views/admin/member/MemberDetailClassList.jsp";
			request.setAttribute("memberClasList", memberClasList);
			request.setAttribute("time", time);
		} else {
			path = "/WEB-INF/views/admin/selectErrorPage/selectError.jsp";
			request.setAttribute("message", "목록 조회 실패!");
			
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

}
