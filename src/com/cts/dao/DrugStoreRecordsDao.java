package com.cts.dao;

import java.sql.SQLException;
import java.util.List;

import com.cts.bean.DrugStore;

public interface DrugStoreRecordsDao {
	public boolean addRecords(DrugStore ds);
	public List<DrugStore> displayDrug(String drugname) throws SQLException ;
	
}
