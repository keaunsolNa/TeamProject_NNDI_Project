package com.nndi.model.commondto;

public class PostCategoryDTO {
//	CATE_NUM	NUMBER
//	CATE_KIND	VARCHAR2(30 BYTE)
	
	private int cateNum;
	private String cateKind;
	public PostCategoryDTO() {
		super();
	}
	public PostCategoryDTO(int cateNum, String cateKind) {
		super();
		this.cateNum = cateNum;
		this.cateKind = cateKind;
	}
	public int getCateNum() {
		return cateNum;
	}
	public void setCateNum(int cateNum) {
		this.cateNum = cateNum;
	}
	public String getCateKind() {
		return cateKind;
	}
	public void setCateKind(String cateKind) {
		this.cateKind = cateKind;
	}
	@Override
	public String toString() {
		return "PostCategoryDTO [cateNum=" + cateNum + ", cateKind=" + cateKind + "]";
	}
	

}
