package com.cts.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cts.bean.InPatient;
import com.cts.service.InPatientRecordsService;
import com.cts.service.InPatientRecordsServiceImpl;

@WebServlet("/InPatientController")
public class InPatientController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	InPatientRecordsService ips;
    
//    public InPatientController() {
//        super();
//        // TODO Auto-generated constructor stub
//    }

    public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
    	ips = new InPatientRecordsServiceImpl();
	}
    
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
		// TODO Auto-generated method stub
    	InPatient inpatient = new InPatient();
    	
    	//1  
    	inpatient.setPatient_name(request.getParameter("patient_name"));
    	
    	System.out.println(inpatient.getPatient_name());
    	
      //2 
    	inpatient.setAge(Integer.parseInt(request.getParameter("patient_age")));
    	
    	System.out.println(inpatient.getAge());
    	
        inpatient.setPatient_type(request.getParameter("patientType"));
    	
    	System.out.println(inpatient.getPatient_type());
    	
        //3  
    	inpatient.setGender(request.getParameter("gender"));
    	
    	System.out.println(inpatient.getGender());
    	
      //4 
    	inpatient.setOpno(request.getParameter("opno"));
    	
    	System.out.println(inpatient.getOpno());
    	
    	//5
        //  inpatient.setDate_of_admission(Date.request.getParameter("date"));
    	
    	 // System.out.println(inpatient.getOpno());
    	
    	
        //7
    	inpatient.setDiagnosis(request.getParameter("paragraph_text"));
         
         System.out.println(inpatient.getDiagnosis());
 
    	
        System.out.println(ips.addRecords(inpatient));
    	
	}

	public void destroy() {
		// TODO Auto-generated method stub
	}

}
