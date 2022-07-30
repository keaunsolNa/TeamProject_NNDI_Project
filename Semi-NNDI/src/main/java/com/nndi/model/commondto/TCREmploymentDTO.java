package com.nndi.model.commondto;

import java.sql.Date;

public class TCREmploymentDTO {
//	NUM	NUMBER
//	MANAGER_ID	VARCHAR2(30 BYTE)
//	CLS_NUM	VARCHAR2(30 BYTE)
//	TITLE	VARCHAR2(300 BYTE)
//	FILE_NAME	VARCHAR2(100 BYTE)
//	EMP_YN	VARCHAR2(3 BYTE)
//	EMP_CONDITION	VARCHAR2(1000 BYTE)
//	EMP_NUMBER	NUMBER
//	ENVIRONMENT	CLOB
//	EMP_PROCESS	CLOB
	
	private int num;
	private String managerId;
	private int clsNum;
	private String title;
	private String fileName;
	private String empYn;
	private String empCondition;
	private int empNumber;
	private String environment;
	private String empProcess;
	public TCREmploymentDTO() {
		super();
	}
	public TCREmploymentDTO(int num, String managerId, int clsNum, String title, String fileName, String empYn,
			String empCondition, int empNumber, String environment, String empProcess) {
		super();
		this.num = num;
		this.managerId = managerId;
		this.clsNum = clsNum;
		this.title = title;
		this.fileName = fileName;
		this.empYn = empYn;
		this.empCondition = empCondition;
		this.empNumber = empNumber;
		this.environment = environment;
		this.empProcess = empProcess;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getManagerId() {
		return managerId;
	}
	public void setManagerId(String managerId) {
		this.managerId = managerId;
	}
	public int getClsNum() {
		return clsNum;
	}
	public void setClsNum(int clsNum) {
		this.clsNum = clsNum;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getEmpYn() {
		return empYn;
	}
	public void setEmpYn(String empYn) {
		this.empYn = empYn;
	}
	public String getEmpCondition() {
		return empCondition;
	}
	public void setEmpCondition(String empCondition) {
		this.empCondition = empCondition;
	}
	public int getEmpNumber() {
		return empNumber;
	}
	public void setEmpNumber(int empNumber) {
		this.empNumber = empNumber;
	}
	public String getEnvironment() {
		return environment;
	}
	public void setEnvironment(String environment) {
		this.environment = environment;
	}
	public String getEmpProcess() {
		return empProcess;
	}
	public void setEmpProcess(String empProcess) {
		this.empProcess = empProcess;
	}
	@Override
	public String toString() {
		return "TCREmploymentDTO [num=" + num + ", managerId=" + managerId + ", clsNum=" + clsNum + ", title=" + title
				+ ", fileName=" + fileName + ", empYn=" + empYn + ", empCondition=" + empCondition + ", empNumber="
				+ empNumber + ", environment=" + environment + ", empProcess=" + empProcess + "]";
	}
	
	
	
}
