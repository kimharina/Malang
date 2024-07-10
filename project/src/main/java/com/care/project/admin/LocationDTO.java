package com.care.project.admin;

public class LocationDTO {
	private int shopId;
	private String shopName;
	private String address;
	private String shopTel;
	
	public int getShopId() {
		return shopId;
	}
	public String getShopName() {
		return shopName;
	}
	public String getAddress() {
		return address;
	}
	public String getShopTel() {
		return shopTel;
	}
	public void setShopId(int shopId) {
		this.shopId = shopId;
	}
	public void setShopName(String shopName) {
		this.shopName = shopName;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public void setShopTel(String shopTel) {
		this.shopTel = shopTel;
	}
	
}
