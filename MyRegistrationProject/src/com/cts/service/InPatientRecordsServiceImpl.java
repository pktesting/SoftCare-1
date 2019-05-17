package com.cts.service;

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

}
