package com.care.project.product;

public class ProductDTO {


	private int productNo; // 상품번호
	private String userId; // 사용자 아이디
	private int categoryId; // 카테고리 아이디	
	private String category; // 카테고리	
	private int productCount; // 상품수량	
	private String productName; // 상품명	
	private String fileName; // 첨부파일명
	private int price; // 상품가격
	private String priceOutput; // 상품가격 출력
	private String productSize; // 상품 사이즈
	private String productContent;// 상품내용	
	private String sellLocation; // 판매지점	
	private String productCondition; // 상품컨디션	
	private int delCharge; // 배송비	
	private String delChargeOutput; // 배송비 출력	
	private String insertDate; // 등록일자	
	private int viewCount; // 상품 조회수	
	private int sellState; // 판매여부
	
	public int getProductNo() {
		return productNo;
	}
	public String getUserId() {
		return userId;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public String getCategory() {
		return category;
	}
	public int getProductCount() {
		return productCount;
	}
	public String getProductName() {
		return productName;
	}
	public String getFileName() {
		return fileName;
	}
	public int getPrice() {
		return price;
	}
	public String getPriceOutput() {
		return priceOutput;
	}
	public String getProductSize() {
		return productSize;
	}
	public String getProductContent() {
		return productContent;
	}
	public String getSellLocation() {
		return sellLocation;
	}
	public String getProductCondition() {
		return productCondition;
	}
	public int getDelCharge() {
		return delCharge;
	}
	public String getDelChargeOutput() {
		return delChargeOutput;
	}
	public String getInsertDate() {
		return insertDate;
	}
	public int getViewCount() {
		return viewCount;
	}
	public int getSellState() {
		return sellState;
	}
	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public void setProductCount(int productCount) {
		this.productCount = productCount;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public void setPriceOutput(String priceOutput) {
		this.priceOutput = priceOutput;
	}
	public void setProductSize(String productSize) {
		this.productSize = productSize;
	}
	public void setProductContent(String productContent) {
		this.productContent = productContent;
	}
	public void setSellLocation(String sellLocation) {
		this.sellLocation = sellLocation;
	}
	public void setProductCondition(String productCondition) {
		this.productCondition = productCondition;
	}
	public void setDelCharge(int delCharge) {
		this.delCharge = delCharge;
	}
	public void setDelChargeOutput(String delChargeOutput) {
		this.delChargeOutput = delChargeOutput;
	}
	public void setInsertDate(String insertDate) {
		this.insertDate = insertDate;
	}
	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}
	public void setSellState(int sellState) {
		this.sellState = sellState;
	}


	
	
}