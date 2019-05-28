package com.cts.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cts.bean.InPatient;
import java.sql.Connection;

public class InPatientRecordsDaoImpl implements InPatientRecordsDao
{

	@Override
	public boolean addRecords(InPatient ip)
	{
		Connection con = DBUtil.getConnection();
		PreparedStatement s = null;
		
		int result = 0;
		if(ip.getPatient_type().equals("student"))
		{
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
			}
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else
		{
			try {
				
				s = con.prepareStatement("insert into TBL_BENEFICIARY_IN_PATIENT values(?,?,?,?,?,?,?)");
				s.setString(1, ip.getOpno());
				s.setString(2, ip.getPatient_name());
				s.setInt(3, ip.getAge());
				s.setString(4, ip.getGender());
				
				s.setDate(5, ip.getDate_of_admission());
				s.setDate(6, ip.getDate_of_discharge());
				
				s.setString(7, ip.getDiagnosis());
			
				result = s.executeUpdate();
			}
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(result == 0)
			return false;
		else
			return true;
	}

	@Override
	public List<InPatient> displayRecords()
	{
		Connection con = DBUtil.getConnection();
		PreparedStatement s = null;
		ResultSet res = null;
		if(res == null)
		{
			System.out.println("RES IS EMPTY");
		}
		List<InPatient> patient_list = new ArrayList<>();
		
		
		try {
			
			s = con.prepareStatement("select * from TBL_STUDENT_IN_PATIENT");
			System.out.println("execute update = " +s.executeUpdate());
			if(s.execute())
			{
				res = s.getResultSet();
			}
			while(res.next())
			{		
				InPatient ip = new InPatient();
				
				ip.setOpno(res.getString("OPNO"));
				ip.setPatient_name(res.getString("STUDENT_NAME"));
				ip.setAge(res.getInt("AGE"));
				ip.setGender(res.getString("GENDER"));
				ip.setDate_of_admission(res.getDate("DATE_OF_ADMISSION"));
				ip.setDate_of_discharge(res.getDate("DATE_OF_DISCHARGE"));
				ip.setDiagnosis(res.getString("DIAGNOSIS"));
				ip.setPatient_type("Student");
				
				System.out.println("ip = " + ip);
				
				patient_list.add(ip);
				
				ip = null;
			}	
			
			s = null;
			res = null;
			
			s = con.prepareStatement("select * from tbl_beneficiary_in_patient");
			System.out.println("execute update = " +s.executeUpdate());
			if(s.execute())
			{
				res = s.getResultSet();
			}
			while(res.next())
			{		
				InPatient ip = new InPatient();
				
				ip.setOpno(res.getString("OPNO"));
				ip.setPatient_name(res.getString("BENEFICIARY_NAME"));
				ip.setAge(res.getInt("AGE"));
				ip.setGender(res.getString("GENDER"));
				ip.setDate_of_admission(res.getDate("DATE_OF_ADMISSION"));
				ip.setDate_of_discharge(res.getDate("DATE_OF_DISCHARGE"));
				ip.setDiagnosis(res.getString("DIAGNOSIS"));
				ip.setPatient_type("Benficiary");
				
				System.out.println("ip = " + ip);			
				patient_list.add(ip);
				
				ip = null;
			}
			
			s.close();
		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println("Inside DAO:");
		for(InPatient i : patient_list)
		{
			System.out.println(i);
		}
		return patient_list;
	}
		
}
