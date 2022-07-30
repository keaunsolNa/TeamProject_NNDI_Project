package com.nndi.model.joindto.client.member_info.rent;

import java.sql.Date;

import com.nndi.model.commondto.CenterManagementDTO;

public class RentRequestSQLAndCenterManagementDTO {

	private int num;
	private String centerName;
	private CenterManagementDTO centerManagement;
	private String managerId;
	private String memId;
	private String rentReqYn;
	private int rentCost;
	private String rentPayYn;
	private String rentRefYn;
	private java.sql.Date rentStart;
	private java.sql.Date rentEnd;
	public RentRequestSQLAndCenterManagementDTO() {
	}
	public RentRequestSQLAndCenterManagementDTO(int num, String centerName, CenterManagementDTO centerManagement,
			String managerId, String memId, String rentReqYn, int rentCost, String rentPayYn, String rentRefYn,
			Date rentStart, Date rentEnd) {
		this.num = num;
		this.centerName = centerName;
		this.centerManagement = centerManagement;
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
	public CenterManagementDTO getCenterManagement() {
		return centerManagement;
	}
	public void setCenterManagement(CenterManagementDTO centerManagement) {
		this.centerManagement = centerManagement;
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
	@Override
	public String toString() {
		return "RentRequestSQLAndCenterManagementDTO [num=" + num + ", centerName=" + centerName + ", centerManagement="
				+ centerManagement + ", managerId=" + managerId + ", memId=" + memId + ", rentReqYn=" + rentReqYn
				+ ", rentCost=" + rentCost + ", rentPayYn=" + rentPayYn + ", rentRefYn=" + rentRefYn + ", rentStart="
				+ rentStart + ", rentEnd=" + rentEnd + "]";
	}
	
	
}
