package com.cts.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.cts.bean.ConInfo;

public class ConInfDao {
	
	Connection con = DBUtil.getConnection();
	PreparedStatement s = null;
	
	public boolean addConInfo(ConInfo cinf)
	{
		int res;
		try {
			s = con.prepareStatement("insert into tbl_consultation_information values(?,?,?,?,?)");
			int max = 10000;
			int min = 1;
			int rand = 0;
			int range = max - min + 1;

			for (int i = 0; i < 10000; i++) {
				rand = (int) (Math.random() * range) + min;
			}
			int id = 0;
			id = rand;
			s.setLong(1, id);
			s.setInt(2, cinf.getDoc_id());
			s.setString(3, cinf.getOpno());
			s.setString(4, cinf.getName());
			s.setDate(5, cinf.getCon_date());
			
			res = s.executeUpdate();
			
			if(res>0)
			{
				return true;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		return false;
	}
	
	public ConInfo displayCon(String opno)
	{
		ConInfo cinf = new ConInfo();
		
		ResultSet res = null;
		
		try {
			s=con.prepareStatement("select * from tbl_consultation_information where opno=?");
			s.setString(1, opno);
			
			res = s.executeQuery();
			res.next();
			cinf.setCon_id(res.getInt("consultation_id"));
			cinf.setDoc_id(res.getInt("doctor_id"));
			cinf.setOpno(res.getString("opno"));
			cinf.setName(res.getString("patient_name"));
			cinf.setCon_date(res.getDate("consultation_date"));
			
			System.out.println(cinf);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return cinf;
	}

}
