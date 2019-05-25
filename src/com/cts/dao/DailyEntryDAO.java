package com.cts.dao;
import com.cts.bean.DailyEntry;

public interface DailyEntryDAO
{
	public boolean addRecords(DailyEntry de);
	
	public  DailyEntry displayDailyEntry(String opno);
		
	
}

