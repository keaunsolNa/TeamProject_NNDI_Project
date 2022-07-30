package com.nndi.model.commondto;

import java.io.Serializable;
import java.sql.Date;

public class BookRentDTO implements Serializable {

	private static final long serialVersionUID = 4310010366254891891L;

	private int rentNum;
	private int code;
	private String memId;
	private java.sql.Date rentDate;
	private java.sql.Date returnDate;
	private String rentYn;
	
	public BookRentDTO() {
	}
	public BookRentDTO(int rentNum, int code, String memId, Date rentDate, Date returnDate, String rentYn) {
		this.rentNum = rentNum;
		this.code = code;
		this.memId = memId;
		this.rentDate = rentDate;
		this.returnDate = returnDate;
		this.rentYn = rentYn;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public int getRentNum() {
		return rentNum;
	}
	public int getCode() {
		return code;
	}
	public String getMemId() {
		return memId;
	}
	public java.sql.Date getRentDate() {
		return rentDate;
	}
	public java.sql.Date getReturnDate() {
		return returnDate;
	}
	public String getRentYn() {
		return rentYn;
	}
	@Override
	public String toString() {
		return "BookRentDTO [rentNum=" + rentNum + ", code=" + code + ", memId=" + memId + ", rentDate=" + rentDate
				+ ", returnDate=" + returnDate + ", rentYn=" + rentYn + "]";
	}
	
	
	
}
