package com.care.project.product;

public class likeProductDTO {
	private String userId;
	private int productNo; // 상품번호
	private int likeDate;
	
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getProductNo() {
		return productNo;
	}
	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}
	public int getLikeDate() {
		return likeDate;
	}
	public void setLikeDate(int likeDate) {
		this.likeDate = likeDate;
	}
	
}
