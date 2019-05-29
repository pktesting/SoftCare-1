package com.cts.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.text.SimpleDateFormat;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cts.bean.DailyEntry;
import com.cts.dao.DBUtil;
import com.cts.service.DailyEntryService;
import com.cts.service.DailyEntryServiceImpl;

@WebServlet("/DailyEntryController")
public class DailyEntryController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	DailyEntryService ds;

	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
		sdf.setLenient(false);

		ds = new DailyEntryServiceImpl();

	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
		sdf.setLenient(false);
		java.util.Date utilDate = new java.util.Date();
		java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
		DailyEntry de = new DailyEntry();
		try {
			de.setPatient_type(request.getParameter("Patient_type"));
			de.setDate(sqlDate);
			de.setOpno(request.getParameter("Opno"));
			de.setDrug1(request.getParameter("Drug1"));
			de.setNo_of_drug1(Integer.parseInt(request.getParameter("No_of_drug1")));
			de.setDrug2(request.getParameter("Drug2"));
			de.setNo_of_drug2(Integer.parseInt(request.getParameter("No_of_drug2")));

			System.out.println(de.getPatient_type());
			System.out.println(de.getOpno());
			System.out.println(de.getDate());
			System.out.println(de.getDrug1());
			System.out.println(de.getNo_of_drug1());
			System.out.println(de.getDrug2());
			System.out.println(de.getNo_of_drug2());
		} catch (Exception e) {
			System.out.println(e);
		}
		
		if (ds.addRecords(de)) {

			System.out.println("Records Inserted");
		} else {
			System.out.println("Error");
		}
		
		response.sendRedirect("search_daily_entry.jsp");
	}

	@Override
	public void destroy() {
		super.destroy();
	}
}
