package com.cts.controller;

import java.io.IOException;
import java.sql.Date;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cts.bean.InPatient;
import com.cts.service.InPatientRecordsService;
import com.cts.service.InPatientRecordsServiceImpl;

@WebServlet("/InPatientController")
public class InPatientController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	InPatientRecordsService ips;

	// public InPatientController() {
	// super();
	// // TODO Auto-generated constructor stub
	// }

	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		ips = new InPatientRecordsServiceImpl();
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		   InPatient inpatient = new InPatient();
		   
		   //---------Parsing various attributes in inpatient class------------//

		// 1
		inpatient.setPatient_name(request.getParameter("patient_name"));

		System.out.println(inpatient.getPatient_name());

		// 2
		inpatient.setAge(Integer.parseInt(request.getParameter("patient_age")));

		System.out.println(inpatient.getAge());

		inpatient.setPatient_type(request.getParameter("patientType"));

		System.out.println(inpatient.getPatient_type());

		// 3
		inpatient.setGender(request.getParameter("gender"));

		System.out.println(inpatient.getGender());

		// 4
		inpatient.setOpno(request.getParameter("opno"));

		System.out.println(inpatient.getOpno());

		// 5
		inpatient.setDate_of_admission(Date.valueOf(request.getParameter("date_of_admission")));

		System.out.println(inpatient.getDate_of_admission());

		// 6
		inpatient.setDate_of_discharge(Date.valueOf(request.getParameter("date_of_discharge")));

		System.out.println(inpatient.getDate_of_discharge());

		// 7
		inpatient.setDiagnosis(request.getParameter("paragraph_text"));

		System.out.println(inpatient.getDiagnosis());

		// -------------------Printing records-------------------------------//

		System.out.println(ips.addRecords(inpatient));
		

		HttpSession session = request.getSession(false);
		if(session != null)
			session.invalidate();

	}

	public void destroy() {
		// TODO Auto-generated method stub
		
	}

}
