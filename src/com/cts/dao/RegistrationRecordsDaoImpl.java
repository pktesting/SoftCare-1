package com.cts.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.cts.bean.Registration;

public class RegistrationRecordsDaoImpl implements RegistrationRecordsDao {

	Connection con;
	PreparedStatement s;

	public RegistrationRecordsDaoImpl() {
		con = DBUtil.getConnection();
		s = null;
	}

	@Override
	public boolean addRecords(Registration r) {
		int result = 0;
		
		try {
			s = con.prepareStatement("insert into tbl_patient_registration values(?,?,?,?,?,?,?,?)");

			int max = 10000;
			int min = 1;
			int rand=0;
			int range = max - min + 1;

			for (int i = 0; i < 10000; i++) {
				rand = (int) (Math.random() * range) + min;
			}
			int id=0;
			id=rand;
			s.setLong(1, id);
			s.setString(2,r.getOpno());
			s.setString(3, r.getName());
			s.setLong(4, r.getAge());
			s.setInt(5, r.getPhone());
			s.setString(6, r.getSex());
			s.setString(7, r.getAddress());
			s.setString(8, r.getPass());

			result = s.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		if (result == 0)
			return false;
		else
			return true;
	}
}
