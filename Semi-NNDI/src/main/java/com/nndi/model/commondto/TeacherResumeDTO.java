package com.nndi.model.commondto;

import java.io.Serializable;

public class TeacherResumeDTO implements Serializable{

	private static final long serialVersionUID = -2151501641831242401L;

	private String no;
	private String resume;
	
	public TeacherResumeDTO() {
	}
	
	public TeacherResumeDTO(String no, String resume) {
		this.no = no;
		this.resume = resume;
	}
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getResume() {
		return resume;
	}
	public void setResume(String resume) {
		this.resume = resume;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "TeacherResumeDTO [no=" + no + ", resume=" + resume + "]";
	}
	
	
}
