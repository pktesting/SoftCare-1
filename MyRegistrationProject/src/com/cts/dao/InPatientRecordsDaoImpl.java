package com.cts.dao;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.cts.bean.InPatient;
import java.sql.Connection;

public class InPatientRecordsDaoImpl implements InPatientRecordsDao
{

	Connection con;
	PreparedStatement s;
	
	public InPatientRecordsDaoImpl()
	{
		con = DBUtil.getConnection();
		s = null;
	}

	@Override
	public boolean addRecords(InPatient ip)
	{
		int result = 0;
		
		try {
			
			s = con.prepareStatement("insert into TBL_STUDENT_IN_PATIENT values(?,?,?,?,?,?,?)");
			s.setString(1, ip.getOpno());
			s.setString(2, ip.getPatient_name());
			s.setInt(3, ip.getAge());
			s.setString(4, ip.getGender());
			
			s.setDate(5, ip.getDate_of_admission());
			s.setDate(6, ip.getDate_of_discharge());
			
			s.setString(7, ip.getDiagnosis());
			
			result = s.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(result == 0)
			return false;
		else
			return true;
	}
	
}
