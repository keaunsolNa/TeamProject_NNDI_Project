package com.nndi.model.commondto;

import java.io.Serializable;

public class ClassMemberDTO implements Serializable {

	private static final long serialVersionUID = -4669444703005074504L;

	private String id;
	private String clsNum;
	private String refundYn;
	
	public ClassMemberDTO() {
	}
	
	public ClassMemberDTO(String id, String clsNum, String refundYn) {
		this.id = id;
		this.clsNum = clsNum;
		this.refundYn = refundYn;
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
	public String getRefundYn() {
		return refundYn;
	}
	public void setRefundYn(String refundYn) {
		this.refundYn = refundYn;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "ClassMemberDTO [id=" + id + ", clsNum=" + clsNum + ", refundYn=" + refundYn + "]";
	}
	
	
}
