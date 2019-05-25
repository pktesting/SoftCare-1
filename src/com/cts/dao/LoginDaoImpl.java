package com.cts.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.cts.bean.Login;

public class LoginDaoImpl implements LoginDao {

	Connection con;
	PreparedStatement s;

	public LoginDaoImpl() {
		con = DBUtil.getConnection();
		s = null;
	}

	@Override
	public Boolean login(Login lg) {
		int result = 0;
		try {
			s = con.prepareStatement("select * from TBL_REGISTRATION12 where uname=? and pass=?");
			s.setString(1, lg.getName());
			s.setString(2, lg.getPass());
			result = s.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		if (result == 0)
			return false;
		else
			return true;
	}

}
