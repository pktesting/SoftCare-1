package com.cts.service;

import com.cts.bean.DailyEntry;
import com.cts.dao.DailyEntryDAO;
import com.cts.dao.DailyEntryDAOImpl;

public class DailyEntryServiceImpl implements DailyEntryService {

	DailyEntryDAO dao_object;
	
	
	
	public DailyEntryServiceImpl() {
		super();
		
		dao_object = new DailyEntryDAOImpl();
		// TODO Auto-generated constructor stub
	}



	@Override
	public boolean addRecords(DailyEntry de) {
		// TODO Auto-generated method stub
		
		System.out.println("inside service:  " + de.getOpno());
		
		if(dao_object.addRecords(de))
			return true;
		else
			return false;
	}



	@Override
	public DailyEntry displayRecord(String opno) {
		DailyEntry d=dao_object.displayDailyEntry(opno);
		return d;
		
	}
}
