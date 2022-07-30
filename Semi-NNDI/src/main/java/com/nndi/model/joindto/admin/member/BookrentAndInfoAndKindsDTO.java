package com.nndi.model.joindto.admin.member;

import java.sql.Date;

import com.nndi.model.commondto.BookInfoDTO;
import com.nndi.model.commondto.BookKindDTO;

public class BookrentAndInfoAndKindsDTO {
	
//	도서 대출 번호	RENT_NUM	NUMBER
//	도서 코드	CODE	NUMBER
//	회원 ID	MEM_ID	VARCHAR2(30 BYTE)
//	대출 일자	RENT_DATE	DATE
//	반납 일자	RETURN_DATE	DATE
//	연체 유무	RENT_YN	VARCHAR2(3 BYTE)
	
	private int rentNum;
	private int code;
	private String memId;
	private java.sql.Date rentDate;
	private java.sql.Date returnDate;
	private String rentYn;
	private BookInfoDTO bookInfo;
	private BookKindDTO bookKind;
	public BookrentAndInfoAndKindsDTO() {
		super();
	}
	public BookrentAndInfoAndKindsDTO(int rentNum, int code, String memId, Date rentDate, Date returnDate,
			String rentYn, BookInfoDTO bookInfo, BookKindDTO bookKind) {
		super();
		this.rentNum = rentNum;
		this.code = code;
		this.memId = memId;
		this.rentDate = rentDate;
		this.returnDate = returnDate;
		this.rentYn = rentYn;
		this.bookInfo = bookInfo;
		this.bookKind = bookKind;
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
	public BookInfoDTO getBookInfo() {
		return bookInfo;
	}
	public void setBookInfo(BookInfoDTO bookInfo) {
		this.bookInfo = bookInfo;
	}
	public BookKindDTO getBookKind() {
		return bookKind;
	}
	public void setBookKind(BookKindDTO bookKind) {
		this.bookKind = bookKind;
	}
	@Override
	public String toString() {
		return "BookrentAndInfoAndKindsDTO [rentNum=" + rentNum + ", code=" + code + ", memId=" + memId + ", rentDate="
				+ rentDate + ", returnDate=" + returnDate + ", rentYn=" + rentYn + ", bookInfo=" + bookInfo
				+ ", bookKind=" + bookKind + "]";
	}
	
	
	
	
}
