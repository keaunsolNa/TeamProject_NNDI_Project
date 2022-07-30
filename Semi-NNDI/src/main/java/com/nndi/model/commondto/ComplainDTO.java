package com.nndi.model.commondto;

import java.sql.Date;

public class ComplainDTO {
//	NUM	NUMBER
//	CATE_NUM	NUMBER
//	MEM_ID	VARCHAR2(30 BYTE)
//	MANAGER_ID	VARCHAR2(30 BYTE)
//	POST_DATE	DATE
//	TITLE	VARCHAR2(50 BYTE)
//	CONTENT	CLOB
//	ANSWER_YN	VARCHAR2(30 BYTE)
//	ANSWER_CONTENT	CLOB
//	DISPLAY_YN	VARCHAR2(30 BYTE)
//	HITS	NUMBER
	
	private int num;
	private int cateNum;
	private String memId;
	private String managerId;
	private java.sql.Date postDate;
	private String title;
	private String content;
	private String answerYn;
	private String answerContent;
	private String displayYn;
	private int hits;
	public ComplainDTO(int num, int cateNum, String memId, String managerId, Date postDate, String title,
			String content, String answerYn, String answerContent, String displayYn, int hits) {
		super();
		this.num = num;
		this.cateNum = cateNum;
		this.memId = memId;
		this.managerId = managerId;
		this.postDate = postDate;
		this.title = title;
		this.content = content;
		this.answerYn = answerYn;
		this.answerContent = answerContent;
		this.displayYn = displayYn;
		this.hits = hits;
	}
	public ComplainDTO() {
		super();
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getCateNum() {
		return cateNum;
	}
	public void setCateNum(int cateNum) {
		this.cateNum = cateNum;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getManagerId() {
		return managerId;
	}
	public void setManagerId(String managerId) {
		this.managerId = managerId;
	}
	public java.sql.Date getPostDate() {
		return postDate;
	}
	public void setPostDate(java.sql.Date postDate) {
		this.postDate = postDate;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getAnswerYn() {
		return answerYn;
	}
	public void setAnswerYn(String answerYn) {
		this.answerYn = answerYn;
	}
	public String getAnswerContent() {
		return answerContent;
	}
	public void setAnswerContent(String answerContent) {
		this.answerContent = answerContent;
	}
	public String getDisplayYn() {
		return displayYn;
	}
	public void setDisplayYn(String displayYn) {
		this.displayYn = displayYn;
	}
	public int getHits() {
		return hits;
	}
	public void setHits(int hits) {
		this.hits = hits;
	}
	@Override
	public String toString() {
		return "ComplainDTO [num=" + num + ", cateNum=" + cateNum + ", memId=" + memId + ", managerId=" + managerId
				+ ", postDate=" + postDate + ", title=" + title + ", content=" + content + ", answerYn=" + answerYn
				+ ", answerContent=" + answerContent + ", displayYn=" + displayYn + ", hits=" + hits + "]";
	}
	
	
}
