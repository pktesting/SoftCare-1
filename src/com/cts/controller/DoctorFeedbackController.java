package com.cts.controller;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cts.bean.DoctorFeedback;
import com.cts.service.DoctorFeedbackRecordsService;
import com.cts.service.DoctorFeedbackRecordsServiceImpl;
import com.cts.service.RegistrationRecordsServiceImpl;

/**
 * Servlet implementation class DoctorFeedbackController
 */
@WebServlet("/DoctorFeedbackController")
public class DoctorFeedbackController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DoctorFeedbackRecordsService dfrs;

	public void init(ServletConfig config) throws ServletException {
		dfrs = new DoctorFeedbackRecordsServiceImpl();
	}

	public DoctorFeedbackController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		DoctorFeedback df = new DoctorFeedback();

		df.setDid(Integer.valueOf(request.getParameter("did")));
		df.setFeedback(request.getParameter("feedback"));
		
		if(dfrs.addRecords(df)){
			System.out.println("Inserted");
		}else{
			System.out.println("error");
		}
		response.sendRedirect("thankyou.jsp");
	}
}
