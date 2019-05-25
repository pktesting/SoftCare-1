package com.cts.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;

//import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cts.bean.Registration;
import com.cts.service.InPatientRecordsServiceImpl;
import com.cts.service.RegistrationRecordsService;
import com.cts.service.RegistrationRecordsServiceImpl;

@WebServlet("/RegistrationController")
public class RegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	RegistrationRecordsService rrs;
    /**
     * @see HttpServlet#HttpServlet()
     */
	public void init(ServletConfig config) throws ServletException {
		rrs = new RegistrationRecordsServiceImpl();
	}
	

	/**
	 * @throws IOException 
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		Registration registration=new Registration();
		
		registration.setOpno(request.getParameter("opno"));
		
		registration.setName(request.getParameter("name"));
		
		registration.setAge(Integer.valueOf(request.getParameter("age")));
		
		registration.setSex(request.getParameter("sex"));
		
		registration.setPhone(request.getParameter("number"));
		
		registration.setAddress(request.getParameter("address"));
		
		registration.setDept(request.getParameter("dept"));
		
		registration.setPatient(request.getParameter("patient"));
		
		registration.setPass(request.getParameter("pass"));
		
		
		
		if(rrs.addRecords(registration)){
			System.out.println("Registration Done!");
//			RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
			response.sendRedirect("index.jsp");
		}else{
			System.out.println("Error");
		}
		
	}
	
	public void destroy(){
		
	}
	
	

}
