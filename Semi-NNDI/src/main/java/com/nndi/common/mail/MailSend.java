package com.nndi.common.mail;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MailSend {

	public void MailSend(String password , String email) {
		Properties prop = System.getProperties();
		prop.put("mail.smtp.starttls.enable", "true");
		prop.put("mail.smtp.host", "smtp.naver.com");
		prop.put("mail.smtp.auth", "true");
		prop.put("mail.smtp.port", "587");
		
		Authenticator auth = new MailAuth();
		
		Session session = Session.getDefaultInstance(prop, auth);
		
		MimeMessage msg = new MimeMessage(session);
		
		String content = "회원님의 변경된 임시 비밀번호는 " + password + "입니다.";
		
		try {
			msg.setSentDate(new Date());
			
			msg.setFrom(new InternetAddress("kimhyejj11@naver.com", "NNDI"));
			InternetAddress to = new InternetAddress(email);
			msg.setRecipient(Message.RecipientType.TO,	to);
			msg.setSubject("너나들이 중랑 임시 비밀번호 발송드립니다!! :)", "UTF-8");
			msg.setText(content, "UTF-8");
			
			Transport.send(msg);
			
		} catch (MessagingException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	}
}