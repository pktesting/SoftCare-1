package com.cts.service;

import com.cts.bean.Login;
import com.cts.dao.LoginDao;
import com.cts.dao.LoginDaoImpl;

public class LoginRecordsServiceImpl implements LoginRecords {
	LoginDao ldao;

	public LoginRecordsServiceImpl() {
		ldao = new LoginDaoImpl();
	}

	@Override
	public String checkLogin(Login l) {
		return ldao.login(l);
	}

}
