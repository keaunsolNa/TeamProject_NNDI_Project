package com.nndi.model.joindto.admin.board;

import com.nndi.model.commondto.PostCategoryDTO;

public class FAQAndCategoryDTO {
	private int num;
	private int cateNum;
	private String managerId;
	private String title;
	private String content;
	private int hits;
	private PostCategoryDTO category;
	public FAQAndCategoryDTO() {
		super();
	}
	public FAQAndCategoryDTO(int num, int cateNum, String managerId, String title, String content, int hits,
			PostCategoryDTO category) {
		super();
		this.num = num;
		this.cateNum = cateNum;
		this.managerId = managerId;
		this.title = title;
		this.content = content;
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
	public PostCategoryDTO getCategory() {
		return category;
	}
	public void setCategory(PostCategoryDTO category) {
		this.category = category;
	}
	@Override
	public String toString() {
		return "FAQAndCategoryDTO [num=" + num + ", cateNum=" + cateNum + ", managerId=" + managerId + ", title="
				+ title + ", content=" + content + ", hits=" + hits + ", category=" + category + "]";
	}
	
	
}
