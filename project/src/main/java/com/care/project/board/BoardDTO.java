package com.care.project.board;

import java.sql.Timestamp;

/*
CREATE TABLE inquiry_board(
	num int not null,
	writer varchar2(50) not null,
	email varchar2(50) not null,
	subject varchar2(100) not null,
	pass varchar2(100) not null,
	readcount int default 0 not null,
	ref int default 0 not null,
	step int default 0 not null,
	depth int default 0 not null,
	regdate timestamp default sysdate not null,
	ip varchar2(20) not null,
	content varchar2(4000) not null,
	CONSTRAINT board_pk PRIMARY KEY(num)
);

CREATE SEQUENCE board_seq START  WITH 1 INCREMENT BY 1 NOMAXVALUE NOCACHE NOCYCLE;
commit;
 */
public class BoardDTO {
	private int num;
	private String writer;
	private String email;
	private String subject;
	private String pass;
	private int readCount;
	private int ref;
	private int step;
	private int depth;
	private Timestamp regDate;
	private String ip;
	private String content;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public int getReadCount() {
		return readCount;
	}
	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}
	public int getRef() {
		return ref;
	}
	public void setRef(int ref) {
		this.ref = ref;
	}
	public int getStep() {
		return step;
	}
	public void setStep(int step) {
		this.step = step;
	}
	public int getDepth() {
		return depth;
	}
	public void setDepth(int depth) {
		this.depth = depth;
	}
	public Timestamp getRegDate() {
		return regDate;
	}
	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
}