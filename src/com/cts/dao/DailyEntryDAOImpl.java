package com.cts.dao;

import java.sql.*;
import java.sql.Date;

import com.cts.bean.DailyEntry;

public class DailyEntryDAOImpl implements DailyEntryDAO {

	Connection con = null;
	PreparedStatement s = null;

	public DailyEntryDAOImpl() {
		con = DBUtil.getConnection();
	}

	@Override
	public boolean addRecords(DailyEntry de) {
//		System.out.println("inside DAO:  " + de.getOpno());
		int result = 0;
		try {

			s = con.prepareStatement("insert into tbl_daily_entries values(?,?,?,?,?,?,?)");

			s.setString(1, de.getOpno());
			s.setString(2, de.getPatient_type());
			s.setDate(3, de.getDate());
			s.setString(4, de.getDrug1());
			s.setInt(5, de.getNo_of_drug1());
			s.setString(6, de.getDrug2());
			s.setInt(7, de.getNo_of_drug2());

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
	public DailyEntry displayDailyEntry(String opno) {
		DailyEntry d = new DailyEntry();
		try {
			s = con.prepareStatement("select * from tbl_daily_entries where opno= ?");
			s.setString(1, opno);
			ResultSet res = s.executeQuery();
			while (res.next()) {
				String opnnum = res.getString("opno");
				String ptype = res.getString("patient_type");
				Date edate = res.getDate("EntryDate");
				String drg1 = res.getString("drug1");
				int nofdrg1 = res.getInt("no_of_drug1");
				String drg2 = res.getString("drug2");
				int nofdrg2 = res.getInt("no_of_drug2");

				d.setOpno(opnnum);
				d.setPatient_type(ptype);
				d.setDate(edate);
				d.setDrug1(drg1);
				d.setNo_of_drug1(nofdrg1);
				d.setDrug2(drg2);
				d.setNo_of_drug2(nofdrg2);

				/*
				 * System.out.println(opno); System.out.println(ptype);
				 * System.out.println(edate); System.out.println(drg1);
				 * System.out.println(nofdrg1); System.out.println(drg2);
				 * System.out.println(nofdrg2);
				 */

			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return d;
	}

}
