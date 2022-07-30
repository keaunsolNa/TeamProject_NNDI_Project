package com.nndi.model.joindto.admin.rent;

import java.sql.Date;

import com.nndi.model.commondto.MemberAliveDTO;

public class RentAndMemberAliveDTO {
	
//	POST_NUM	NUMBER
//	CENTER_NAME	VARCHAR2(30 BYTE)
//	MANAGER_ID	VARCHAR2(30 BYTE)
//	MEM_ID	VARCHAR2(30 BYTE)
//	RENT_REQ_YN	VARCHAR2(3 BYTE)
//	RENT_COST	NUMBER
//	RENT_PAY_YN	VARCHAR2(3 BYTE)
//	RENT_REF_YN	VARCHAR2(3 BYTE)
//	RENT_START	DATE
//	RENT_END	DATE
	
	private int num;
	private String centerName;
	private String managerId;
	private String memId;
	private String rentReqYn;
	private String rentCost;
	private String rentPayYn;
	private String rentRefYn;
	private java.sql.Date rentStart;
	private java.sql.Date rentEnd;
	private AliveMemberDTO member;
	
	
	public RentAndMemberAliveDTO() {
		super();
	}


	public RentAndMemberAliveDTO(int num, String centerName, String managerId, String memId, String rentReqYn,
			String rentCost, String rentPayYn, String rentRefYn, Date rentStart, Date rentEnd, AliveMemberDTO member) {
		super();
		this.num = num;
		this.centerName = centerName;
		this.managerId = managerId;
		this.memId = memId;
		this.rentReqYn = rentReqYn;
		this.rentCost = rentCost;
		this.rentPayYn = rentPayYn;
		this.rentRefYn = rentRefYn;
		this.rentStart = rentStart;
		this.rentEnd = rentEnd;
		this.member = member;
	}


	public int getNum() {
		return num;
	}


	public void setNum(int num) {
		this.num = num;
	}


	public String getCenterName() {
		return centerName;
	}


	public void setCenterName(String centerName) {
		this.centerName = centerName;
	}


	public String getManagerId() {
		return managerId;
	}


	public void setManagerId(String managerId) {
		this.managerId = managerId;
	}


	public String getMemId() {
		return memId;
	}


	public void setMemId(String memId) {
		this.memId = memId;
	}


	public String getRentReqYn() {
		return rentReqYn;
	}


	public void setRentReqYn(String rentReqYn) {
		this.rentReqYn = rentReqYn;
	}


	public String getRentCost() {
		return rentCost;
	}


	public void setRentCost(String rentCost) {
		this.rentCost = rentCost;
	}


	public String getRentPayYn() {
		return rentPayYn;
	}


	public void setRentPayYn(String rentPayYn) {
		this.rentPayYn = rentPayYn;
	}


	public String getRentRefYn() {
		return rentRefYn;
	}


	public void setRentRefYn(String rentRefYn) {
		this.rentRefYn = rentRefYn;
	}


	public java.sql.Date getRentStart() {
		return rentStart;
	}


	public void setRentStart(java.sql.Date rentStart) {
		this.rentStart = rentStart;
	}


	public java.sql.Date getRentEnd() {
		return rentEnd;
	}


	public void setRentEnd(java.sql.Date rentEnd) {
		this.rentEnd = rentEnd;
	}


	public AliveMemberDTO getMember() {
		return member;
	}


	public void setMember(AliveMemberDTO member) {
		this.member = member;
	}


	@Override
	public String toString() {
		return "RentAndMemberAliveDTO [num=" + num + ", centerName=" + centerName + ", managerId=" + managerId
				+ ", memId=" + memId + ", rentReqYn=" + rentReqYn + ", rentCost=" + rentCost + ", rentPayYn="
				+ rentPayYn + ", rentRefYn=" + rentRefYn + ", rentStart=" + rentStart + ", rentEnd=" + rentEnd
				+ ", member=" + member + "]";
	}
	
	
	
}
