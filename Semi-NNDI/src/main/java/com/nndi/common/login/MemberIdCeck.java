package com.nndi.common.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

@WebServlet("/client/checkUserId")
public class MemberIdCeck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("서블릿 왔다~~~");
		
		String userId = request.getParameter("userId");
		
		System.out.println(userId);
	
		MemberLoginService service = new MemberLoginService();
		
		int count = service.selectCheckUserId(userId);
		
		String message = "";
		if(count >0) {
			message = "1";
		} else {
			message = "0";
		}
		
		String jsonString = new Gson().toJson(message);
		response.setContentType("application/json; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print(jsonString);
		out.flush();
		out.close();
	}

}
