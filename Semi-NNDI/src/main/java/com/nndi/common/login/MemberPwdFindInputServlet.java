package com.nndi.common.login;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.nndi.common.mail.MailSend;
import com.nndi.model.commondto.MemberAliveDTO;

@WebServlet("/Member/pwdinitialization/input")
public class MemberPwdFindInputServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* request로 받은 값 MemberAliveDTO 객체에 저장 */
		MemberAliveDTO memberAliveList = new MemberAliveDTO();
		memberAliveList.setId(request.getParameter("userId"));
		memberAliveList.setPhone1(request.getParameter("selectUserPhone"));
		memberAliveList.setPhone2(request.getParameter("phone2"));
		memberAliveList.setPhone3(request.getParameter("phone3"));
		String id = request.getParameter("userId");
		/* MemberService 인스턴스 생성 */
		MemberLoginService memberService = new MemberLoginService();

		/* 생성한 인스턴스로 일치하는 고객 비밀번호 조회 */
		String MemberPwd = memberService.selectMemberPwd(memberAliveList);
		
		String page ="";
		
		/* result 값으로 예외 처리 */
		if(!"0".equals(MemberPwd)) {
			
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

			String email = memberService.selectOneMemberAliveById(id);
			
			MailSend ms = new MailSend();
			ms.MailSend(password , email);
			
			/* 난수 비크립트 처리 */
			BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
			String newPassword = passwordEncoder.encode(password);
			System.out.println(newPassword);

			/* 비크립트 암호와 ID를 위한 DAO 객체 재생성 */
			MemberAliveDTO memberAliveListForPwd = new MemberAliveDTO();
			memberAliveListForPwd.setId(request.getParameter("userId"));
			memberAliveListForPwd.setPwd(newPassword);
			
			/* 생성된 비크립트 유저 password로 Update */
			int result = memberService.updateMemberpwd(memberAliveListForPwd);
			
			/* Update 성공시 생성한 난수 비밀번호를 출력할 jsp 페이지로 이동. */
			if(result > 0) {
				System.out.println("변경 성공");
				page = "/WEB-INF/views/common/resultPage/SucessResultPage.jsp";
				System.out.println("성공~");
				request.setAttribute("successCode", "UpdateMemberPwd");
			} else {
				System.out.println("변경 실패");
				page = "/WEB-INF/views/common/resultPage/FailedResultPage.jsp";
				
				request.setAttribute("message", "비밀번호 초기화에 실패하였습니다. 입력값을 확인해 주세요.");
			}
			
			
		} else {

			page = "/WEB-INF/views/common/resultPage/FailedResultPage.jsp";
			
			request.setAttribute("message", "일치하는 회원이 없습니다. 입력값을 확인해 주세요.");
		}
		
		request.getRequestDispatcher(page).forward(request, response);
	}

}
