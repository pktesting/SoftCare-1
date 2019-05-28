package com.cts.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cts.bean.Login;
import com.cts.service.LoginRecords;
import com.cts.service.LoginRecordsServiceImpl;

@WebServlet("/loginRegisterController")
public class loginRegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	LoginRecords lr;

	public void init(ServletConfig config) throws ServletException {
		lr = new LoginRecordsServiceImpl();
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Login login = new Login();
		RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
		login.setName(request.getParameter("uname"));
		login.setPass(request.getParameter("psw"));
		
		System.out.println(login.getName());
		System.out.println(login.getPass());
		
		if (lr.checkLogin(login) == "admin")
		{
		
			HttpSession session = request.getSession();
			
			session.setAttribute("adminLogin", login);
			dispatcher.forward(request, response);
	        
			System.out.println("login Successfull");
		
		}
		else if (lr.checkLogin(login) == "doctor")
		{
		
			HttpSession session = request.getSession();
			
			session.setAttribute("doctorLogin", login);
			response.sendRedirect("index2.jsp");
	        
			System.out.println("login Successfull");
		
		}
		else if (lr.checkLogin(login) == "patient")
		{
		
			HttpSession session = request.getSession();
			
			session.setAttribute("patientLogin", login);
			response.sendRedirect("index1.jsp");
	        
			
			
			System.out.println("login Successfull");
		
		}
		else {
			System.out.println("error");
			response.sendRedirect("login.jsp");
		}
	}

	@Override
	public void destroy() {
		super.destroy();
	}
}
