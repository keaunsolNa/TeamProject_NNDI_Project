package com.nndi.model.commondto;

public class CenterManagementDTO {
//	CEN_NAME	VARCHAR2(30 BYTE)
//	CEN_KINDS_NAME	VARCHAR2(30 BYTE)
//	CEN_USE_YN	VARCHAR2(3 BYTE)
//	CEN_CAPACITY	NUMBER

	private String cenName;
	private String centerKindName;
	private String cenUseYn;
	private int cenCapacity;
	public CenterManagementDTO() {
		super();
	}
	public CenterManagementDTO(String cenName, String centerKindName, String cenUseYn, int cenCapacity) {
		super();
		this.cenName = cenName;
		this.centerKindName = centerKindName;
		this.cenUseYn = cenUseYn;
		this.cenCapacity = cenCapacity;
	}
	public String getCenName() {
		return cenName;
	}
	public void setCenName(String cenName) {
		this.cenName = cenName;
	}
	public String getCenterKindName() {
		return centerKindName;
	}
	public void setCenterKindName(String centerKindName) {
		this.centerKindName = centerKindName;
	}
	public String getCenUseYn() {
		return cenUseYn;
	}
	public void setCenUseYn(String cenUseYn) {
		this.cenUseYn = cenUseYn;
	}
	public int getCenCapacity() {
		return cenCapacity;
	}
	public void setCenCapacity(int cenCapacity) {
		this.cenCapacity = cenCapacity;
	}
	@Override
	public String toString() {
		return "CenterManagementDTO [cenName=" + cenName + ", centerKindName=" + centerKindName + ", cenUseYn="
				+ cenUseYn + ", cenCapacity=" + cenCapacity + "]";
	}
	
	
}
