package com.cts.bean;

import java.sql.Date;

public class DailyEntry 
{
  private String patient_type;
  private String opno;
  private Date date;
 
  public String getPatient_type() {
	return patient_type;
}
public void setPatient_type(String patient_type) {
	this.patient_type = patient_type;
}
public String getOpno() {
	return opno;
}
public void setOpno(String opno) {
	this.opno = opno;
}
public Date getDate() {
	return date;
}
public void setDate(Date date) {
	this.date = date;
}
public String getDrug1() {
	return drug1;
}
public void setDrug1(String drug1) {
	this.drug1 = drug1;
}
public int getNo_of_drug1() {
	return no_of_drug1;
}
public void setNo_of_drug1(int no_of_drug1) {
	this.no_of_drug1 = no_of_drug1;
}
public String getDrug2() {
	return drug2;
}
public void setDrug2(String drug2) {
	this.drug2 = drug2;
}
public int getNo_of_drug2() {
	return no_of_drug2;
}
public void setNo_of_drug2(int no_of_drug2) {
	this.no_of_drug2 = no_of_drug2;
}
public DailyEntry() {
	super();
}
	private String drug1;
	private int no_of_drug1;
	private String drug2;
	private int no_of_drug2;
	
public DailyEntry(String patient_type, String opno, Date date, String drug1, int no_of_drug1, String drug2,
		int no_of_drug2) {
	super();
	this.patient_type = patient_type;
	this.opno = opno;
	this.date = date;
	this.drug1 = drug1;
	this.no_of_drug1 = no_of_drug1;
	this.drug2 = drug2;
	this.no_of_drug2 = no_of_drug2;
}
}
