package com.cts.dao;
import com.cts.bean.Registration;

public class RegistrationDao {
	public boolean addCustomer(Registration registration){
		System.out.println(registration.getName()+""+registration.getSex());
		return true;
	}
}
