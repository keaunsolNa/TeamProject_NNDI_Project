package com.nndi.admin.summing;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

@WebServlet("/login/admin/deadMemberSumming")
public class AdminDeadMemberSumming extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("하이하이하이하이하이하이하잇");
		
		SummingService summingService = new SummingService();
		
		List<Integer> deadMemberSumming = summingService.deadMemberSumming();
		
		String deadMemberSum = Integer.toString(deadMemberSumming.get(0));
		
		System.out.println("Controller : " + deadMemberSumming);
		
		String message = "탈퇴한 회원의 수는 " + deadMemberSum + "명 입니다.";
		
		if(!deadMemberSumming.isEmpty() ) {
			
			String jsonString = new Gson().toJson(message);
			response.setContentType("application/json; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.print(jsonString);
			out.flush();
			out.close();
		} else {
			
			String jsonString = new Gson().toJson("회원 통계 조회에 실패했습니다 ");
			response.setContentType("application/json; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.print(jsonString);
			out.flush();
			out.close();
			
		}
	}

}
