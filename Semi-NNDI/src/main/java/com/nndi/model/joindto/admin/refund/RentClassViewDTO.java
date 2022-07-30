package com.nndi.model.joindto.admin.refund;

import java.io.Serializable;
import java.sql.Date;

public class RentClassViewDTO implements Serializable {

	private static final long serialVersionUID = -2047005345621602462L;

	private int clsNum;
	private String name;
	private String id;
	private String clsName;
	private String tcrName;
	private int clsPrice;
	private String refundYn;
	private java.sql.Date clsPayDay;
	
	public RentClassViewDTO() {
	}
	
	public RentClassViewDTO(int clsNum, String name, String id, String clsName, String tcrName, int clsPrice,
			String refundYn, Date clsPayDay) {
		this.clsNum = clsNum;
		this.name = name;
		this.id = id;
		this.clsName = clsName;
		this.tcrName = tcrName;
		this.clsPrice = clsPrice;
		this.refundYn = refundYn;
		this.clsPayDay = clsPayDay;
	}

	public int getClsNum() {
		return clsNum;
	}

	public void setClsNum(int clsNum) {
		this.clsNum = clsNum;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getClsName() {
		return clsName;
	}

	public void setClsName(String clsName) {
		this.clsName = clsName;
	}

	public String getTcrName() {
		return tcrName;
	}

	public void setTcrName(String tcrName) {
		this.tcrName = tcrName;
	}

	public int getClsPrice() {
		return clsPrice;
	}

	public void setClsPrice(int clsPrice) {
		this.clsPrice = clsPrice;
	}

	public String getRefundYn() {
		return refundYn;
	}

	public void setRefundYn(String refundYn) {
		this.refundYn = refundYn;
	}

	public java.sql.Date getClsPayDay() {
		return clsPayDay;
	}

	public void setClsPayDay(java.sql.Date clsPayDay) {
		this.clsPayDay = clsPayDay;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "RentClassViewDTO [clsNum=" + clsNum + ", name=" + name + ", id=" + id + ", clsName=" + clsName
				+ ", tcrName=" + tcrName + ", clsPrice=" + clsPrice + ", refundYn=" + refundYn + ", clsPayDay="
				+ clsPayDay + "]";
	}
	
	
	

	
	
}
