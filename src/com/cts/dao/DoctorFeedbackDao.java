package com.cts.dao;

import com.cts.bean.DoctorFeedback;

public interface DoctorFeedbackDao {
	public boolean addRecords(DoctorFeedback df);
	public DoctorFeedback displayRecords(int did);
}
