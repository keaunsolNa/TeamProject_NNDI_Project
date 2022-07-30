package com.nndi.model.joindto.admin.classes;

import java.sql.Date;

import com.nndi.model.commondto.CenterManagementDTO;
import com.nndi.model.commondto.TeacherDTO;

public class ClassesAndTeacherAndCenterDTO {
	
//	강좌 고유번호	CLS_NUM	VARCHAR2(30 BYTE)
//	강사코드	TCR_NO	VARCHAR2(30 BYTE)
//	시설이름	CEN_NAME	VARCHAR2(30 BYTE)
//	강좌명	CLS_NAME	VARCHAR2(50 BYTE)
//	신청인원	CLS_APPLY_CNT	NUMBER
//	최대 수강인원	CLS_MAX_CNT	NUMBER
//	개강일	CLS_START_DAY	DATE
//	종강일	CLS_END_DAY	DATE
//	강좌 설명	CLS_EXPLAIN	VARCHAR2(4000 BYTE)
//	진행시간	CLS_TIME	NUMBER
//	수강료	CLS_COST	NUMBER
//	요일	CLS_DAY	VARCHAR2(20 BYTE)
//	개강 여부	CLS_START_YN	VARCHAR2(3 BYTE)
//	카테고리명	CLS_CATEGORY_NAME	VARCHAR2(15 BYTE)
//	추천연령	CLS_RECO_AGE	VARCHAR2(30 BYTE)
	
	private int clsNum;
	private String tcrNo;
	private String cenName;
	private String clsName;
	private int clsApplyCnt;
	private int clsMaxCnt;
	private java.util.Date clsStartDay;
	private java.util.Date clsEndDay;
	private String clsExplain;
	private int clsTime;
	private int clsCost;
	private String clsDay;
	private String clsStartYn;
	private String clsCategoryName;
	private String clsRecoAge;
	private String clsRunTime;
	private TeacherDTO teacher;
	private CenterManagementDTO center;
	public ClassesAndTeacherAndCenterDTO() {
		super();
	}
	public ClassesAndTeacherAndCenterDTO(int clsNum, String tcrNo, String cenName, String clsName, int clsApplyCnt,
			int clsMaxCnt, java.util.Date clsStartDay, java.util.Date clsEndDay, String clsExplain, int clsTime,
			int clsCost, String clsDay, String clsStartYn, String clsCategoryName, String clsRecoAge, String clsRunTime,
			TeacherDTO teacher, CenterManagementDTO center) {
		super();
		this.clsNum = clsNum;
		this.tcrNo = tcrNo;
		this.cenName = cenName;
		this.clsName = clsName;
		this.clsApplyCnt = clsApplyCnt;
		this.clsMaxCnt = clsMaxCnt;
		this.clsStartDay = clsStartDay;
		this.clsEndDay = clsEndDay;
		this.clsExplain = clsExplain;
		this.clsTime = clsTime;
		this.clsCost = clsCost;
		this.clsDay = clsDay;
		this.clsStartYn = clsStartYn;
		this.clsCategoryName = clsCategoryName;
		this.clsRecoAge = clsRecoAge;
		this.clsRunTime = clsRunTime;
		this.teacher = teacher;
		this.center = center;
	}
	public int getClsNum() {
		return clsNum;
	}
	public void setClsNum(int clsNum) {
		this.clsNum = clsNum;
	}
	public String getTcrNo() {
		return tcrNo;
	}
	public void setTcrNo(String tcrNo) {
		this.tcrNo = tcrNo;
	}
	public String getCenName() {
		return cenName;
	}
	public void setCenName(String cenName) {
		this.cenName = cenName;
	}
	public String getClsName() {
		return clsName;
	}
	public void setClsName(String clsName) {
		this.clsName = clsName;
	}
	public int getClsApplyCnt() {
		return clsApplyCnt;
	}
	public void setClsApplyCnt(int clsApplyCnt) {
		this.clsApplyCnt = clsApplyCnt;
	}
	public int getClsMaxCnt() {
		return clsMaxCnt;
	}
	public void setClsMaxCnt(int clsMaxCnt) {
		this.clsMaxCnt = clsMaxCnt;
	}
	public java.util.Date getClsStartDay() {
		return clsStartDay;
	}
	public void setClsStartDay(java.util.Date clsStartDay) {
		this.clsStartDay = clsStartDay;
	}
	public java.util.Date getClsEndDay() {
		return clsEndDay;
	}
	public void setClsEndDay(java.util.Date clsEndDay) {
		this.clsEndDay = clsEndDay;
	}
	public String getClsExplain() {
		return clsExplain;
	}
	public void setClsExplain(String clsExplain) {
		this.clsExplain = clsExplain;
	}
	public int getClsTime() {
		return clsTime;
	}
	public void setClsTime(int clsTime) {
		this.clsTime = clsTime;
	}
	public int getClsCost() {
		return clsCost;
	}
	public void setClsCost(int clsCost) {
		this.clsCost = clsCost;
	}
	public String getClsDay() {
		return clsDay;
	}
	public void setClsDay(String clsDay) {
		this.clsDay = clsDay;
	}
	public String getClsStartYn() {
		return clsStartYn;
	}
	public void setClsStartYn(String clsStartYn) {
		this.clsStartYn = clsStartYn;
	}
	public String getClsCategoryName() {
		return clsCategoryName;
	}
	public void setClsCategoryName(String clsCategoryName) {
		this.clsCategoryName = clsCategoryName;
	}
	public String getClsRecoAge() {
		return clsRecoAge;
	}
	public void setClsRecoAge(String clsRecoAge) {
		this.clsRecoAge = clsRecoAge;
	}
	public String getClsRunTime() {
		return clsRunTime;
	}
	public void setClsRunTime(String clsRunTime) {
		this.clsRunTime = clsRunTime;
	}
	public TeacherDTO getTeacher() {
		return teacher;
	}
	public void setTeacher(TeacherDTO teacher) {
		this.teacher = teacher;
	}
	public CenterManagementDTO getCenter() {
		return center;
	}
	public void setCenter(CenterManagementDTO center) {
		this.center = center;
	}
	@Override
	public String toString() {
		return "ClassesAndTeacherAndCenterDTO [clsNum=" + clsNum + ", tcrNo=" + tcrNo + ", cenName=" + cenName
				+ ", clsName=" + clsName + ", clsApplyCnt=" + clsApplyCnt + ", clsMaxCnt=" + clsMaxCnt
				+ ", clsStartDay=" + clsStartDay + ", clsEndDay=" + clsEndDay + ", clsExplain=" + clsExplain
				+ ", clsTime=" + clsTime + ", clsCost=" + clsCost + ", clsDay=" + clsDay + ", clsStartYn=" + clsStartYn
				+ ", clsCategoryName=" + clsCategoryName + ", clsRecoAge=" + clsRecoAge + ", clsRunTime=" + clsRunTime
				+ ", teacher=" + teacher + ", center=" + center + "]";
	}
	
	
	
	
}
