package com.nndi.model.commondto;

import java.io.Serializable;
import java.sql.Date;

public class MemberAliveDTO implements Serializable{

	private static final long serialVersionUID = 6431236375029268196L;

	private String id;
	private Integer idQueNum;
	private String phone1;
	private String phone2;
	private String phone3;
	private String email1;
	private String email2;
	private String address1;
	private String address2;
	private String address3;
	private String pwd;
	private String name;
	private java.util.Date birth;
	private String idAnswer;
	private String gender;
	private java.sql.Date lastLogin;
	private String userStatus;
	private java.sql.Date outDate;
	private java.sql.Date enrollDate;
	
	public MemberAliveDTO() {
	}
	
	public MemberAliveDTO(String id, Integer idQueNum, String phone1, String phone2, String phone3, String email1,
			String email2, String address1, String address2, String address3, String pwd, String name,
			java.util.Date birth, String idAnswer, String gender, Date lastLogin, String userStatus, Date outDate,
			Date enrollDate) {
		this.id = id;
		this.idQueNum = idQueNum;
		this.phone1 = phone1;
		this.phone2 = phone2;
		this.phone3 = phone3;
		this.email1 = email1;
		this.email2 = email2;
		this.address1 = address1;
		this.address2 = address2;
		this.address3 = address3;
		this.pwd = pwd;
		this.name = name;
		this.birth = birth;
		this.idAnswer = idAnswer;
		this.gender = gender;
		this.lastLogin = lastLogin;
		this.userStatus = userStatus;
		this.outDate = outDate;
		this.enrollDate = enrollDate;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Integer getIdQueNum() {
		return idQueNum;
	}

	public void setIdQueNum(Integer idQueNum) {
		this.idQueNum = idQueNum;
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

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public java.util.Date getBirth() {
		return birth;
	}

	public void setBirth(java.util.Date birth) {
		this.birth = birth;
	}

	public String getIdAnswer() {
		return idAnswer;
	}

	public void setIdAnswer(String idAnswer) {
		this.idAnswer = idAnswer;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public java.sql.Date getLastLogin() {
		return lastLogin;
	}

	public void setLastLogin(java.sql.Date lastLogin) {
		this.lastLogin = lastLogin;
	}

	public String getUserStatus() {
		return userStatus;
	}

	public void setUserStatus(String userStatus) {
		this.userStatus = userStatus;
	}

	public java.sql.Date getOutDate() {
		return outDate;
	}

	public void setOutDate(java.sql.Date outDate) {
		this.outDate = outDate;
	}

	public java.sql.Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(java.sql.Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "MemberAliveDTO [id=" + id + ", idQueNum=" + idQueNum + ", phone1=" + phone1 + ", phone2=" + phone2
				+ ", phone3=" + phone3 + ", email1=" + email1 + ", email2=" + email2 + ", address1=" + address1
				+ ", address2=" + address2 + ", address3=" + address3 + ", pwd=" + pwd + ", name=" + name + ", birth="
				+ birth + ", idAnswer=" + idAnswer + ", gender=" + gender + ", lastLogin=" + lastLogin + ", userStatus="
				+ userStatus + ", outDate=" + outDate + ", enrollDate=" + enrollDate + "]";
	}
	
	
	
	
	
	

	
	
	
	

	
}
