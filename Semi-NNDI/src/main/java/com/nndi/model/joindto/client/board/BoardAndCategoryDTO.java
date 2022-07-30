package com.nndi.model.joindto.client.board;

import java.sql.Date;

import com.nndi.model.commondto.PostCategoryDTO;

public class BoardAndCategoryDTO {
	
	private int num;
	private int cate;
	private PostCategoryDTO category; // 카테고리를 한글로 표현하고 싶어서 join해용
	private String memberId;
	private String managerId;
	private java.sql.Date date;
	private String title;
	private String content;
	private String answer;
	private String answerContent;
	private String display;
	private int hits;
	@Override
	public String toString() {
		return "BoardAndCategoryDTO [num=" + num + ", cate=" + cate + ", category=" + category + ", memberId="
				+ memberId + ", managerId=" + managerId + ", date=" + date + ", title=" + title + ", content=" + content
				+ ", answer=" + answer + ", answerContent=" + answerContent + ", display=" + display + ", hits=" + hits
				+ "]";
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
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getManagerId() {
		return managerId;
	}
	public void setManagerId(String managerId) {
		this.managerId = managerId;
	}
	public java.sql.Date getDate() {
		return date;
	}
	public void setDate(java.sql.Date date) {
		this.date = date;
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
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public String getAnswerContent() {
		return answerContent;
	}
	public void setAnswerContent(String answerContent) {
		this.answerContent = answerContent;
	}
	public String getDisplay() {
		return display;
	}
	public void setDisplay(String display) {
		this.display = display;
	}
	public int getHits() {
		return hits;
	}
	public void setHits(int hits) {
		this.hits = hits;
	}
	public BoardAndCategoryDTO(int num, int cate, PostCategoryDTO category, String memberId, String managerId,
			Date date, String title, String content, String answer, String answerContent, String display, int hits) {
		this.num = num;
		this.cate = cate;
		this.category = category;
		this.memberId = memberId;
		this.managerId = managerId;
		this.date = date;
		this.title = title;
		this.content = content;
		this.answer = answer;
		this.answerContent = answerContent;
		this.display = display;
		this.hits = hits;
	}
	public BoardAndCategoryDTO() {
	}
	
}
