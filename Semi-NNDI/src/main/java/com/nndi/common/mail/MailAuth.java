package com.nndi.common.mail;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class MailAuth extends Authenticator{
	
	PasswordAuthentication pwd;
	
	public MailAuth() {
		String mail_id = "kimhyejj11";
		String mail_pw = "rlagpwns12!";
		
		pwd = new PasswordAuthentication(mail_id, mail_pw);
	}
	
	public PasswordAuthentication getPasswordAuthentication() {
		
		return pwd;
	}

}
