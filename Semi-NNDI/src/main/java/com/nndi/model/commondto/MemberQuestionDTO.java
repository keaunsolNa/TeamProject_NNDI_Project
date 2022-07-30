package com.nndi.model.commondto;

import java.io.Serializable;

public class MemberQuestionDTO implements Serializable {

	private static final long serialVersionUID = -6869740630349932560L;

	private int idQueNum;
	private String idQue;
	
	public MemberQuestionDTO() {
	}
	
	public MemberQuestionDTO(int idQueNum, String idQue) {
		this.idQueNum = idQueNum;
		this.idQue = idQue;
	}
	public int getIdQueNum() {
		return idQueNum;
	}
	public void setIdQueNum(int idQueNum) {
		this.idQueNum = idQueNum;
	}
	public String getIdQue() {
		return idQue;
	}
	public void setIdQue(String idQue) {
		this.idQue = idQue;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "MemberQuestionDTO [idQueNum=" + idQueNum + ", idQue=" + idQue + "]";
	}
	
	
	
	
}
