package com.nndi.client.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nndi.model.commondto.AdmireDTO;
import com.nndi.model.commondto.MemberAliveDTO;
import com.nndi.model.joindto.client.board.AdmireAndCategoryDTO;

@WebServlet("/login/board/list/commend/detail/*")
public class CommendDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		HttpSession loginSession = request.getSession();
		MemberAliveDTO loginMember = (MemberAliveDTO) loginSession.getAttribute("loginMember");
		System.out.println(loginMember.getId());
		
		int num = Integer.valueOf(request.getParameter("num"));
		
		System.out.println(num);
		
		AdmireAndCategoryDTO commendDetail = BoardService.commendDetail(num);
		
		System.out.println(commendDetail);
		
		String path = "";
		if(loginMember.getId().equals(commendDetail.getMemId())) {
			path = "/WEB-INF/views/client/board/CommendDetail.jsp";
			request.setAttribute("commendDetail", commendDetail);
		} else {
			path = "/WEB-INF/views/common/resultPage/FailedResultPage.jsp";
			request.setAttribute("message", "본인이 작성한 게시글만 확인할 수 있습니다.");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

}
