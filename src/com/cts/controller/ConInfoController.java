package com.cts.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cts.bean.ConInfo;
import com.cts.service.ConInfoService;

@WebServlet("/ConInfoController")
public class ConInfoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	ConInfo cinfo;
 
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		cinfo = new ConInfo();
	}

	
	public void destroy() {
		// TODO Auto-generated method stub
	}

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		cinfo.setDoc_id(Integer.parseInt(request.getParameter("docId")));
		cinfo.setOpno(request.getParameter("opno"));
		cinfo.setName(request.getParameter("pname"));
		cinfo.setCon_date(Date.valueOf(request.getParameter("cDate")));
		
		ConInfoService cin_service = new ConInfoService();
		boolean b = cin_service.addConInfo(cinfo); 
		System.out.println(b);
		if(b)
			response.sendRedirect("addedSucc.jsp");
		else
			response.sendRedirect("consultation_info_enter.jsp");
	}

}
