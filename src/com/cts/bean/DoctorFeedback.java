package com.cts.bean;

public class DoctorFeedback {
	private Integer did;
	private String feedback;
	
	
	
	public Integer getDid() {
		return did;
	}
	public void setDid(Integer did) {
		this.did = did;
	}
	public String getFeedback() {
		return feedback;
	}
	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}
	public DoctorFeedback() {
		super();
	}
	public DoctorFeedback(Integer did, String feedback) {
		super();
		this.did = did;
		this.feedback = feedback;
	}
	
	
	
	
}
