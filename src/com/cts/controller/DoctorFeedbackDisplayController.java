package com.cts.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cts.bean.DoctorFeedback;
import com.cts.service.DoctorFeedbackRecordsService;
import com.cts.service.DoctorFeedbackRecordsServiceImpl;

@WebServlet("/DoctorFeedbackDisplayController")
public class DoctorFeedbackDisplayController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DoctorFeedbackRecordsService dfrs;
    
    public DoctorFeedbackDisplayController() {
        super();
        // TODO Auto-generated constructor stub
    }

    public void init(ServletConfig config) throws ServletException {
		dfrs = new DoctorFeedbackRecordsServiceImpl();
	}

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String x=request.getParameter("did");
		int doc_id=Integer.parseInt(x);
		DoctorFeedback docfeed=dfrs.displayRecords(doc_id);
		request.setAttribute("doctorid", docfeed);
		RequestDispatcher rd=request.getRequestDispatcher("view_doctor_feedback.jsp");
		rd.forward(request, response);
	}	

}
