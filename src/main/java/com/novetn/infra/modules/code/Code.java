package com.novetn.infra.modules.code;

import java.util.ArrayList;
import java.util.List;

public class Code {

	private String seq;
	private String codeGroup_seq;
	private Integer codegroupNum;
	private String name_ko;
	private String codeGroupname;
	private Integer groupNum;
	private Integer codeNum;
	private String anotherCode;
	private String cdname_ko;
	private String name_eng;
	private Integer order;
	private Integer useNY;
	private Integer delNY;
	private String regDate;
	private String modDate;
	
//	for cache
	public static List<Code> cachedCodeArrayList = new ArrayList<Code>();
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getCodeGroup_seq() {
		return codeGroup_seq;
	}
	public void setCodeGroup_seq(String codeGroup_seq) {
		this.codeGroup_seq = codeGroup_seq;
	}
	public Integer getCodegroupNum() {
		return codegroupNum;
	}
	public void setCodegroupNum(Integer codegroupNum) {
		this.codegroupNum = codegroupNum;
	}
	public String getName_ko() {
		return name_ko;
	}
	public void setName_ko(String name_ko) {
		this.name_ko = name_ko;
	}
	public String getCodeGroupname() {
		return codeGroupname;
	}
	public void setCodeGroupname(String codeGroupname) {
		this.codeGroupname = codeGroupname;
	}
	public Integer getGroupNum() {
		return groupNum;
	}
	public void setGroupNum(Integer groupNum) {
		this.groupNum = groupNum;
	}
	public Integer getCodeNum() {
		return codeNum;
	}
	public void setCodeNum(Integer codeNum) {
		this.codeNum = codeNum;
	}
	public String getAnotherCode() {
		return anotherCode;
	}
	public void setAnotherCode(String anotherCode) {
		this.anotherCode = anotherCode;
	}
	public String getCdname_ko() {
		return cdname_ko;
	}
	public void setCdname_ko(String cdname_ko) {
		this.cdname_ko = cdname_ko;
	}
	public String getName_eng() {
		return name_eng;
	}
	public void setName_eng(String name_eng) {
		this.name_eng = name_eng;
	}
	public Integer getOrder() {
		return order;
	}
	public void setOrder(Integer order) {
		this.order = order;
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
	public static List<Code> getCachedCodeArrayList() {
		return cachedCodeArrayList;
	}
	public static void setCachedCodeArrayList(List<Code> cachedCodeArrayList) {
		Code.cachedCodeArrayList = cachedCodeArrayList;
	}
	
}
