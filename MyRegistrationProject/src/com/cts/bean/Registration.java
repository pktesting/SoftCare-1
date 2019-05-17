package com.cts.bean;

public class Registration {
	private String name;
	private int age;
	private String sex;
	private String email;
	private int phone;
	private String address;
	private String dept;
	private String patient;
	private String beneficiarieName;
	private String beneficiarieRelation;
	private String pass;
	private String retype;
	
	public Registration(String name, int age, String sex, String email, int phone, String address, String dept,
			String patient, String beneficiarieName, String beneficiarieRelation, String pass, String retype) {
		super();
		this.name = name;
		this.age = age;
		this.sex = sex;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.dept = dept;
		this.patient = patient;
		this.beneficiarieName = beneficiarieName;
		this.beneficiarieRelation = beneficiarieRelation;
		this.pass = pass;
		this.retype = retype;
	}

	public Registration(String name2, int age2, String sex2, String email2, int phone2, String address2, String dept2,
			String patient2, Object beneficiarieName2, Object beneficiarieRelation2, String password,
			String repassword) {
		// TODO Auto-generated constructor stub
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

	public String getBeneficiarieName() {
		return beneficiarieName;
	}

	public void setBeneficiarieName(String beneficiarieName) {
		this.beneficiarieName = beneficiarieName;
	}

	public String getBeneficiarieRelation() {
		return beneficiarieRelation;
	}

	public void setBeneficiarieRelation(String beneficiarieRelation) {
		this.beneficiarieRelation = beneficiarieRelation;
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

//	public boolean addCustomer(Registration registration) {
//		// TODO Auto-generated method stub
//		return false;
//	}

	
	
	
	
	
}
