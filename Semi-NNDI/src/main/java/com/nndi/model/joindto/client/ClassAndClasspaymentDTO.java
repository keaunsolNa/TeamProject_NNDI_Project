package com.nndi.model.joindto.client;

import java.util.Date;

public class ClassAndClasspaymentDTO {

	private String id;
	private int clsNum;
	private String clsName;
	private java.util.Date clsStartDay;
	
	public ClassAndClasspaymentDTO() {
	}

	public ClassAndClasspaymentDTO(String id, int clsNum, String clsName, Date clsStartDay) {
		this.id = id;
		this.clsNum = clsNum;
		this.clsName = clsName;
		this.clsStartDay = clsStartDay;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getClsNum() {
		return clsNum;
	}

	public void setClsNum(int clsNum) {
		this.clsNum = clsNum;
	}

	public String getClsName() {
		return clsName;
	}

	public void setClsName(String clsName) {
		this.clsName = clsName;
	}

	public java.util.Date getClsStartDay() {
		return clsStartDay;
	}

	public void setClsStartDay(java.util.Date clsStartDay) {
		this.clsStartDay = clsStartDay;
	}

	@Override
	public String toString() {
		return "ClassAndClasspaymentDTO [id=" + id + ", clsNum=" + clsNum + ", clsName=" + clsName + ", clsStartDay="
				+ clsStartDay + "]";
	}
	
	
	
}
