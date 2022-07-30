package com.nndi.model.commondto;

import java.io.Serializable;

public class BookInfoDTO implements Serializable {

	private static final long serialVersionUID = -6760741967291450792L;
	
//	CODE	NUMBER
//	KINDS_CODE	VARCHAR2(30 BYTE)
//	NAME	VARCHAR2(50 BYTE)
//	WRITER	VARCHAR2(30 BYTE)
//	LOCATION_CODE	VARCHAR2(50 BYTE)
//	ISBN	VARCHAR2(50 BYTE)
//	SEARCH_YN	VARCHAR2(3 BYTE)
//	PUBLISHER	VARCHAR2(50 BYTE)

	private int code;
	private String KindsCode;
	private String name;
	private String writer;
	private String locationCode;
	private String isbn;
	private String serchYN;
	private String publisher;
	public BookInfoDTO() {
	}
	public BookInfoDTO(int code, String kindsCode, String name, String writer, String locationCode, String isbn,
			String serchYN, String publisher) {
		this.code = code;
		KindsCode = kindsCode;
		this.name = name;
		this.writer = writer;
		this.locationCode = locationCode;
		this.isbn = isbn;
		this.serchYN = serchYN;
		this.publisher = publisher;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getKindsCode() {
		return KindsCode;
	}
	public void setKindsCode(String kindsCode) {
		KindsCode = kindsCode;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getLocationCode() {
		return locationCode;
	}
	public void setLocationCode(String locationCode) {
		this.locationCode = locationCode;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public String getSerchYN() {
		return serchYN;
	}
	public void setSerchYN(String serchYN) {
		this.serchYN = serchYN;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	@Override
	public String toString() {
		return "BookInfoDTO [code=" + code + ", KindsCode=" + KindsCode + ", name=" + name + ", writer=" + writer
				+ ", locationCode=" + locationCode + ", isbn=" + isbn + ", serchYN=" + serchYN + ", publisher="
				+ publisher + "]";
	}
	
	
	
	
	
}

