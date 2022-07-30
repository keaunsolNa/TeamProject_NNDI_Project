package com.nndi.model.commondto;

public class ManagerDTO {
//	MANAGER_ID	VARCHAR2(30 BYTE)
//	PWD	VARCHAR2(100 BYTE)
//	MANAGER_NAME	VARCHAR2(30 BYTE)
	
	private String managerId;
	private String pwd;
	private String managerName;
	public ManagerDTO() {
		super();
	}
	public ManagerDTO(String managerId, String pwd, String managerName) {
		super();
		this.managerId = managerId;
		this.pwd = pwd;
		this.managerName = managerName;
	}
	public String getManagerId() {
		return managerId;
	}
	public void setManagerId(String managerId) {
		this.managerId = managerId;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getManagerName() {
		return managerName;
	}
	public void setManagerName(String managerName) {
		this.managerName = managerName;
	}
	@Override
	public String toString() {
		return "ManagerDTO [managerId=" + managerId + ", pwd=" + pwd + ", managerName=" + managerName + "]";
	}
	
	
}
