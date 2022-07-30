package com.nndi.admin.member;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.google.gson.Gson;
import com.nndi.common.login.MemberLoginService;
import com.nndi.common.mail.MailSend;
import com.nndi.model.commondto.MemberAliveDTO;

@WebServlet("/login/admin/memberPwdUpdate")
public class AdminMemberPwdUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String id = request.getParameter("id");
		
		/* 새로운 비밀번호를 위한 난수 생성 */
		Random random = new Random();
		String setOfCharacters = "abcdefghxyz1234567-/@";
		
		int newPwdchar = random.nextInt(setOfCharacters.length());
		int newPwdchar2 = random.nextInt(setOfCharacters.length());
		char newPwd2 = setOfCharacters.charAt(newPwdchar);
		char newPwd3 = setOfCharacters.charAt(newPwdchar2);
		int newPwd4 = (int)(Math.random() * 10);
		int newPwd5 = (int)(Math.random() * 10);
		int newPwd6 = (int)(Math.random() * 10);
		int newPwd7 = (int)(Math.random() * 10);
		String password = ("" + newPwd2 + newPwd3 + newPwd4 + newPwd5 + newPwd6 + newPwd6);	

		MemberLoginService memberService = new MemberLoginService();
		
		String email = memberService.selectOneMemberAliveById(id);
		
		System.out.println("eeeeeeeeeeeeeeemailllllllllllllll" + email);
		
		MailSend ms = new MailSend();
		ms.MailSend(password ,email);
		
		/* 난수 비크립트 처리 */
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String newPassword = passwordEncoder.encode(password);
		System.out.println(newPassword);

		/* 비크립트 암호와 ID를 위한 DAO 객체 재생성 */
		MemberAliveDTO memberAliveListForPwd = new MemberAliveDTO();
		memberAliveListForPwd.setId(id);
		memberAliveListForPwd.setPwd(newPassword);
		
		/* 생성된 비크립트 유저 password로 Update */
		
		int result = memberService.updateMemberpwd(memberAliveListForPwd);
		
		
		if(result>0) {
			
			String jsonString = new Gson().toJson(password);
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
