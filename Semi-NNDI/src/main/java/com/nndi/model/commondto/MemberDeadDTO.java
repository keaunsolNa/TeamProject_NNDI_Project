package com.nndi.model.commondto;

import java.io.Serializable;
import java.sql.Date;

public class MemberDeadDTO implements Serializable {

	private static final long serialVersionUID = -8966530417019152718L;

	private String no;
	private String phone1;
	private String phone2;
	private String phone3;
	private String email1;
	private String email2;
	private String address1;
	private String address2;
	private String address3;
	private String id;
	private String pwd;
	private java.util.Date birth;
	private String name;
	private String gender;
	
	public MemberDeadDTO() {
	}
	
	public MemberDeadDTO(String no, String phone1, String phone2, String phone3, String email1, String email2,
			String address1, String address2, String address3, String id, String pwd, java.util.Date birth, String name,
			String gender) {
		this.no = no;
		this.phone1 = phone1;
		this.phone2 = phone2;
		this.phone3 = phone3;
		this.email1 = email1;
		this.email2 = email2;
		this.address1 = address1;
		this.address2 = address2;
		this.address3 = address3;
		this.id = id;
		this.pwd = pwd;
		this.birth = birth;
		this.name = name;
		this.gender = gender;
	}

	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
	}

	public String getPhone1() {
		return phone1;
	}

	public void setPhone1(String phone1) {
		this.phone1 = phone1;
	}

	public String getPhone2() {
		return phone2;
	}

	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}

	public String getPhone3() {
		return phone3;
	}

	public void setPhone3(String phone3) {
		this.phone3 = phone3;
	}

	public String getEmail1() {
		return email1;
	}

	public void setEmail1(String email1) {
		this.email1 = email1;
	}

	public String getEmail2() {
		return email2;
	}

	public void setEmail2(String email2) {
		this.email2 = email2;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getAddress3() {
		return address3;
	}

	public void setAddress3(String address3) {
		this.address3 = address3;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public java.util.Date getBirth() {
		return birth;
	}

	public void setBirth(java.util.Date birth) {
		this.birth = birth;
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "MemberDeadDTO [no=" + no + ", phone1=" + phone1 + ", phone2=" + phone2 + ", phone3=" + phone3
				+ ", email1=" + email1 + ", email2=" + email2 + ", address1=" + address1 + ", address2=" + address2
				+ ", address3=" + address3 + ", id=" + id + ", pwd=" + pwd + ", birth=" + birth + ", name=" + name
				+ ", gender=" + gender + "]";
	}
	
	
	
	
	
	
}
