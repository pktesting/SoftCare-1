package com.cts.service;

import com.cts.bean.Registration;
import com.cts.dao.RegistrationRecordsDao;
import com.cts.dao.RegistrationRecordsDaoImpl;

public class RegistrationRecordsServiceImpl implements RegistrationRecordsService {

	RegistrationRecordsDao rdao;

	public RegistrationRecordsServiceImpl() {
		rdao = new RegistrationRecordsDaoImpl();
	}

	@Override
	public boolean addRecords(Registration r) {

		if (rdao.addRecords(r))
			return true;
		else
			return false;

	}

}
