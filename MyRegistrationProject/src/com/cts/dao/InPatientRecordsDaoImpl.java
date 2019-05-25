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

	Connection con;
	PreparedStatement s;
	List<InPatient> patient_list;
	
	public InPatientRecordsDaoImpl()
	{
		con = DBUtil.getConnection();
		s = null;
		patient_list = new ArrayList<>();
	}

	@Override
	public boolean addRecords(InPatient ip)
	{
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
		 
		
		InPatient ip = new InPatient();
		try {
			s = con.prepareStatement("select * from TBL_STUDENT_IN_PATIENT");
			
			ResultSet rs = s.executeQuery();
			while(rs.next())
			{
				ip.setOpno(rs.getString("opno"));
				ip.setPatient_name(rs.getString("NAME"));
				ip.setAge(rs.getInt("AGE"));
				ip.setGender(rs.getString("GENDER"));
				ip.setDate_of_admission(rs.getDate("DATE_OF_ADMISSION"));
				ip.setDate_of_discharge(rs.getDate("DATE_OF_DISCHARGE"));
				ip.setDiagnosis(rs.getString("DIAGNOSIS"));
				ip.setPatient_type("Student");
				
				System.out.println(ip);
				
				patient_list.add(ip);
			}
		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return patient_list;
	}
		
}
