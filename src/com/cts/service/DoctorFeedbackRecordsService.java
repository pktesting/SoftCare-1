package com.cts.service;

import com.cts.bean.DoctorFeedback;

public interface DoctorFeedbackRecordsService {
	public boolean addRecords(DoctorFeedback df);
	public DoctorFeedback displayRecords(int did);
}
