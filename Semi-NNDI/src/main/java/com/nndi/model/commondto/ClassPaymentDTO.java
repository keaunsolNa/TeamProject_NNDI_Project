package com.nndi.model.commondto;

import java.io.Serializable;
import java.sql.Date;

public class ClassPaymentDTO implements Serializable{

	private static final long serialVersionUID = -917587813807493580L;

	private String id;
	private String clsNum;
	private int clsPrice;
	private java.sql.Date clsPayDay;
	private String clasPayYn;
	private String clsPayType;
	
	public ClassPaymentDTO() {
	}

	public ClassPaymentDTO(String id, String clsNum, int clsPrice, Date clsPayDay, String clasPayYn,
			String clsPayType) {
		this.id = id;
		this.clsNum = clsNum;
		this.clsPrice = clsPrice;
		this.clsPayDay = clsPayDay;
		this.clasPayYn = clasPayYn;
		this.clsPayType = clsPayType;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getClsNum() {
		return clsNum;
	}

	public void setClsNum(String clsNum) {
		this.clsNum = clsNum;
	}

	public int getClsPrice() {
		return clsPrice;
	}

	public void setClsPrice(int clsPrice) {
		this.clsPrice = clsPrice;
	}

	public java.sql.Date getClsPayDay() {
		return clsPayDay;
	}

	public void setClsPayDay(java.sql.Date clsPayDay) {
		this.clsPayDay = clsPayDay;
	}

	public String getClasPayYn() {
		return clasPayYn;
	}

	public void setClasPayYn(String clasPayYn) {
		this.clasPayYn = clasPayYn;
	}

	public String getClsPayType() {
		return clsPayType;
	}

	public void setClsPayType(String clsPayType) {
		this.clsPayType = clsPayType;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "ClassPaymentDTO [id=" + id + ", clsNum=" + clsNum + ", clsPrice=" + clsPrice + ", clsPayDay="
				+ clsPayDay + ", clasPayYn=" + clasPayYn + ", clsPayType=" + clsPayType + "]";
	}
	
	
}
