package com.nndi.model.joindto.admin.refund;

import java.io.Serializable;
import java.sql.Date;

public class RentRefunViewDTO implements Serializable {

	private static final long serialVersionUID = 5620103676673353179L;

	private int postNum;
	private String name;
	private String cenKindsname;
	private int rentCost;
	private String rentPayYn;
	private String rentRefYn;
	private java.sql.Date rentStart;
	private java.sql.Date rentEnd;
	
	public RentRefunViewDTO() {
	}

	public RentRefunViewDTO(int postNum, String name, String cenKindsname, int rentCost, String rentPayYn,
			String rentRefYn, Date rentStart, Date rentEnd) {
		this.postNum = postNum;
		this.name = name;
		this.cenKindsname = cenKindsname;
		this.rentCost = rentCost;
		this.rentPayYn = rentPayYn;
		this.rentRefYn = rentRefYn;
		this.rentStart = rentStart;
		this.rentEnd = rentEnd;
	}



	public int getPostNum() {
		return postNum;
	}

	public void setPostNum(int postNum) {
		this.postNum = postNum;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCenKindsname() {
		return cenKindsname;
	}

	public void setCenKindsname(String cenKindsname) {
		this.cenKindsname = cenKindsname;
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}



	@Override
	public String toString() {
		return "RentRefunViewDTO [postNum=" + postNum + ", name=" + name + ", cenKindsname=" + cenKindsname
				+ ", rentCost=" + rentCost + ", rentPayYn=" + rentPayYn + ", rentRefYn=" + rentRefYn + ", rentStart="
				+ rentStart + ", rentEnd=" + rentEnd + "]";
	}
	
	
	
	
}
