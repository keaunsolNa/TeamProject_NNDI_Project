package com.nndi.model.commondto;

public class FAQDTO {
//	NUM	NUMBER
//	MANAGER_ID	VARCHAR2(30 BYTE)
//	CATE_NUM	NUMBER
//	TITLE	VARCHAR2(50 BYTE)
//	CONTENT	CLOB
//	HITS	NUMBER
	
	private int num;
	private int cateNum;
	private String managerId;
	private String title;
	private String content;
	private int hits;
	public FAQDTO() {
		super();
	}
	public FAQDTO(int num, int cateNum, String managerId, String title, String content, int hits) {
		super();
		this.num = num;
		this.cateNum = cateNum;
		this.managerId = managerId;
		this.title = title;
		this.content = content;
		this.hits = hits;
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
	public String getManagerId() {
		return managerId;
	}
	public void setManagerId(String managerId) {
		this.managerId = managerId;
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
	public int getHits() {
		return hits;
	}
	public void setHits(int hits) {
		this.hits = hits;
	}
	@Override
	public String toString() {
		return "FAQDTO [num=" + num + ", cateNum=" + cateNum + ", managerId=" + managerId + ", title=" + title
				+ ", content=" + content + ", hits=" + hits + "]";
	}
	
	
}
