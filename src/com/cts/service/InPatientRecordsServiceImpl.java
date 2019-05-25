package com.cts.service;

import java.util.List;

import com.cts.bean.InPatient;
import com.cts.dao.InPatientRecordsDao;
import com.cts.dao.InPatientRecordsDaoImpl;

public class InPatientRecordsServiceImpl implements InPatientRecordsService
{


	@Override
	public boolean addRecords(InPatient ip)
	{
		InPatientRecordsDao ipdao = new InPatientRecordsDaoImpl();
		
		if(ipdao.addRecords(ip))
			return true;
		else	
			return false;
	}

	@Override
	public List<InPatient> displayRecords()
	{
		InPatientRecordsDao ipdao = new InPatientRecordsDaoImpl();
		List<InPatient> iplist = ipdao.displayRecords();
		System.out.println("Inside Service:  ");
		for(InPatient i : iplist)
		{
			System.out.println(i);
		}
		
		return iplist;
	}

	
}
