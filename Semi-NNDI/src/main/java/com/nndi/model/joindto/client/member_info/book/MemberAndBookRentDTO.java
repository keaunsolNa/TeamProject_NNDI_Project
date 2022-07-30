package com.nndi.model.joindto.client.member_info.book;

import java.io.Serializable;
import java.sql.Date;

import com.nndi.model.commondto.BookInfoDTO;
import com.nndi.model.commondto.MemberAliveDTO;

public class MemberAndBookRentDTO implements Serializable {

	private static final long serialVersionUID = 1535797026003607468L;

	private int rentNum;
	private int code;
	private String memId;
	private java.sql.Date rentDate;
	private java.sql.Date returnDate;
	private String rentYn;
	private MemberAliveDTO member;
	private BookInfoDTO book;
	
	public MemberAndBookRentDTO() {
	}
	
	public MemberAndBookRentDTO(int rentNum, int code, String memId, Date rentDate, Date returnDate, String rentYn,
			MemberAliveDTO member, BookInfoDTO book) {
		this.rentNum = rentNum;
		this.code = code;
		this.memId = memId;
		this.rentDate = rentDate;
		this.returnDate = returnDate;
		this.rentYn = rentYn;
		this.member = member;
		this.book = book;
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
	public MemberAliveDTO getMember() {
		return member;
	}
	public void setMember(MemberAliveDTO member) {
		this.member = member;
	}
	public BookInfoDTO getBook() {
		return book;
	}
	public void setBook(BookInfoDTO book) {
		this.book = book;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "MemberAndBookRentDTO [rentNum=" + rentNum + ", code=" + code + ", memId=" + memId + ", rentDate="
				+ rentDate + ", returnDate=" + returnDate + ", rentYn=" + rentYn + ", member=" + member + ", book="
				+ book + "]";
	}
	

	
	
	
}
