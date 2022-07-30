package com.nndi.model.joindto.admin.board;

import java.sql.Date;

import com.nndi.model.commondto.PostCategoryDTO;

public class QnaAndCategoryDTO {
	
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
	private PostCategoryDTO category;
	public QnaAndCategoryDTO() {
		super();
	}
	public QnaAndCategoryDTO(int num, int cateNum, String memId, String managerId, Date postDate, String title,
			String content, String answerYn, String answerContent, String displayYn, int hits,
			PostCategoryDTO category) {
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
		this.category = category;
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
	public PostCategoryDTO getCategory() {
		return category;
	}
	public void setCategory(PostCategoryDTO category) {
		this.category = category;
	}
	@Override
	public String toString() {
		return "QnaAndCategoryDTO [num=" + num + ", cateNum=" + cateNum + ", memId=" + memId + ", managerId="
				+ managerId + ", postDate=" + postDate + ", title=" + title + ", content=" + content + ", answerYn="
				+ answerYn + ", answerContent=" + answerContent + ", displayYn=" + displayYn + ", hits=" + hits
				+ ", category=" + category + "]";
	}
	
	

}
