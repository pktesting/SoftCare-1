package com.cts.service;

import java.util.List;

import com.cts.bean.InPatient;

public interface InPatientRecordsService
{
	public boolean addRecords(InPatient ip);
	public List<InPatient> displayRecords();
}
