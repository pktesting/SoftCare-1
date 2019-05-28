package com.cts.service;

import com.cts.bean.DoctorFeedback;
import com.cts.dao.DoctorFeedbackDao;
import com.cts.dao.DoctorFeedbackDaoImpl;

public class DoctorFeedbackRecordsServiceImpl implements DoctorFeedbackRecordsService{
	DoctorFeedbackDao dfd;
	
	
	public DoctorFeedbackRecordsServiceImpl(){
		dfd=new DoctorFeedbackDaoImpl();
	}
	@Override
	public boolean addRecords(DoctorFeedback df) {
		if(dfd.addRecords(df)){
			return true;
		}else
		return false;
	}
	@Override
	public DoctorFeedback displayRecords(int did) 
	{
		DoctorFeedback df=dfd.displayRecords(did);
		return df;
			
		
	}

}
