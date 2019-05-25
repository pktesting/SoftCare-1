package com.cts.dao;


import java.util.List;

import com.cts.bean.InPatient;

public interface InPatientRecordsDao
{
	public boolean addRecords(InPatient ip);
	public List<InPatient> displayRecords();
}
