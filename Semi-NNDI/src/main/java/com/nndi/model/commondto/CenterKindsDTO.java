package com.nndi.model.commondto;

public class CenterKindsDTO {
//	CEN_KINDS_NAME	VARCHAR2(30 BYTE)
	
	private String centerKindName;

public CenterKindsDTO() {
	super();
}

public CenterKindsDTO(String centerKindName) {
	super();
	this.centerKindName = centerKindName;
}

public String getCenterKindName() {
	return centerKindName;
}

public void setCenterKindName(String centerKindName) {
	this.centerKindName = centerKindName;
}

@Override
public String toString() {
	return "CenterKindsDTO [centerKindName=" + centerKindName + "]";
}
	
	
}
