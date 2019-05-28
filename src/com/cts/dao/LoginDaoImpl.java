package com.cts.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
	public String login(Login lg) {
		ResultSet result = null;
		boolean status = false;
		
		try {
			s = con.prepareStatement("select * from tbl_login where uname=? and pass=?");
			
			s.setString(1, lg.getName());
			s.setString(2, lg.getPass());
			
			result = s.executeQuery();
			status = result.next();
			System.out.println("admin is " + status);
			
			if (status)
				return "admin";
			else
			{
				s= null;
				result= null;
				
				s = con.prepareStatement("select * from tbl_doctor_information where doctor_name=? and doctor_pass=?");
				
				s.setString(1, lg.getName());
				s.setString(2, lg.getPass());
				
				result = s.executeQuery();
				status = result.next();
				System.out.println("doctor is " + status);
				if (status)
					return "doctor";
				
			}
			
			
			s= null;
			result = null;
			
			s = con.prepareStatement("select * from tbl_patient_registration where uname=? and PASS=?");
			
			s.setString(1, lg.getName());
			s.setString(2, lg.getPass());
			
			result = s.executeQuery();
			status = result.next();
			System.out.println("patient is " + status);
			if (status)
				return "patient";
			
			result.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		
		}
		
		return null;
	}

}

