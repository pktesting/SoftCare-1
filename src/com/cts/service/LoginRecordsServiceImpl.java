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
	public boolean checkLogin(Login l) {
		if (ldao.login(l)) {
			return true;
		} else {
			return false;
		}
	}

}
