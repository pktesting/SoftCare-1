package com.cts.bean;

import java.sql.Date;

public class ConInfo
{
	private int con_id;
	private int doc_id;
	private String opno;
	private String name;
	private Date con_date;
	public int getCon_id() {
		return con_id;
	}
	public void setCon_id(int con_id) {
		this.con_id = con_id;
	}
	public int getDoc_id() {
		return doc_id;
	}
	public void setDoc_id(int doc_id) {
		this.doc_id = doc_id;
	}
	public String getOpno() {
		return opno;
	}
	public void setOpno(String opno) {
		this.opno = opno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getCon_date() {
		return con_date;
	}
	public void setCon_date(Date con_date) {
		this.con_date = con_date;
	}
	@Override
	public String toString() {
		return "ConInfo [con_id=" + con_id + ", doc_id=" + doc_id + ", opno=" + opno + ", name=" + name + ", con_date="
				+ con_date + "]";
	}
	public ConInfo(int con_id, int doc_id, String opno, String name, Date con_date) {
		super();
		this.con_id = con_id;
		this.doc_id = doc_id;
		this.opno = opno;
		this.name = name;
		this.con_date = con_date;
	}
	public ConInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
