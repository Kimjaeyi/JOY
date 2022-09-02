package com.novetn.infra.modules.member;

import java.util.Date;

public class Member {

	private Integer seq;
	private Integer membership;
	private String name;
	private String dob;
	private String email;
	private String phone;
	private Date regDate;
	private Integer delNY;
	
	public Integer getSeq() {
		return seq;
	}
	public void setSeq(Integer seq) {
		this.seq = seq;
	}
	public Integer getMembership() {
		return membership;
	}
	public void setMembership(Integer membership) {
		this.membership = membership;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public Integer getDelNY() {
		return delNY;
	}
	public void setDelNY(Integer delNY) {
		this.delNY = delNY;
	}
	
	
}
