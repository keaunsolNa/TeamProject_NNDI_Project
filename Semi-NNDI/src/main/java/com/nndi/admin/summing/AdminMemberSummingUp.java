package com.nndi.admin.summing;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

@WebServlet("/login/admin/memberSummings")
public class AdminMemberSummingUp extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("하이하이하이하이하이하이하잇");
		
		SummingService summingService = new SummingService();
		
		Map<String, Integer> requestList = summingService.memberSummingList();
		
		System.out.println("Controller : " + requestList);
		
		String aliveMemberCnt = Integer.toString(requestList.get("aliveMemberCnt"));
		String restMemberCnt = Integer.toString(requestList.get("restMemberCnt"));
		String allMemberCnt = Integer.toString(requestList.get("allMemberCnt"));
		
		System.out.println("잘 담겻니 " + aliveMemberCnt);
		System.out.println("잘 담겻니 " + restMemberCnt);
		System.out.println("잘 담겻니 " + allMemberCnt);
		
		String message = "현재 활동 중인 회원의 수는 " + aliveMemberCnt + "명이며, "
						+ "휴면 회원의 수는 " + restMemberCnt + "명으로 총 활동과 휴면을 포함한 회원의 수는 " + allMemberCnt + "명 입니다.";
		
		if(!requestList.isEmpty()) {
			
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
