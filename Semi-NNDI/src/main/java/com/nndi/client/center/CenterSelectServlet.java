package com.nndi.client.center;

import java.io.IOException;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.commondto.CenterManagementDTO;



@WebServlet("/center/list/select")
public class CenterSelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<CenterManagementDTO> centerList = CenterService.selectCenterList();
		System.out.println(centerList);
		
		
		
		String path = "";
		if(centerList != null) {
			path = "/WEB-INF/views/client/center/CenterList.jsp";
			request.setAttribute("centerList", centerList);
		} else {
			path = "/WEB-INF/views/client/center/CenterList.jsp";
			request.setAttribute("message", "게시물 목록 조회 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	
	
	}


}
