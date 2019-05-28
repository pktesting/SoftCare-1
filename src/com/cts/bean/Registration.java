package com.cts.bean;

public class Registration {
	private String opno;
	private String name;
	private int age;
	private String sex;
	private String email;
	private int phone;
	private String address;
	private String dept;
	private String patient;
	private String pass;
	private String retype;
	
	public Registration() {
		super();
	}

	public Registration(String opno, String name, int age, String sex, String email, int phone, String address, String dept,
			String patient, String pass, String retype) {
		super();
		this.opno = opno;
		this.name = name;
		this.age = age;
		this.sex = sex;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.dept = dept;
		this.patient = patient;
		this.pass = pass;
		this.retype = retype;
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

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}

	public String getPatient() {
		return patient;
	}

	public void setPatient(String patient) {
		this.patient = patient;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getRetype() {
		return retype;
	}

	public void setRetype(String retype) {
		this.retype = retype;
	}
	
	
	
	
	
	
	
	
}
