package com.care.project.heart;

public class HeartDTO {

	private String userId; 
	private int productNo;
	private String likeDate;
	
	public String getUserId() {
		return userId;
	}
	public int getProductNo() {
		return productNo;
	}
	public String getLikeDate() {
		return likeDate;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}
	public void setLikeDate(String likeDate) {
		this.likeDate = likeDate;
	}
}
