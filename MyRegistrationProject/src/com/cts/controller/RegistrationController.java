package com.cts.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cts.bean.Registration;
import com.cts.service.CoustomerService;
/**
 * Servlet implementation class RegistrationController
 */
@WebServlet("/RegistrationController")
public class RegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String source=request.getParameter("source");
		CoustomerService service=new CoustomerService();
		if(source.equals("addCustomer")){
			try{
				String name=request.getParameter("name");
				int age=Integer.valueOf(request.getParameter("age"));
				String sex=request.getParameter("sex");
				String email=request.getParameter("email");
				int phone=Integer.valueOf(request.getParameter("number"));
				String address=request.getParameter("address");
				String dept=request.getParameter("dept");
				String patient=request.getParameter("patient");
				if(patient.equals(1)){
					String beneficiarieName=request.getParameter("beneficiarieName");
					String beneficiarieRelation=request.getParameter("beneficiarieRelation");
				}
				String password=request.getParameter("pass");
				String repassword=request.getParameter("retype");
				Object beneficiarieName=null;
				Object beneficiarieRelation = null;
				Registration registration=new Registration(name,age,sex,email,phone,address,dept,patient,beneficiarieName,beneficiarieRelation,password,repassword);
				if(service.addCustomer(registration)) request.setAttribute("errorMsg", "Customer Added Successfully");
				else request.setAttribute("errorMsg", "Invalid Input");
			}catch(Exception ex) {
				request.setAttribute("errorMsg", "Invalid Input");
			}
			request.getRequestDispatcher("register.jsp").forward(request, response);
		}
	}

}
