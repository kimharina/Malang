package com.care.project.member;
/*
create table member(
	userId VARCHAR2(20), 
	userName VARCHAR2(20), 
	pw VARCHAR2(50), 
	birth VARCHAR2(20), 
	email VARCHAR2(30), 
	mobile VARCHAR2(11),
	address VARCHAR2(40), 
	shopName VARCHAR2(30), 
	joinDate VARCHAR2(20));
COMMIT;
*/
public class MemberDTO {
	private String userId;
	private String userName;
	private String pw;
	private String birth;
	private String email;
	private String mobile;
	private String address;
	private String joinDate;
	private String confirm;
	
	public String getConfirm() {
		return confirm;
	}
	public void setConfirm(String confirm) {
		this.confirm = confirm;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}
	
	
}





