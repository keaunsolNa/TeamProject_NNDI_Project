package com.nndi.model.joindto.client.board;

import java.sql.Date;

import com.nndi.model.commondto.PostCategoryDTO;

public class AdmireAndCategoryDTO {
	
	private int num;
	private int cate;
	private PostCategoryDTO category;
	private String memId;
	private java.sql.Date postDate;
	private String title;
	private String content;
	private String answerYn;
	private String answerContent;
	private String displayYn;
	private int hits;
	public AdmireAndCategoryDTO() {
		super();
	}
	public AdmireAndCategoryDTO(int num, int cate, PostCategoryDTO category, String memId, Date postDate, String title,
			String content, String answerYn, String answerContent, String displayYn, int hits) {
		super();
		this.num = num;
		this.cate = cate;
		this.category = category;
		this.memId = memId;
		this.postDate = postDate;
		this.title = title;
		this.content = content;
		this.answerYn = answerYn;
		this.answerContent = answerContent;
		this.displayYn = displayYn;
		this.hits = hits;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getCate() {
		return cate;
	}
	public void setCate(int cate) {
		this.cate = cate;
	}
	public PostCategoryDTO getCategory() {
		return category;
	}
	public void setCategory(PostCategoryDTO category) {
		this.category = category;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
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
		return "AdmireAndCategoryDTO [num=" + num + ", cate=" + cate + ", category=" + category + ", memId=" + memId
				+ ", postDate=" + postDate + ", title=" + title + ", content=" + content + ", answerYn=" + answerYn
				+ ", answerContent=" + answerContent + ", displayYn=" + displayYn + ", hits=" + hits + "]";
	}
	

}
