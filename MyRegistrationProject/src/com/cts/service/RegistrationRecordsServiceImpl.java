package com.cts.service;

import com.cts.dao.InPatientRecordsDaoImpl;
import com.cts.dao.RegistrationRecordsDaoImpl;

public class RegistrationRecordsServiceImpl implements RegistrationRecordsService{
	
	public RegistrationRecordsServiceImpl(){
		RegistrationRecordsDaoImpl rdao = new RegistrationRecordsDaoImpl();
		
	}

}
