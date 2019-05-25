package com.cts.service;

import java.util.List;

import com.cts.bean.InPatient;
import com.cts.dao.InPatientRecordsDao;
import com.cts.dao.InPatientRecordsDaoImpl;

public class InPatientRecordsServiceImpl implements InPatientRecordsService
{

	InPatientRecordsDao ipdao;

	public InPatientRecordsServiceImpl()
	{
		ipdao = new InPatientRecordsDaoImpl();
	}

	@Override
	public boolean addRecords(InPatient ip)
	{
		if(ipdao.addRecords(ip))
			return true;
		else	
			return false;
	}

	@Override
	public List<InPatient> displayRecords()
	{
		return ipdao.displayRecords();
	}

	
}
