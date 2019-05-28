package com.cts.controller;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cts.bean.DoctorInfo;
import com.cts.service.DoctorInfoImpl;
import com.cts.service.DoctorInfoService;


@WebServlet("/DoctorRegistrationController")
public class DoctorRegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DoctorInfo docInfo;
	DoctorInfoService dis;
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		docInfo = new DoctorInfo();
		dis = new DoctorInfoImpl();
	}


	public void destroy() {
		// TODO Auto-generated method stub
	}


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		docInfo.setDoctorID(Integer.parseInt(request.getParameter("doctorID")));
		docInfo.setDoctorName(request.getParameter("doctorName"));
		docInfo.setDoctorSpec(request.getParameter("doctorSpecs"));
		docInfo.setDoctorPhoneNumber(request.getParameter("phoneNumber"));
		docInfo.setDoctorEmail(request.getParameter("doctorEmail"));
		docInfo.setDoctorPass(request.getParameter("doctorPass"));
		
		dis.addDoctorInfo(docInfo);
		
		response.sendRedirect("reg_succ.jsp");
	}

}
