package com.nndi.admin.summing;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

@WebServlet("/login/admin/newMemberSumming")
public class AdminNewMemberSumming extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("하이하이하이하이하이하이하잇");
		
		String start = request.getParameter("start");
		String end = request.getParameter("end");	
		
		System.out.println(start);
		System.out.println(end);
		
		int startY= Integer.valueOf(start.substring(0,4));
		int startM = Integer.valueOf(start.substring(5,7));
		int startD = Integer.valueOf(start.substring(8));
		int endY = Integer.valueOf(end.substring(0,4));
		int endM = Integer.valueOf(end.substring(5,7));
		int endD = Integer.valueOf(end.substring(8));
		
		java.util.Date startIn =null;
		java.util.Date endIn = null;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
//		if(startY<endY) {
//			startIn = new java.util.Date((startY-1900), (startM-1), startD);
//			endIn = new java.util.Date((endY-1900), (endM-1), endD);
//			start = sdf.format(startIn);
//			end = sdf.format(endIn);
//		} else if(startY==endY && startM<endM) {
//			startIn = new java.util.Date((startY-1900), (startM-1), startD);
//			endIn = new java.util.Date((endY-1900), (endM-1), endD);
//			start = sdf.format(startIn);
//			end = sdf.format(endIn);
//		} else if(startY==endY && startM==endM && startD<endD) {
//			startIn = new java.util.Date((startY-1900), (startM-1), startD);
//			endIn = new java.util.Date((endY-1900), (endM-1), endD);
//			start = sdf.format(startIn);
//			end = sdf.format(endIn);
//		} else {
//			endIn = new java.util.Date((startY-1900), (startM-1), startD);
//			startIn = new java.util.Date((endY-1900), (endM-1), endD);
//			start = sdf.format(startIn);
//			end = sdf.format(endIn);
//		}
		
		java.sql.Date startDay = java.sql.Date.valueOf(start);
		java.sql.Date endDay = java.sql.Date.valueOf(end);
		
		System.out.println(startDay);
		System.out.println(endDay);
		
		Map<String, java.sql.Date> date = new HashMap<String, Date>();
		
		date.put("start", startDay);
		date.put("end", endDay);
        
		
		SummingService summingService = new SummingService();
		
		List<Integer> newMemberSumming = summingService.newMemberSumming(date);
		
		String newMemberSum = Integer.toString(newMemberSumming.get(0));
		
		System.out.println("Controller : " + newMemberSumming);
		
		String message = "선택하신 기간동안의 신규 회원의 수는 " + newMemberSum + " 명 입니다.";
		
		if(!newMemberSumming.isEmpty() ) {
			
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
