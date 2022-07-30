package com.nndi.model.commondto;

import java.io.Serializable;

public class BookKindDTO implements Serializable{

	private static final long serialVersionUID = 7086417399797702561L;
	private String kindsCode;
	private String kinds;
	
	public BookKindDTO() {
	}
	
	public BookKindDTO(String kindsCode, String kinds) {
		this.kindsCode = kindsCode;
		this.kinds = kinds;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public String getKindsCode() {
		return kindsCode;
	}
	public String getKinds() {
		return kinds;
	}
	@Override
	public String toString() {
		return "BookKindDTO [kindsCode=" + kindsCode + ", kinds=" + kinds + "]";
	}

	
	
}
