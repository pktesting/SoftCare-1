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

/**
 * Servlet implementation class Logout
 */
@WebServlet("/Logout")
public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		
		if(session.getAttribute("adminLogin") != null)
		{
		session.removeAttribute("adminLogin");
		session.invalidate();
		}
		
		else if(session.getAttribute("patientLogin") != null)
		{
		session.removeAttribute("patientLogin");
		session.invalidate();
		}
	
		else
		{
		session.removeAttribute("doctorLogin");
		session.invalidate();
		}
		
		response.sendRedirect("login.jsp");
		
		
		
	}

}
