package com.cts.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.cts.bean.DoctorInfo;

public class DoctorInfoDAOImpl implements DoctorInfoDAO{

	Connection con = null;
	PreparedStatement s = null;
	public DoctorInfoDAOImpl() {
		super();
		con = DBUtil.getConnection();
		// TODO Auto-generated constructor stub
	}

	@Override
	public boolean addDoctorInfo(DoctorInfo dinfo) {
		// TODO Auto-generated method stub
		int result = 0;
		try {
			s = con.prepareStatement("insert into tbl_doctor_information  values(?,?,?,?,?,?)");
			
			s.setInt(1, dinfo.getDoctorID());
			s.setString(2, dinfo.getDoctorName());
			s.setString(3, dinfo.getDoctorSpec());
			s.setString(4, dinfo.getDoctorPhoneNumber());
			s.setString(5, dinfo.getDoctorEmail());
			s.setString(6, dinfo.getDoctorPass());
			
			
			result = s.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(result>=0)
			return true;
		else
			return false;
		
	}

}
