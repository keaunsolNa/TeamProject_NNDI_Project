package com.nndi.client.center;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nndi.model.commondto.CenterManagementDTO;
import com.nndi.model.commondto.MemberAliveDTO;



@WebServlet("/login/center/list/select/detail/*")
public class CenterDetailSelect extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String num = request.getParameter("num");
		System.out.println(num);
		
		/*
		 * List<RentRequestDTO> rentReq = CenterService.selectRentRequest(num);
		 * System.out.println(rentReq);
		 * 
		 * String path = ""; if(rentReq != null) 
		 * { path =
		 * "/WEB-INF/views/client/center/CenterDetail.jsp";
		 * request.setAttribute("rentReq", rentReq); } else { path =
		 * "/WEB-INF/views/client/center/CenterDetail.jsp";
		 * request.setAttribute("message", "게시물 목록 조회 실패!"); }
		 * 
		 * request.getRequestDispatcher(path).forward(request, response);
		 */
		
		
		
		CenterManagementDTO centerDetail = CenterService.selectCenterDetail(num);
		System.out.println(centerDetail);
		
		String path = "";
		if(centerDetail != null) {
			path = "/WEB-INF/views/client/center/CenterDetail.jsp";
			request.setAttribute("centerDetail", centerDetail);
		} else {
			path = "/WEB-INF/views/client/center/CenterDetail.jsp";
			request.setAttribute("message", "게시물 목록 조회 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	
	}
	



}
