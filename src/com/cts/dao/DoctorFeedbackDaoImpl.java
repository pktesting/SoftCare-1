package com.cts.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.cts.bean.DoctorFeedback;

public class DoctorFeedbackDaoImpl implements DoctorFeedbackDao {
	Connection con;
	PreparedStatement s;

	public DoctorFeedbackDaoImpl() {
		con = DBUtil.getConnection();
		s = null;
	}

	@Override
	public boolean addRecords(DoctorFeedback df) {
		int result = 0;

		try {
			s = con.prepareStatement("insert into tbl_doctors_feedback values(?,?,?)");
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
			s.setLong(2, df.getDid());
			s.setString(3, df.getFeedback());
			result = s.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		if (result == 0)
			return false;
		else
			return true;

	}

	@Override
	public DoctorFeedback displayRecords(int did)
	{
		DoctorFeedback d=new DoctorFeedback();
		try {
			s=con.prepareStatement("select * from tbl_doctors_feedback where doctor_id=?");
			s.setInt(1, did);
			ResultSet res=s.executeQuery();
			while(res.next())
			{
				int docid=res.getInt("doctor_id");
				String feedback=res.getString("feedback");
				
				d.setDid(docid);
				d.setFeedback(feedback);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return d;
	}
}
