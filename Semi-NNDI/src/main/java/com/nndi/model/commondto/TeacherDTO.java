package com.nndi.model.commondto;

import java.io.Serializable;
import java.sql.Date;

public class TeacherDTO implements Serializable {

	private static final long serialVersionUID = -6998658659682122668L;

	private String no;
	private String name;
	private String gender;
	private java.sql.Date birth;
	private String email;
	private String phone;
	private String address;
	private String contractYn;
	
	public TeacherDTO() {
	}
	
	public TeacherDTO(String no, String name, String gender, Date birth, String email, String phone, String address,
			String contractYn) {
		this.no = no;
		this.name = name;
		this.gender = gender;
		this.birth = birth;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.contractYn = contractYn;
	}
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public java.sql.Date getBirth() {
		return birth;
	}
	public void setBirth(java.sql.Date birth) {
		this.birth = birth;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getContractYn() {
		return contractYn;
	}
	public void setContractYn(String contractYn) {
		this.contractYn = contractYn;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "TeacherDTO [no=" + no + ", name=" + name + ", gender=" + gender + ", birth=" + birth + ", email="
				+ email + ", phone=" + phone + ", address=" + address + ", contractYn=" + contractYn + "]";
	}

	public void setBirth(java.util.Date birth2) {
		// TODO Auto-generated method stub
		
	}
	
	
	
}
