package com.cts.service;

import com.cts.bean.DoctorInfo;
import com.cts.dao.DoctorInfoDAO;
import com.cts.dao.DoctorInfoDAOImpl;

public class DoctorInfoImpl implements DoctorInfoService {

	DoctorInfoDAO dao_inf = new DoctorInfoDAOImpl();
	
	@Override
	public boolean addDoctorInfo(DoctorInfo d_inf) {
		// TODO Auto-generated method stub
		if(dao_inf.addDoctorInfo(d_inf))
			return true;
		else
			return false;
	}

}
