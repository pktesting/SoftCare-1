package com.cts.service;

import com.cts.bean.DailyEntry;

public interface DailyEntryService 
{
	public boolean addRecords(DailyEntry de);
	public DailyEntry displayRecord(String opno);
}
