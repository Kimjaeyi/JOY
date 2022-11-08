package com.novetn.infra.modules.order;

import com.novetn.infra.common.base.Base;

public class Order extends Base {

	private String seq;
	private String recipient;
	private String reciPhone;
	private Integer reciZipcode;
	private String reciAddr1;
	private String reciAddr2;
	private String reciAddr3;
	private String spmessage;
	private String title;
	private Integer price;
	private String site;
	private Integer count;
	private String cpnname;
	private Integer cpndiscount;
	private String cpnvalid;
	private Integer finalPrice;
	private String state;
	private String orderdate;
	private Integer delNY;
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getRecipient() {
		return recipient;
	}
	public void setRecipient(String recipient) {
		this.recipient = recipient;
	}
	public String getReciPhone() {
		return reciPhone;
	}
	public void setReciPhone(String reciPhone) {
		this.reciPhone = reciPhone;
	}
	public Integer getReciZipcode() {
		return reciZipcode;
	}
	public void setReciZipcode(Integer reciZipcode) {
		this.reciZipcode = reciZipcode;
	}
	public String getReciAddr1() {
		return reciAddr1;
	}
	public void setReciAddr1(String reciAddr1) {
		this.reciAddr1 = reciAddr1;
	}
	public String getReciAddr2() {
		return reciAddr2;
	}
	public void setReciAddr2(String reciAddr2) {
		this.reciAddr2 = reciAddr2;
	}
	public String getReciAddr3() {
		return reciAddr3;
	}
	public void setReciAddr3(String reciAddr3) {
		this.reciAddr3 = reciAddr3;
	}
	public String getSpmessage() {
		return spmessage;
	}
	public void setSpmessage(String spmessage) {
		this.spmessage = spmessage;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public String getSite() {
		return site;
	}
	public void setSite(String site) {
		this.site = site;
	}
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	public String getCpnname() {
		return cpnname;
	}
	public void setCpnname(String cpnname) {
		this.cpnname = cpnname;
	}
	public Integer getCpndiscount() {
		return cpndiscount;
	}
	public void setCpndiscount(Integer cpndiscount) {
		this.cpndiscount = cpndiscount;
	}
	public String getCpnvalid() {
		return cpnvalid;
	}
	public void setCpnvalid(String cpnvalid) {
		this.cpnvalid = cpnvalid;
	}
	public Integer getFinalPrice() {
		return finalPrice;
	}
	public void setFinalPrice(Integer finalPrice) {
		this.finalPrice = finalPrice;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getOrderdate() {
		return orderdate;
	}
	public void setOrderdate(String orderdate) {
		this.orderdate = orderdate;
	}
	public Integer getDelNY() {
		return delNY;
	}
	public void setDelNY(Integer delNY) {
		this.delNY = delNY;
	}
	
}
