package com.nndi.model.commondto;

import java.sql.Date;

public class NoticeDTO {
//	NUM	NUMBER
//	MANAGER_ID	VARCHAR2(30 BYTE)
//	CATE_NUM	NUMBER
//	POST_DATE	DATE
//	TITLE	VARCHAR2(50 BYTE)
//	CONTENT	CLOB
//	HITS	NUMBER
//	UPLOAD_FILE_KEY	VARCHAR2(100 BYTE)
	
	private int num;
	private String managerId;
	private int cateNum;
	private java.sql.Date postDate;
	private String title;
	private String content;
	private int hits;
	private String uploadFileKey;
	public NoticeDTO() {
		super();
	}
	public NoticeDTO(int num, String managerId, int cateNum, Date postDate, String title, String content, int hits,
			String uploadFileKey) {
		super();
		this.num = num;
		this.managerId = managerId;
		this.cateNum = cateNum;
		this.postDate = postDate;
		this.title = title;
		this.content = content;
		this.hits = hits;
		this.uploadFileKey = uploadFileKey;
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
	public int getCateNum() {
		return cateNum;
	}
	public void setCateNum(int cateNum) {
		this.cateNum = cateNum;
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
	public int getHits() {
		return hits;
	}
	public void setHits(int hits) {
		this.hits = hits;
	}
	public String getUploadFileKey() {
		return uploadFileKey;
	}
	public void setUploadFileKey(String uploadFileKey) {
		this.uploadFileKey = uploadFileKey;
	}
	@Override
	public String toString() {
		return "NoticeDTO [num=" + num + ", managerId=" + managerId + ", cateNum=" + cateNum + ", postDate=" + postDate
				+ ", title=" + title + ", content=" + content + ", hits=" + hits + ", uploadFileKey=" + uploadFileKey
				+ "]";
	}
	
	
}
