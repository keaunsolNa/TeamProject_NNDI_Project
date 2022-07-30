package com.nndi.model.joindto.admin.board;

import java.sql.Date;

import com.nndi.model.commondto.ClassDTO;

public class EmpTeacherAndClassDTO {

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
	private String clsNum;
	private String title;
	private java.sql.Date postDate;
	private String empYn;
	private String empCondition;
	private int empNumber;
	private String environment;
	private String empProcess;
	private ClassDTO cls;
	
	public EmpTeacherAndClassDTO() {
		super();
	}

	public EmpTeacherAndClassDTO(int num, String managerId, String clsNum, String title, Date postDate, String empYn,
			String empCondition, int empNumber, String environment, String empProcess, ClassDTO cls) {
		super();
		this.num = num;
		this.managerId = managerId;
		this.clsNum = clsNum;
		this.title = title;
		this.postDate = postDate;
		this.empYn = empYn;
		this.empCondition = empCondition;
		this.empNumber = empNumber;
		this.environment = environment;
		this.empProcess = empProcess;
		this.cls = cls;
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

	public String getClsNum() {
		return clsNum;
	}

	public void setClsNum(String clsNum) {
		this.clsNum = clsNum;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public java.sql.Date getPostDate() {
		return postDate;
	}

	public void setPostDate(java.sql.Date postDate) {
		this.postDate = postDate;
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

	public ClassDTO getCls() {
		return cls;
	}

	public void setCls(ClassDTO cls) {
		this.cls = cls;
	}

	@Override
	public String toString() {
		return "EmpTeacherAndClassDTO [num=" + num + ", managerId=" + managerId + ", clsNum=" + clsNum + ", title="
				+ title + ", postDate=" + postDate + ", empYn=" + empYn + ", empCondition=" + empCondition
				+ ", empNumber=" + empNumber + ", environment=" + environment + ", empProcess=" + empProcess + ", cls="
				+ cls + "]";
	}

	
	
	
	
}
