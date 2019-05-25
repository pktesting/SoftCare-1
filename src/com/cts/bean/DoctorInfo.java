package com.cts.bean;

public class DoctorInfo
{
	private Integer doctorID;
	private String doctorName;
	private String doctorSpec;
	private String doctorPhoneNumber;
	private String doctorEmail;
	private String doctorPass;
	
	public DoctorInfo(Integer doctorID, String doctorName, String doctorSpec, String doctorPhoneNumber,
			String doctorEmail, String doctorPass) {
		super();
		this.doctorID = doctorID;
		this.doctorName = doctorName;
		this.doctorSpec = doctorSpec;
		this.doctorPhoneNumber = doctorPhoneNumber;
		this.doctorEmail = doctorEmail;
		this.doctorPass = doctorPass;
	}
	public String getDoctorPass() {
		return doctorPass;
	}
	public void setDoctorPass(String doctorPass) {
		this.doctorPass = doctorPass;
	}
	public DoctorInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getDoctorID() {
		return doctorID;
	}
	public void setDoctorID(Integer doctorID) {
		this.doctorID = doctorID;
	}
	public String getDoctorName() {
		return doctorName;
	}
	public void setDoctorName(String doctorName) {
		this.doctorName = doctorName;
	}
	public String getDoctorSpec() {
		return doctorSpec;
	}
	public void setDoctorSpec(String doctorSpec) {
		this.doctorSpec = doctorSpec;
	}
	public String getDoctorPhoneNumber() {
		return doctorPhoneNumber;
	}
	public void setDoctorPhoneNumber(String doctorPhoneNumber) {
		this.doctorPhoneNumber = doctorPhoneNumber;
	}
	public String getDoctorEmail() {
		return doctorEmail;
	}
	public void setDoctorEmail(String doctorEmail) {
		this.doctorEmail = doctorEmail;
	}
	@Override
	public String toString() {
		return "DoctorInfo [doctorID=" + doctorID + ", doctorName=" + doctorName + ", doctorSpec=" + doctorSpec
				+ ", doctorPhoneNumber=" + doctorPhoneNumber + ", doctorEmail=" + doctorEmail + "]";
	}
}
