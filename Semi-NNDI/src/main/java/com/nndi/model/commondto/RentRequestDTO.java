package com.nndi.model.commondto;

import java.util.Date;

public class RentRequestDTO {
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
	private int rentCost;
	private String rentPayYn;
	private String rentRefYn;
	private java.util.Date rentStart;
	private java.util.Date rentEnd;
	public RentRequestDTO() {
		super();
	}
	public RentRequestDTO(int num, String centerName, String managerId, String memId, String rentReqYn, int rentCost,
			String rentPayYn, String rentRefYn, Date rentStart, Date rentEnd) {
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
	public int getRentCost() {
		return rentCost;
	}
	public void setRentCost(int rentCost) {
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
	public java.util.Date getRentStart() {
		return rentStart;
	}
	public void setRentStart(java.util.Date rentStart) {
		this.rentStart = rentStart;
	}
	public java.util.Date getRentEnd() {
		return rentEnd;
	}
	public void setRentEnd(java.util.Date rentEnd) {
		this.rentEnd = rentEnd;
	}
	@Override
	public String toString() {
		return "RentRequestDTO [num=" + num + ", centerName=" + centerName + ", managerId=" + managerId + ", memId="
				+ memId + ", rentReqYn=" + rentReqYn + ", rentCost=" + rentCost + ", rentPayYn=" + rentPayYn
				+ ", rentRefYn=" + rentRefYn + ", rentStart=" + rentStart + ", rentEnd=" + rentEnd + "]";
	}
	
}