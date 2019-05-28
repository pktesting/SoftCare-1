package com.cts.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.text.SimpleDateFormat;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
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

@WebServlet("/DailyEntryDisplayController")
public class DailyEntryDisplayController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	DailyEntryService ds;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		SimpleDateFormat sdf=new SimpleDateFormat("dd-MM-yyyy");
		sdf.setLenient(false);
		
		ds = new DailyEntryServiceImpl();
		
	}
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String opno=request.getParameter("Opno");
		DailyEntry de=ds.displayRecord(opno);
		/*PrintWriter pw=response.getWriter();
		pw.println(de.getOpno());
		pw.println(de.getPatient_type());
		pw.println(de.getDate());
		pw.println(de.getDrug1());
		pw.println(de.getNo_of_drug1());
		pw.println(de.getDrug2());
		pw.println(de.getNo_of_drug2());*/
		request.setAttribute("daentry", de);
		
		RequestDispatcher rd =request.getRequestDispatcher("view_daily_entry.jsp");
		
		rd.forward(request, response);
		
		
	}
	
	@Override
	public void destroy() 
	{
		super.destroy();
	}

	
}
