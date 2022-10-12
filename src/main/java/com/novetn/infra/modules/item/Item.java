package com.novetn.infra.modules.item;

import com.novetn.infra.common.base.Base;

public class Item extends Base {

	private String seq;
	private String title;
	private Integer discount;
	private Integer price;
	private String cdname_ko;
	private Integer shippingfee;
	private Integer deliverymethod;
	private Integer released;
	private Integer maximum;
	private Integer possible;
	private Integer exchangefee;
	private Integer refundterm;
	private Integer stock;
	private String regDate;
	private String modDate;
	private Integer useNY;
	private Integer delNY;
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Integer getDiscount() {
		return discount;
	}
	public void setDiscount(Integer discount) {
		this.discount = discount;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public String getCdname_ko() {
		return cdname_ko;
	}
	public void setCdname_ko(String cdname_ko) {
		this.cdname_ko = cdname_ko;
	}
	public Integer getShippingfee() {
		return shippingfee;
	}
	public void setShippingfee(Integer shippingfee) {
		this.shippingfee = shippingfee;
	}
	public Integer getDeliverymethod() {
		return deliverymethod;
	}
	public void setDeliverymethod(Integer deliverymethod) {
		this.deliverymethod = deliverymethod;
	}
	public Integer getReleased() {
		return released;
	}
	public void setReleased(Integer released) {
		this.released = released;
	}
	public Integer getMaximum() {
		return maximum;
	}
	public void setMaximum(Integer maximum) {
		this.maximum = maximum;
	}
	public Integer getPossible() {
		return possible;
	}
	public void setPossible(Integer possible) {
		this.possible = possible;
	}
	public Integer getExchangefee() {
		return exchangefee;
	}
	public void setExchangefee(Integer exchangefee) {
		this.exchangefee = exchangefee;
	}
	public Integer getRefundterm() {
		return refundterm;
	}
	public void setRefundterm(Integer refundterm) {
		this.refundterm = refundterm;
	}
	public Integer getStock() {
		return stock;
	}
	public void setStock(Integer stock) {
		this.stock = stock;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public String getModDate() {
		return modDate;
	}
	public void setModDate(String modDate) {
		this.modDate = modDate;
	}
	public Integer getUseNY() {
		return useNY;
	}
	public void setUseNY(Integer useNY) {
		this.useNY = useNY;
	}
	public Integer getDelNY() {
		return delNY;
	}
	public void setDelNY(Integer delNY) {
		this.delNY = delNY;
	}
	
}
