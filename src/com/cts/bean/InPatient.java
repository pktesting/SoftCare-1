package com.cts.bean;

import java.sql.Date;

public class InPatient
{
	private String patient_name;
	private int age;
	private String gender;
	private String patient_type;
	private String opno;
	private Date date_of_admission;
	private Date date_of_discharge;
	private String diagnosis;
	public String getPatient_name() {
		return patient_name;
	}
	public void setPatient_name(String patient_name) {
		this.patient_name = patient_name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
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
	public Date getDate_of_admission() {
		return date_of_admission;
	}
	public void setDate_of_admission(Date date_of_admission) {
		this.date_of_admission = date_of_admission;
	}
	public Date getDate_of_discharge() {
		return date_of_discharge;
	}
	public void setDate_of_discharge(Date date_of_discharge) {
		this.date_of_discharge = date_of_discharge;
	}
	public String getDiagnosis() {
		return diagnosis;
	}
	public void setDiagnosis(String diagnosis) {
		this.diagnosis = diagnosis;
	}
	
	
	public InPatient(String patient_name, int age, String gender, String patient_type, String opno,
			Date date_of_admission, Date date_of_discharge, String diagnosis) {
		super();
		this.patient_name = patient_name;
		this.age = age;
		this.gender = gender;
		this.patient_type = patient_type;
		this.opno = opno;
		this.date_of_admission = date_of_admission;
		this.date_of_discharge = date_of_discharge;
		this.diagnosis = diagnosis;
	}
	
	public InPatient() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public String toString() {
		return "InPatient [patient_name=" + patient_name + ", age=" + age + ", gender=" + gender + ", patient_type="
				+ patient_type + ", opno=" + opno + ", date_of_admission=" + date_of_admission + ", date_of_discharge="
				+ date_of_discharge + ", diagnosis=" + diagnosis + "]";
	}	
}
