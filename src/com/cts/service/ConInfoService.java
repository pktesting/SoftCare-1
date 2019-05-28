package com.cts.service;

import com.cts.bean.ConInfo;
import com.cts.dao.ConInfDao;

public class ConInfoService {

	ConInfDao cinf_dao = new ConInfDao();
	public boolean addConInfo(ConInfo cinf)
	{
		if(cinf_dao.addConInfo(cinf))
			return true;
		else
			return false;
	}
	
	public ConInfo displayCon(String opno)
	{
		ConInfo c = cinf_dao.displayCon(opno); 
		
		System.out.println("Inside Service: \n" + c);
		return c;
		
	}
}
