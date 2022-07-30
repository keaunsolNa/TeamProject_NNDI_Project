package com.nndi.admin.member;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.joindto.admin.member.MemberTotalDTO;

@WebServlet("/login/admin/detailaliveMember.do")
public class MemberAliveDetailView extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id =(request.getParameter("id"));
		
		System.out.println("가져왔니? " + id);
		
		AdminMemberService adminmemberService = new AdminMemberService();
		
		MemberTotalDTO detailaliveMember = adminmemberService.selectOneMemberAliveById(id);
		System.out.println( "Servlet : " + detailaliveMember );
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		MemberTotalDTO member = detailaliveMember;
		String birth = sdf.format(member.getBirth());
		
		String path = "";
		if (!"".equals(detailaliveMember.getId()) && detailaliveMember.getId() != null) {
			path = "/WEB-INF/views/admin/member/MemberDetail.jsp";
			request.setAttribute("detailMemberAlive", detailaliveMember);
			request.setAttribute("birth", birth);
		} else {
			path = "/WEB-INF/views/admin/selectErrorPage/selectError.jsp";
			request.setAttribute("message", "목록 조회 실패!");
			
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
		
	}

}
