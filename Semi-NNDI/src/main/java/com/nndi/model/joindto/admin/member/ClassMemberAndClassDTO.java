package com.nndi.model.joindto.admin.member;

import com.nndi.model.commondto.ClassDTO;

public class ClassMemberAndClassDTO {

//	회원ID	ID
//	강좌고유번호	CLS_NUM
//	환불여부	REFUND_YN
	
	private String id;
	private String clsNum;
	private String refundYn;
	private ClassDTO cls;
	public ClassMemberAndClassDTO() {
		super();
	}
	public ClassMemberAndClassDTO(String id, String clsNum, String refundYn, ClassDTO cls) {
		super();
		this.id = id;
		this.clsNum = clsNum;
		this.refundYn = refundYn;
		this.cls = cls;
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
	public ClassDTO getCls() {
		return cls;
	}
	public void setCls(ClassDTO cls) {
		this.cls = cls;
	}
	@Override
	public String toString() {
		return "ClassMemberAndClassDTO [id=" + id + ", clsNum=" + clsNum + ", refundYn=" + refundYn + ", cls=" + cls
				+ "]";
	}
	
	
	
}
