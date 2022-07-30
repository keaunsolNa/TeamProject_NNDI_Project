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

import com.nndi.model.joindto.admin.member.MemberTotalDTO;


@WebServlet("/login/admin/memberList")
public class AdminMemberList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("컨트롤러 도착");
		
		AdminMemberService adminmemberService = new AdminMemberService();
		
		List<MemberTotalDTO> memberAliveList = adminmemberService.selectAllmemberAliveList();
		
		List<Map<String, String>> time = new ArrayList<>();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		for(MemberTotalDTO mt : memberAliveList) {
			Map<String, String> map = new HashMap<>();
			map.put("birth", sdf.format(mt.getBirth()));
			time.add(map);
		}
		
		System.out.println("Controller : " + memberAliveList);
		
		String path = "";
		if (!memberAliveList.isEmpty()) {
			path = "/WEB-INF/views/admin/member/MemberList.jsp";
			request.setAttribute("memberAliveList", memberAliveList);
			request.setAttribute("time", time);
		} else {
			path = "/WEB-INF/views/admin/selectErrorPage/selectError.jsp";
			request.setAttribute("message", "목록 조회 실패!");
			
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}


