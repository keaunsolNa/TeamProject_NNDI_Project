package com.nndi.model.joindto.admin.member;

import java.sql.Date;

import com.nndi.model.commondto.BookInfoDTO;

public class BookRentAndBookInfoDTO {
	
	private int rentNum;
	private int code;
	private String memId;
	private java.sql.Date rentDate;
	private java.sql.Date returnDate;
	private String rentYn;
	private BookInfoDTO bookinfo;
	public BookRentAndBookInfoDTO() {
		super();
	}
	public BookRentAndBookInfoDTO(int rentNum, int code, String memId, Date rentDate, Date returnDate, String rentYn,
			BookInfoDTO bookinfo) {
		super();
		this.rentNum = rentNum;
		this.code = code;
		this.memId = memId;
		this.rentDate = rentDate;
		this.returnDate = returnDate;
		this.rentYn = rentYn;
		this.bookinfo = bookinfo;
	}
	public int getRentNum() {
		return rentNum;
	}
	public void setRentNum(int rentNum) {
		this.rentNum = rentNum;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public java.sql.Date getRentDate() {
		return rentDate;
	}
	public void setRentDate(java.sql.Date rentDate) {
		this.rentDate = rentDate;
	}
	public java.sql.Date getReturnDate() {
		return returnDate;
	}
	public void setReturnDate(java.sql.Date returnDate) {
		this.returnDate = returnDate;
	}
	public String getRentYn() {
		return rentYn;
	}
	public void setRentYn(String rentYn) {
		this.rentYn = rentYn;
	}
	public BookInfoDTO getBookinfo() {
		return bookinfo;
	}
	public void setBookinfo(BookInfoDTO bookinfo) {
		this.bookinfo = bookinfo;
	}
	@Override
	public String toString() {
		return "BookRentAndBookInfoDTO [rentNum=" + rentNum + ", code=" + code + ", memId=" + memId + ", rentDate="
				+ rentDate + ", returnDate=" + returnDate + ", rentYn=" + rentYn + ", bookinfo=" + bookinfo + "]";
	}
}
